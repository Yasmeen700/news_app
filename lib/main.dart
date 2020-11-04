import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:intl/intl.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.account_balance_rounded,
                        size: 40,
                      ),
                      SizedBox(
                        width: 70,
                      ),
                      Text(
                        DateFormat.yMMMd().format(DateTime.now()),
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  // decoration: BoxDecoration(
                  //   color: Colors.transparent,
                  //   borderRadius: BorderRadius.all(
                  //     Radius.circular(20),
                  //   ),
                  // ),
                  height: 150,
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Card(

                        // borderOnForeground: true,
                        child: new Image.network(
                          'https://images.unsplash.com/photo-1547721064-da6cfb341d50?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                    itemCount: 10,
                    itemWidth: 300.0,
                    layout: SwiperLayout.STACK,
                  ),
                  // child: ListView.builder(
                  //   scrollDirection: Axis.horizontal,
                  //   shrinkWrap: true,
                  //   itemCount: 8,
                  //   itemBuilder: (BuildContext context, int Index) {
                  //     return Container(
                  //       decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.all(
                  //           Radius.circular(20),
                  //         ),
                  //       ),
                  //       child: Container(
                  //         child: Card(
                  //           child: Image.asset('assets/images/sky.jpg'),
                  //
                  //         ),
                  //       ),
                  //     );
                  //   },
                  // ),
                ),
                SizedBox(height: 50),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),

                  // margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    // physics: ,
                    shrinkWrap: true,
                    itemCount: 8,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: ListTile(
                          onTap: () {
                            //  TODO: add GetX to navigate
                          },
                          leading: Container(
                            width: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(5),
                              ),
                              image: DecorationImage(
                                  image: AssetImage('assets/images/sky.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          title: Text(
                            'title',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          subtitle: Text('subtitle'),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
