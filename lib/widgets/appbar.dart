// ignore_for_file: must_be_immutable

import 'package:assignment1/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  bool day;
  CustomAppBar({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12*widthMultiplier),
            child: Image(
              image: AssetImage('assets/dp.png'),
              fit: BoxFit.cover,

            ),
          ),
          SizedBox(width: 13*widthMultiplier,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 4*heightMultiplier,),
              Text('Good Morning',
                style: GoogleFonts.poppins(
                    color: Color(0xFFA0AEC0)
                ),
              ),
              Text('Shubham!',
                style: GoogleFonts.poppins(
                    color: day ? Color(0xFF000000) : Color(0xFFFFFFFF),
                  fontWeight: FontWeight.w500
                ),
              ),


            ],
          ),
          Spacer(),
          Container(

            decoration: BoxDecoration(
              color: day ? Colors.white : Color(0xFF111029),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  spreadRadius: 2,
                  blurRadius: 20.4,
                  color: Color(0xFF000000).withAlpha(40)
                )
              ]
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context,animation,secondartAnimation)=> HomeScreen(day: !day),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero
                  )

                );

              },
              child: CircleAvatar(
                backgroundColor: day ? Colors.white : Color(0xFF111029),
                radius: 22*heightMultiplier,
                child: Icon(
                  CupertinoIcons.bell,
                  color: day ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 12*widthMultiplier,),
          Container(

            decoration: BoxDecoration(
                color: day ? Colors.white : Color(0xFF111029),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 2,
                      blurRadius: 20.4,
                      color: Color(0xFF000000).withAlpha(40)
                  )
                ]
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        pageBuilder: (context,animation,secondartAnimation)=> HomeScreen(day: !day),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero
                    )

                );

              },
              child: CircleAvatar(
                backgroundColor: day ? Colors.white : Color(0xFF111029),
                radius: 22*heightMultiplier,
                child: Icon(
                  day ? CupertinoIcons.moon_stars : CupertinoIcons.sun_dust,
                  color: day ? Colors.black : Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(width: 20*widthMultiplier,)


        ],
    );
  }
}
