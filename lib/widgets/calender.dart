import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calender extends StatefulWidget {
  const Calender({super.key});

  @override
  State<Calender> createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
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
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              spreadRadius: 1,
              blurRadius: 5,
              color: Color(0xFF000000).withAlpha(40)
          )
        ]
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10*widthMultiplier,top: 15*heightMultiplier),
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
            offset: Offset(0, -10),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
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