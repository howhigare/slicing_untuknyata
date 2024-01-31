import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untuknyata/common/theme/theme.dart';
import 'cardwidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
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
                child: Row(
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
              ),
              SizedBox(
                height: 5,
              ),
              CardWidget(),
              SizedBox(
                height: 15,
              ),
              CardWidget(),
              SizedBox(
                height: 15,
              ),
              CardWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
