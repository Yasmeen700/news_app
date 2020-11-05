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
        appBar: AppBar(
          leading: Icon(Icons.menu_rounded,
          color: Colors.black,
          ),
          elevation: 5,
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'News',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Roboto' ,
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10,0,0),
                child: Text('Top news',
                  style: TextStyle(
                    fontFamily: 'Roboto' ,
                    fontSize: 20 ,
                    fontWeight: FontWeight.w300,


                  ),
                ),
              ),
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
                  child: Swiper(
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xfff2f2f2),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://cdn.arstechnica.net/wp-content/uploads/2017/08/GettyImages-510365916-760x380.jpg'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                              alignment: Alignment.bottomLeft,
                              child:    Padding(
                                padding: const EdgeInsets.fromLTRB(8, 10,0,10),
                                child: ListTile(
                                  title: Text('Latest news',
                                    style: TextStyle(
                                      fontFamily: 'Roboto' ,
                                      fontSize: 20 ,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white
                                    ),
                                  ),
                                  subtitle: Text('Latest news',
                                    style: TextStyle(
                                        fontFamily: 'Roboto' ,
                                        // fontSize: 20 ,
                                        color: Colors.white70,
                                    ),
                                  ),
                                ),
                              ),),
                        ],
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
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 10,0,10),
                child: Text('Latest news',
                  style: TextStyle(
                    fontFamily: 'Roboto' ,
                    fontSize: 20 ,
                    fontWeight: FontWeight.w300,


                  ),
                ),
              ),
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
                                image: NetworkImage(
                                    'https://techcrunch.com/wp-content/uploads/2020/07/GettyImages-887657568.jpg?w=600'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        title: Text(
                          'title',
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        subtitle: Text('subtitle',
                    style: TextStyle(
                    fontFamily: 'Roboto' ,),
                    ))
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
