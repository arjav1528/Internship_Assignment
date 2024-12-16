// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Calender extends StatefulWidget {
  bool day;
  Calender({super.key, required this.day});
  // const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState(day: day);
}

class _CalenderState extends State<Calender> {
  bool day;
  _CalenderState({required this.day});
  final List<String> monthNames = [
    'January', 'February', 'March', 'April',
    'May', 'June', 'July', 'August',
    'September', 'October', 'November', 'December'
  ];
  final DateTime now = DateTime.now();

  int totalDays = 0;
  @override
  void initState() {
    super.initState();
    totalDays  = DateTime(now.year,(now.month) + 1,0).day;
  }
  @override
  Widget build(BuildContext context) {

    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Container(

      height: 150 * heightMultiplier,
      width: 180 * widthMultiplier,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: day ? Colors.white : Color(0xFF111029),
          border: GradientBoxBorder(
              gradient: LinearGradient(
                  colors: day ? [Colors.transparent, Colors.transparent] : [Color(0xFF695CFF),Color(0xFFA7A0F8)]
              )
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10*widthMultiplier,top: 10*heightMultiplier),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFFF0F0F0),
                  child: Icon(
                    Icons.access_time_rounded,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 10*widthMultiplier,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(monthNames[now.month - 1],
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: day ? Colors.black : Colors.white
                      ),),
                    Text('Days Remaining',
                      style: GoogleFonts.poppins(
                          fontSize: 10,
                          color: Color(0xFFA0AEC0)
                      ),)
                  ],
                )
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0, -10*widthMultiplier),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10*widthMultiplier),
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: totalDays,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 12,
                    crossAxisSpacing: 4,
                    mainAxisSpacing: 7
                ),
                itemBuilder: (context,index){
                  bool isHighlited = true;
                  if(now.day <= DateTime(now.year,now.month,(index+1)).day){
                    isHighlited = false;
                  }
                  return Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: isHighlited ? [Color(0xFF695CFF),Color(0xFFA7A0F8)] : [Color(0xFFD9D9D9),Color(0xFFD9D9D9)]
                        ),
                        shape: BoxShape.circle
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),

    );
  }
}
