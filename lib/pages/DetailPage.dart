import 'package:flutter/material.dart';
import 'package:untuknyata/common/theme/theme.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.lightGreyBase,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: ColorsBase.whiteBase,
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text(
          'Isi dari halaman detail',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
