import 'package:blworld/presentation/detail/content-component.dart';
import 'package:blworld/presentation/detail/header-component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        leadingWidth: 100,
        elevation: 0.0,
        title: Text(
          "KinnPorsche",
          style: TextStyle(
            color: Colors.teal,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 10),
            IconButton(
              iconSize: 20,
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(8),
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back_ios,
              ),
              color: Colors.teal,
            ),
            IconButton(
              onPressed: () {},
              constraints: BoxConstraints(),
              padding: EdgeInsets.all(8),
              iconSize: 20,
              icon: Icon(
                Icons.favorite,
              ),
              color: Colors.teal,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            // decoration: BoxDecoration(
            //   borderRadius: BorderRadius.circular(5),
            //   color: Colors.white,
            // ),
            // padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HeaderComponent(),
                SizedBox(height: 5),
                ContentComponent(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
