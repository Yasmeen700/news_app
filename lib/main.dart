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
                // Container(
                //   padding: EdgeInsets.all(20),
                //   child: Row(
                //     children: [
                //       Icon(
                //         Icons.account_balance_rounded,
                //         size: 40,
                //       ),
                //       SizedBox(
                //         width: 70,
                //       ),
                //       Text(
                //         DateFormat.yMMMd().format(DateTime.now()),
                //         style: TextStyle(
                //           color: Colors.grey,
                //           fontFamily: 'Roboto',
                //           fontSize: 20,
                //           fontWeight: FontWeight.w500,
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    // color:  Color(0xfff2f2f2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  height: 200,
                  child:Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Color(0xfff2f2f2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://cdn.vox-cdn.com/thumbor/altkKN7BnaLUpbAVPi6j4xmC2Ug=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/13546110/acastro_181126_1777_bitcoin_0001.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                    itemCount: 10,
                    viewportFraction: 0.8,
                    scale: 0.9,
                  )


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
                SizedBox(height: 10),
                Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),

                  // margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(15),
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
                                  image:NetworkImage('https://techcrunch.com/wp-content/uploads/2020/07/GettyImages-887657568.jpg?w=600'),
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

// Swiper(
// itemBuilder: (BuildContext context, int index) {
// return Container(
// decoration: BoxDecoration(
// color: Color(0xfff2f2f2),
// borderRadius: BorderRadius.all(
// Radius.circular(20),
// ),
// image: DecorationImage(
// image: NetworkImage(
// 'https://cdn.vox-cdn.com/thumbor/altkKN7BnaLUpbAVPi6j4xmC2Ug=/0x146:2040x1214/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/13546110/acastro_181126_1777_bitcoin_0001.jpg'),
// fit: BoxFit.fill,
// ),
// ),
// );
// },
// itemCount: 10,
// itemWidth: 300.0,
// layout: SwiperLayout.STACK,
// ),