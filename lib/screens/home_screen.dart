// ignore_for_file: no_logic_in_create_state, must_be_immutable

import 'package:assignment1/widgets/appbar.dart';
import 'package:assignment1/widgets/calender.dart';
import 'package:assignment1/widgets/navbar.dart';
import 'package:assignment1/widgets/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../event_carousel.dart';


class HomeScreen extends StatefulWidget {
  bool day;
  HomeScreen({super.key, required this.day});

  @override
  State<HomeScreen> createState() => _HomeScreenState(day: day);
}

class _HomeScreenState extends State<HomeScreen> {
  bool day;
  _HomeScreenState({required this.day});
  Map<String, bool> _map = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _map = {
      'DPR': true,
      'Cash OutFlow': false,
      'Cash InFlow': false,
      'Material Issues': false,
      'M Reconciliation': false,
      'Material Receipt': false,
      'Go to Dashboard': false
    };
  }

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Scaffold(
      backgroundColor: day ? Colors.white : Color(0xFF111029),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 45 * heightMultiplier,

            ),
            CustomAppBar(day: day,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 189 * widthMultiplier,
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: _map.length,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 14 * heightMultiplier,
                      );
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(left: 12 * widthMultiplier),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _map.forEach((key, value) {
                                _map[key] = false;
                              });
                              _map[_map.keys.elementAt(index)] = true;
                            });
                          },
                          child: Container(
                            height: 37 * heightMultiplier,
                            width: 177 * widthMultiplier,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: (_map[_map.keys.elementAt(index)] ??
                                            false)
                                        ? [Color(0xFF695CFF), Color(0xFFA7A0F8)]
                                        : [Colors.transparent, Colors.transparent]),
                                // color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                // border: Border.all(
                                //     width: 1.25,
                                //     color: Color(0xFF0075FF))
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(
                                    colors: day ? [
                                      Color(0xFF695CFF).withAlpha(200),
                                      Color(0xFFA7A0F8).withAlpha(200)
                                      ] :
                                    [
                                      Color(0xFF8692A6),
                                      Color(0xFF343840)
                                    ],
                                  ),
                                  width: 1
                                )
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 12 * widthMultiplier,
                                ),
                                Text(
                                  _map.keys.elementAt(index),
                                  style: GoogleFonts.poppins(
                                    fontSize: 10,
                                    color: day ? Colors.black : Colors.white
                                  ),
                                ),
                                SizedBox(width: 2*widthMultiplier,),
                                Icon(
                                  Icons.arrow_forward,
                                  size: 15,
                                  color: day ? Colors.black : Colors.white,
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 15 * widthMultiplier,
                ),
                Column(

                  children: [
                    SizedBox(
                      height: 40 * heightMultiplier,
                    ),
                    ProgressBar(day: day,),
                    SizedBox(height: 10*heightMultiplier,),
                    Calender(day: day,),

                    // SizedBox(height: 20,),

                  ],
                )
              ],
            ),
            SizedBox(height: 15*heightMultiplier,),
            Container(
              alignment: Alignment.topCenter,
              height: 250*heightMultiplier,
              child: CarouselWidget(),
            )
          ],
        ),
      ),
      bottomNavigationBar: Navbar(day: day,),
    );
  }
}
