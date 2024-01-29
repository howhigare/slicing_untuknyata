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
                alignment: Alignment.bottomLeft,
                child: Container(
                  color: ColorsBase.blackBase.withOpacity(0.10),
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Judul di atas (bold)
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
              Align(
                alignment: Alignment(0.80, 0.8),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "https://i.pinimg.com/564x/b4/2b/04/b42b04fab06f1b4e1fb20553bc7f93bb.jpg",
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
