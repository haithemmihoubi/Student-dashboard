import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: size.height * .3,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage(
                      'assets/images/undraw_Security_on_re_e491.png'))),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
            child: Column(
              children: [
                Container(
                  height: 64,
                  margin: EdgeInsets.only(bottom: 30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/undraw_personal_info_0okl.png'),
                        radius: 90,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Haithem Mihoubi',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.blue),
                          ),
                          Text(
                            'haithemmihoubi1234@gmail.com',
                            style: TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    primary: false,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      GestureDetector(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          elevation:4,
                          child: Column(
                            children: [
                              Image.asset('assets/images/undraw_personal_info_0okl.png',height: 160,),
                              Text('Personal Data ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                            ],
                          ),
                        ),
                        onTap: (){
                          Navigator.pushNamed(
                            context,
                            '/student',
                          );
                        },
                      ), Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation:4,
                        child: Column(
                          children: [
                            Image.asset('assets/images/undraw_Online_learning_re_qw08.png',height: 160,),
                            Text('Course Schedule ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      ), Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation:4,
                        child: Column(
                          children: [
                            Image.asset('assets/images/undraw_season_change_f99v.png',height: 160,),
                            Text('Attendance ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      ), Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation:4,
                        child: Column(
                          children: [
                            Image.asset('assets/images/image3.png',height: 160,),
                            Text('Results ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      ), Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation:4,
                        child: Column(
                          children: [
                            Image.asset('assets/images/undraw_Working_oh83.png',height: 160,),
                            Text('Courses booking ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      ), Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        elevation:4,
                        child: Column(
                          children: [
                            Image.asset('assets/images/undraw_multitasking_hqg3.png',height: 160,),
                            Text('Course plan ',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
