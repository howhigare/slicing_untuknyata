import 'package:flutter/material.dart';
import 'package:untuknyata/common/theme/theme.dart';
import 'package:get/get.dart';
import 'DetailPage.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Container(
      height: height * 0.650,
      width: double.maxFinite,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 50.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Stack(
            children: [
              Image.network(
                "https://i.pinimg.com/736x/a1/8b/4e/a18b4ee4b5ae2313146c3f2566fc1a6f.jpg",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  color: ColorsBase.blackBase.withOpacity(0.10),
                  height: 70,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SongKang",
                          style: TextStyle(
                            color: ColorsBase.whiteBase,
                            fontSize: 15,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Mau Ngapelin ayla pls",
                          style: TextStyle(
                            fontSize: 12,
                            color: ColorsBase.whiteBase,
                            fontFamily: "Poppins",
                          ),
                        ),
                        Text(
                          "14-02-24",
                          style: TextStyle(
                            color: ColorsBase.whiteBase,
                            fontSize: 10,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment(0.80, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/8e/f6/74/8ef6749467d6af09ea722083bf5f09d4.jpg",
                    ),
                    radius: 20.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
