import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

//TODO : Add images for carousel

class CarouselWidget extends StatefulWidget {

  // ignore: prefer_const_constructors_in_immutables
  CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {

  final List<String> imgList = [
    'assets/Project Bedrock.png',
    'assets/Project Mine.png',
    'assets/Project Heaven.png'
  ];

  @override
  Widget build(BuildContext context) {
    double heightMultiplier = (MediaQuery.of(context).size.height) / 852;
    double widthMultiplier = (MediaQuery.of(context).size.width) / 393;

    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 225*heightMultiplier,
        scrollPhysics: BouncingScrollPhysics(),
        enlargeCenterPage: true,
        disableCenter: false,
        autoPlay: true,
        
        // aspectRatio: 16/9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 300),
        viewportFraction: 0.7,
        // enlargeFactor: 0,
        initialPage: 1,

      ),
      itemCount: imgList.length,
      itemBuilder: (context,index,realIndex){
        return Image.asset(imgList[index],height: 100*heightMultiplier,width:250*widthMultiplier,fit: BoxFit.contain);
      },
    );
  }
}
