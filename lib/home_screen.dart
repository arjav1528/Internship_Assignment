import 'package:assignment1/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Map<String,bool> _map = {
    'DPR' : true,
    'Cash OutFlow' : false,
    'Cash InFlow' : false,
    'Material Issues' : false,
    'M Reconciliation' : false,
    'Material Receipt' : false,
    'Go to Dashboard' : false
  };


  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 65*heightMultiplier,),
          CustomAppBar(),
          SizedBox(height: 40*heightMultiplier,),
          Row(
            children: [
              SizedBox(
                width: 189*widthMultiplier,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: _map.length,
                  separatorBuilder: (context,index){
                    return SizedBox(height: 15*heightMultiplier,);
                  },

                  itemBuilder: (context,index){

                    return Container(
                      padding: EdgeInsets.only(left: 12*widthMultiplier),

                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            _map.forEach((key,value){
                              _map[key] = false;
                            });
                            _map[_map.keys.elementAt(index)] = true;

                          });
                        },
                        child: Container(
                          height: 34*heightMultiplier,
                          width: 177*widthMultiplier,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: (_map[_map.keys.elementAt(index)] ?? false) ? [Color(0xFF695CFF),Color(0xFFA7A0F8)] : [Colors.white,Colors.white]
                            ),
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              width: 1.25,
                              color: Color(0xFF0075FF)
                            )
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 12*widthMultiplier,),
                              Text(_map.keys.elementAt(index),
                              style: GoogleFonts.poppins(
                                fontSize: 10,
                              ),),
                              SizedBox(width: 0*widthMultiplier,),
                              Icon(
                                Icons.arrow_forward,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),

                    );
                  },
                ),
              ),

            ],
          )





        ],
      ),
    );
  }
}
