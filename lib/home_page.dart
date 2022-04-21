import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:website_majoe_grill/order_tutorial_page.dart';
import 'package:website_majoe_grill/pricelist_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70.0,
        backgroundColor: const Color(0xFFED252F),
        title: Image.asset(
          'images/logo.png',
          fit: BoxFit.cover,
          height: 50.0,
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/background.png',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 40.0, left: 25.0, right: 25.0),
                  child: Column(
                    children: const [
                      Text(
                        'SOLUSI GRILL DAN SUKI YANG ANTI RIBET!',
                        style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontFamily: 'DK Pardesi',
                          fontSize: 35,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 15.0),
                      Text(
                        'BAHAN NYA DIANTERIN, ALAT NYA FREE DISEWAIN',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 200.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFED252F),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 82.0,
                              height: 82.0,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.7),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            const SizedBox(width: 20.0),
                            const Text('Poin 1'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40.0),
                // const Padding(
                //   padding: EdgeInsets.symmetric(horizontal: 25.0),
                //   child: OrderTutorialPage(),
                // ),
                // const SizedBox(height: 40.0),
                // const PricelistPage(),
                const SizedBox(height: 40.0),
                Center(
                  child: Text(
                    'TESTIMONI',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontFamily: 'DK Pardesi',
                      fontSize: 40.0,
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                CarouselSlider(
                  options: CarouselOptions(),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Text(
                                  'text $i',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.0, vertical: 15.0),
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.vertical(
                                    bottom: Radius.circular(20.0),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image.asset(
                                        'images/sultan_leosko.png',
                                        fit: BoxFit.cover,
                                        width: 45.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Sultan Leosko',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '@sultanleosko',
                                          style: TextStyle(fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
