import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';

class FilmCarousel extends StatefulWidget {
  const FilmCarousel({super.key});

  @override
  State<FilmCarousel> createState() => _FilmCarouselState();
}

class _FilmCarouselState extends State<FilmCarousel> {

  final List<String> imgList = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXWzC7IMjhrQUwTsLcDzKI3DZQpwyRBYnjw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXWzC7IMjhrQUwTsLcDzKI3DZQpwyRBYnjw&s',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScXWzC7IMjhrQUwTsLcDzKI3DZQpwyRBYnjw&s'
  ];
  @override
  Widget build(BuildContext context) {
    double screenheight =  MediaQuery.of(context).size.height;
    double screenwidth =  MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenheight*0.3463060686015831,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            height: screenheight*0.3463060686015831,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: screenheight*0.0138522427440633,
              ),
              Row(
                children: [

                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (8/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (20/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (4/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
      ],

              ),

              SizedBox(
                height: (220/866.2857142857143)*screenheight,
              ),
              Row(
                children: [

                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (8/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),


                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (25/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (17/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                  SizedBox(
                    width: (20/411.42857142857144)*screenwidth,
                  ),
                  Container(
                    height: (27/866.2857142857143)*screenheight,
                    width: (4/411.42857142857144)*screenwidth,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFF9DC),
                    ),
                  ),
                ],

              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: (49/866.2857142857143)*screenheight,
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      disableCenter: false,
                      enlargeCenterPage: false,
                      aspectRatio: 16 / 9,
                      autoPlayInterval: const Duration(seconds: 5),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      viewportFraction: 0.8,
                    ),
                    items: imgList.map((item) {
                      return Stack(
                        children: <Widget>[
                          Container(
                            height: (200/866.2857142857143)*screenheight,
                            width: (310/411.42857142857144)*screenwidth,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(8),
                              // image: DecorationImage(
                              //   image: NetworkImage(item),
                              //   fit: BoxFit.cover,
                              // ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                item,
                                fit: BoxFit.cover,
                                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                  if (loadingProgress == null) {
                                    return child; // When the image is fully loaded, return the image.
                                  } else {
                                    return Shimmer.fromColors(
                                      baseColor: Colors.grey[300]!,
                                      highlightColor: Colors.grey[100]!,
                                      child: Container(
                                        color: Colors.white,
                                      ),
                                    );
                                  }
                                },
                                errorBuilder: (BuildContext context, Object error, StackTrace? stackTrace) {
                                  return Shimmer.fromColors(
                                    baseColor: Colors.grey[300]!,
                                    highlightColor: Colors.grey[100]!,
                                    child: Container(
                                      width: 300,
                                      height: 290,
                                      color: Colors.white,
                                      child: const Icon(
                                        Icons.error,
                                        color: Colors.red,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                },
                              ),

                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),

        ]

      ),
    );
  }
}

