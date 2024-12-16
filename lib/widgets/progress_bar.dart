// ignore_for_file: must_be_immutable, no_logic_in_create_state

import 'package:assignment1/providers/day_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class ProgressBar extends ConsumerStatefulWidget {
  const ProgressBar({super.key});
  @override
  ConsumerState<ProgressBar> createState() => _ProgressBarState();
}

class _ProgressBarState extends ConsumerState<ProgressBar> {
  
  final List<String> monthNames = [
    'January', 'February', 'March', 'April',
    'May', 'June', 'July', 'August',
    'September', 'October', 'November', 'December'
  ];
  double percentage = 50;
  // String month = '';
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final day = ref.watch(dayNotifier);
    String month = monthNames[DateTime.now().month-1].substring(0,3);

    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Container(
      height: 199*heightMultiplier,
      width: 180*widthMultiplier,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: day ? Colors.white : Color(0xFF111029),
        border: GradientBoxBorder(
          gradient: LinearGradient(
            colors: day ? [Colors.transparent, Colors.transparent] : [Color(0xFF695CFF),Color(0xFFA7A0F8)]
          )
        ),
        boxShadow: [
          BoxShadow(
              spreadRadius: 1,
              blurRadius: 5,
              color: Color(0xFF000000).withAlpha(40)
          )
        ]
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15*widthMultiplier,top: 10*heightMultiplier),
            child: Text('Daily Progress',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w700,
              color: day ? Colors.black : Colors.white
              // fontSize:,

            ),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4*heightMultiplier,left: 15*widthMultiplier),
            child: Text('From all projects',
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Color(0xFFA0AEC0)

            ),),
          ),
          Spacer(),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Center(
                      child: CircularPercentIndicator(
                        linearGradient: LinearGradient(
                          colors: [Color(0xFF695CFF),Color(0xFFA7A0F8)],
                        ),
                        percent: percentage/100,
                        center: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 30*heightMultiplier,
                              width: 30*widthMultiplier,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xFF0075FF)

                              ),
                              child: Center(
                                  child: Text(DateTime.now().day.toString(),
                                  style: GoogleFonts.poppins(
                                    fontSize: 8,
                                    color: Colors.white
                                  ),),
                              ),

                            ),
                            Text(month,
                            style: GoogleFonts.poppins(
                              color: day ? Colors.black : Colors.white,
                              fontSize: 8
                            ),),
                            SizedBox(height: 25*heightMultiplier,)
                          ],
                        ),
                        radius: 45,
                        startAngle: 180,
                        reverse: false,
                        animation: true,
                        backgroundColor: Color(0xFFBEBEE7),
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                    ),
                    SizedBox(height: 20*heightMultiplier,),
                  ],
                ),
              ),
              Positioned(
                bottom: 5*heightMultiplier,
                left: 10*widthMultiplier,
                right: 10*widthMultiplier,
                child: Container(
                  height: 55*heightMultiplier,
                  width: 165*widthMultiplier,
                  decoration: BoxDecoration(
                    color: Color(0xFF695CFF),
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5*heightMultiplier),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Text('0%',
                            style: GoogleFonts.poppins(
                              fontSize: 8,
                              color: Color(0xFFE3E3E3)
                            ),),
                            Spacer(),
                            SizedBox(width: 15*widthMultiplier,),
                            Text('${percentage.toStringAsFixed(0)}%',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.w700
                              ),),
                            Spacer(),
                            Text('100%',
                              style: GoogleFonts.poppins(
                                  fontSize: 10,
                                  color: Color(0xFFE3E3E3)
                              ),),
                            SizedBox(width: 10,),
                          ],
                        ),
                      ),
                      Spacer(),

                      Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 7),
                            child: Text('Based On Reports',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 10
                            ),),
                          )
                      )
                    ],
                  ),
                ),
              )

            ],
          )
        ],
      ),

    );
  }
}
