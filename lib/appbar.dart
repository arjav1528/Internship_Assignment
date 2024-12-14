import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.height) / 393;
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
            Text('Good Morning',
              style: GoogleFonts.poppins(
                  color: Color(0xFFA0AEC0)
              ),
            ),
            Text('Shubham!',
              style: GoogleFonts.poppins(
                  color: Color(0xFF000000)
              ),
            ),


          ],
        ),
        Spacer(),
        Container(

          decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                spreadRadius: 2,
                blurRadius: 20.4,
                color: Color(0xFF000000).withAlpha(40)
              )
            ]
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 22*heightMultiplier,
            child: Icon(
              CupertinoIcons.bell
            ),
          ),
        ),
        SizedBox(width: 12*heightMultiplier,)


      ],
    );
  }
}
