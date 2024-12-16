// ignore_for_file: no_logic_in_create_state, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
class Navbar extends StatefulWidget {
  bool day;
  Navbar({super.key, required this.day});

  @override
  State<Navbar> createState() => _NavbarState(day: day);
}

class _NavbarState extends State<Navbar> {
  bool day;
  _NavbarState({required this.day});
  Map<String,bool> navBar = {
    'Home' : false,
    'Cash Flow' : false,
    'Analytics' : false,
    'Progress' : false,
    'Materials' : false
  };
  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Container(
      height: 100*heightMultiplier,
      width: 393*widthMultiplier,
      decoration: BoxDecoration(
        color: day ? Colors.white : Color(0xFF111029),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15)
        ),
        boxShadow: [
          BoxShadow(
              color: day ? Colors.black : Colors.white,
              blurRadius: day ? 4 : 23,
              spreadRadius: day ? 0 : -10
          )
        ],
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: navBar.entries.map((element){
          return ShaderMask(
            blendMode: BlendMode.srcIn,
            shaderCallback: (bounds){
              return LinearGradient(
                colors: element.value ? [Color(0xFF695CFF),Color(0xFFA7A0F8)] : [Color(0xFF484C52),Color(0xFF484C52)]
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height));
            },
            child: GestureDetector(
              onTap: (){
                setState(() {
                  for(var it in navBar.entries){
                    navBar[it.key] = false;
                  }
                  navBar[element.key] = true;
                });

              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/${element.key}-cropped.svg'),
                  Text(element.key,
                  style: GoogleFonts.poppins(
                    fontSize: 12
                  ),)
                ],
              ),
            ),
          );
        }).toList()
      ),
    );
  }
}

