import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:journey_ui/models/beach_model.dart';
import 'package:journey_ui/models/popular_model.dart';
import 'package:journey_ui/models/recommended_model.dart';
import 'package:journey_ui/screens/selected_place_screen.dart';
import 'package:journey_ui/widgets/bottom_navigation_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Page Controller
  final _pageController = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      bottomNavigationBar: BottomNavigationBarTravel(),
      body: SafeArea(
        child: Container(
        
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: <Widget>[
              // Custom Navigation Drawer and Search Button
              Container(
                height:57,
                margin: EdgeInsets.only(top: 27, left: 27, right: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height:57,
                      width:57,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0x080a0928),
                      ),
                      child: SvgPicture.asset('assets/svg/icon_drawer.svg'),
                    ),
                    Container(
                      height:57,
                      width:57,
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0x080a0928),
                      ),
                      child: SvgPicture.asset('assets/svg/icon_search.svg'),
                    )
                  ],
                ),
              ),

              // Text Widget for Title
              Padding(
                padding: EdgeInsets.only(top: 45, left: 27),
                child: Text(
                  'Start\nyour Journey',
                  style: GoogleFonts.bellota(
                      fontSize: 45, fontWeight: FontWeight.w700),
                ),
              ),

              // Custom Tab bar with Custom Indicator
              Container(
                height: 30,
                margin: EdgeInsets.only(left: 15, top: 27),
                child: DefaultTabController(
                  length: 4,
                  child: TabBar(
                      labelPadding: EdgeInsets.only(left: 15, right: 15),
                      indicatorPadding:
                          EdgeInsets.only(left: 15, right: 15),
                      isScrollable: true,
                      labelColor: Color(0xFF000000),
                      unselectedLabelColor: Color(0xFF8a8a8a),
                      labelStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      unselectedLabelStyle: GoogleFonts.lato(
                          fontSize: 14, fontWeight: FontWeight.w700),
                      indicatorColor:Colors.black ,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicatorWeight: 0.4,
                      tabs: [
                        Tab(
                          child: Container(
                            child: Text('Recommended'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('Popular'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text('New Destination'),
                          ),
                        ),
                        Tab(
                          child: GestureDetector(
                            onTap: (){},
                                                      child: Container(
                              child: Text('Hotels'),
                            ),
                          ),
                        )
                      ]),
                ),
              ),

              // ListView widget with PageView
              // Recommendations Section
              Container(
                height: 219,
                margin: EdgeInsets.only(top: 16),
                child: PageView(
                  physics: BouncingScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    recommendations.length,
                    (int index) => GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SelectedPlaceScreen(
                                recommendedModel: recommendations[index])));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 27),
                        width: 333,
                        height: 214,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: CachedNetworkImageProvider(recommendations[index].image),
                          ),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 20,
                              left: 20,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                      sigmaY: 40, sigmaX: 50),
                                  child: Container(
                                    height: 36,
                                    padding: EdgeInsets.only(
                                        left: 16, right: 15),
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        SvgPicture.asset(
                                            'assets/svg/icon_location.svg'),
                                        SizedBox(
                                          width: 9.52,
                                        ),
                                        Text(
                                          recommendations[index].name,
                                          style: GoogleFonts.lato(
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                              fontSize: 17),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Dots Indicator
              // Using SmoothPageIndicator Library
              Padding(
                padding: EdgeInsets.only(left: 27, top: 27),
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: recommendations.length,
                  effect: ExpandingDotsEffect(
                     expansionFactor: 3,
                      activeDotColor: Colors.orange,
                      dotColor: Color(0xFFababab),
                      dotHeight: 25,
                      dotWidth: 20,
                      spacing: 5),
                ),
              ),

              // Text Widget for Popular Categories
              Padding(
                padding: EdgeInsets.only(top: 48, left: 27, right: 27),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Popular Categories',
                      style: GoogleFonts.playfairDisplay(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF000000),
                      ),
                    ),
                    Text(
                      'Show All ',
                      style: GoogleFonts.lato(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF8a8a8a),
                      ),
                    )
                  ],
                ),
              ),

              // ListView for Popular Categories Section
              Container(
                margin: EdgeInsets.only(top: 33),
                height: 45,
                child: ListView.builder(
                  itemCount: populars.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.only(left: 27, right: 10),
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(populars[index].color),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            populars[index].image,
                            height: 17,
                          ),
                          SizedBox(
                            width: 20,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),

              // ListView for Beach Section
              Container(
                margin: EdgeInsets.only(top: 27, bottom: 17),
                height: 125,
                child: ListView.builder(
                  itemCount: beaches.length,
                  padding: EdgeInsets.only(left: 27, right: 12),
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Container(
                      height: 125,
                      width: 189,
                      margin: EdgeInsets.only(right: 17),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(beaches[index].image),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
