// import 'package:flutter/material.dart';
// import 'package:untuknyata/common/theme/theme.dart';
// import 'package:get/get.dart';
// import 'package:carousel_slider/carousel_controller.dart';
//
// import 'ProfilePage.dart';
//
// class NavBar extends StatelessWidget {
//   const NavBar({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//
//     return Scaffold(
//       backgroundColor: ColorsBase.whiteBase,
//       bottomNavigationBar: BottomAppBar(
//         color: ColorsBase.whiteBase,
//         child: SizedBox(
//           height: 60,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               IconButton(
//                 onPressed: () {
//                   // Arahkan ke halaman home
//                 },
//                 color: ColorsBase.blackBase,
//                 iconSize: 35,
//                 icon: const Icon(Icons.home),
//               ),
//               IconButton(
//                 onPressed: () {
//                   // Arahkan ke halaman create
//                 },
//                 color: ColorsBase.blackBase,
//                 iconSize: 35,
//                 icon: const Icon(Icons.create),
//               ),
//               IconButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => ProfilePage()),
//                   );
//                 },
//                 color: ColorsBase.blackBase,
//                 iconSize: 35,
//                 icon: const Icon(Icons.person),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }