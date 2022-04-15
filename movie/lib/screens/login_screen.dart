import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_ui/animation/animations.dart';
import 'package:login_signup_ui/screens/signup_screen.dart';

import '../constant.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final feature = ["Login", "Sign Up"];

  int i = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 41, 41, 41),
            body: i == 0
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              Row(
                                  // TabBar Code
                                  children: [
                                    Container(
                                      height: height / 13,
                                      width: width / 2,
                                      child: TopAnime(
                                        2,
                                        5,
                                        child: ListView.builder(
                                          itemCount: feature.length,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  i = index;
                                                });
                                              },
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 20),
                                                    child: Text(
                                                      feature[index],
                                                      style: TextStyle(
                                                        color: i == index
                                                            ? Color.fromARGB(
                                                                255,
                                                                106,
                                                                225,
                                                                247)
                                                            : Color.fromARGB(
                                                                255, 0, 15, 20),
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 8,
                                                  ),
                                                  i == index
                                                      ? Container(
                                                          height: 3,
                                                          width: width / 9,
                                                          color: Color.fromARGB(
                                                              255,
                                                              106,
                                                              232,
                                                              248),
                                                        )
                                                      : Container(),
                                                ],
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(child: Container()),

                                    // Profile
                                    RightAnime(
                                      1,
                                      15,
                                      curve: Curves.easeInOutQuad,
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          width: 60,
                                          height: 60,
                                          color:
                                              Color.fromARGB(255, 80, 234, 239),
                                          child: Icon(
                                            Icons.account_circle_outlined,
                                            color: Colors.white,
                                            size: 40,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),

                              SizedBox(
                                height: 50,
                              ),

                              // Top Text
                              Container(
                                padding: EdgeInsets.only(left: 15),
                                width: width,
                                child: TopAnime(
                                  1,
                                  20,
                                  curve: Curves.fastOutSlowIn,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Welcome Back,",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w300,
                                          )),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Let's get back on the train to bing watch content recomended for you",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.cyanAccent,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: height / 14,
                              ),

                              // TextFiled
                              Column(
                                children: [
                                  Container(
                                    width: width / 1.2,
                                    height: height / 3.10,
                                    //  color: Colors.red,
                                    child: TopAnime(
                                      1,
                                      15,
                                      curve: Curves.easeInExpo,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          TextField(
                                            // readOnly: true, // * Just for Debug
                                            cursorColor: Color.fromARGB(
                                                255, 106, 232, 248),
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 106, 232, 248),
                                              fontSize: 20,
                                            ),
                                            showCursor: true,
                                            //cursorColor: mainColor,
                                            decoration:
                                                kTextFiledInputDecoration,
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          TextField(
                                            // readOnly: true, // * Just for Debug
                                            cursorColor: Color.fromARGB(
                                                255, 106, 232, 248),
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 106, 232, 248),
                                              fontSize: 20,
                                            ),
                                            showCursor: true,
                                            //cursorColor: mainColor,
                                            decoration:
                                                kTextFiledInputDecoration
                                                    .copyWith(
                                                        labelText: "Password"),
                                            strutStyle:
                                                StrutStyle(fontSize: 10),
                                          ),

                                          SizedBox(
                                            height: 5,
                                          ),

                                          // FaceBook and Google ICon
                                          TopAnime(
                                            1,
                                            10,
                                            child: Row(
                                              children: [
                                                IconButton(
                                                  icon: FaIcon(
                                                      FontAwesomeIcons
                                                          .googlePlusG,
                                                      color: Colors.cyan,
                                                      size: 35),
                                                  onPressed: () {},
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),

                        // Bottom
                        i == 0
                            ? TopAnime(
                                2,
                                42,
                                curve: Curves.fastOutSlowIn,
                                child: Container(
                                  height: height / 6,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 30,
                                        top: 15,
                                        child: Text(
                                          "Fogot Password?",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 43),
                                        child: Container(
                                            height: height / 9,
                                            color:
                                                Color.fromARGB(255, 0, 15, 20)
                                                    .withOpacity(0.4)),
                                      ),
                                      Positioned(
                                        left: 280,
                                        top: 10,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SignUPScreen()));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 90, 255, 247),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            width: width / 4,
                                            height: height / 12,
                                            child: Icon(
                                              Icons.arrow_forward,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : SignUPScreen()
                      ],
                    ),
                  )
                : SignUPScreen()),
      ),
    );
  }
}
