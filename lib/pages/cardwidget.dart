import 'package:flutter/material.dart';
import 'package:untuknyata/common/theme/theme.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.450,
      width: double.maxFinite,
      child: Card(
        // Menggunakan margin untuk mengecilkan sisi kanan dan kiri
        margin: EdgeInsets.symmetric(horizontal: 40.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: Stack(
            children: [
              Image.network(
                "https://i.pinimg.com/564x/58/e1/41/58e1415b68a1c8efc91e5e55d01dd4bf.jpg",
                fit: BoxFit.cover,
                width: double.maxFinite,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  color: ColorsBase.blackBase.withOpacity(0.10),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Text(
                          "anjay mabar",
                          style: TextStyle(
                            color: ColorsBase.whiteBase,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
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
