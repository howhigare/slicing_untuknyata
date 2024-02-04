import 'package:flutter/material.dart';
import 'package:untuknyata/common/theme/theme.dart';
import 'Carousel.dart';
import 'DetailPage.dart';
import 'Profile/ProfilePage.dart';
import 'cardwidget.dart';
import 'package:carousel_slider/carousel_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      bottomNavigationBar: BottomAppBar(
        color: ColorsBase.whiteBase,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                color: ColorsBase.blackBase,
                iconSize: 35,
                icon: const Icon(Icons.home),
              ),
              IconButton(
                onPressed: () {},
                color: ColorsBase.blackBase,
                iconSize: 35,
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                },
                color: ColorsBase.blackBase,
                iconSize: 35,
                icon: const Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width * 0.10,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "UntukNyata.",
                          style: TextStyle(
                            color: ColorsBase.blackBase,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            "https://i.pinimg.com/564x/b4/2b/04/b42b04fab06f1b4e1fb20553bc7f93bb.jpg",
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              // Include your CarouselPage here
              CarouselPage(),
              SizedBox(
                height: 20,
              ),
              // List of CardWidgets with spacing
              SizedBox(height: 25), // Add space between carousel and cards
              Container(
                margin: EdgeInsets.symmetric(horizontal: width * 0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "Abadikan momentmu ",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                color: ColorsBase.greyBase,
                                height: 0.1,
                              ),
                            ),
                            TextSpan(
                              text: "\nbersama ",
                              style: TextStyle(
                                color: ColorsBase.blackBase,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                height: 0.1,
                              ),
                            ),
                            TextSpan(
                              text: "UntukNyata!",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: ColorsBase.blackBase ,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Add space between cards
              CardWidget(),
              SizedBox(height: 20), // Add space between cards
              CardWidget(),
              SizedBox(height: 20), // Add space between cards
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
