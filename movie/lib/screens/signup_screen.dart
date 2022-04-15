import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup_ui/animation/animations.dart';
import 'package:login_signup_ui/screens/login_screen.dart';

import '../constant.dart';

class SignUPScreen extends StatefulWidget {
  SignUPScreen({Key? key}) : super(key: key);

  @override
  State<SignUPScreen> createState() => _SignUPScreenState();
}

class _SignUPScreenState extends State<SignUPScreen> {
  final feature = ["Login", "Sign Up"];

  int i = 1;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: Color.fromARGB(255, 41, 41, 41),
            body: i == 1
                ? SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(25),
                          child: Column(
                            children: [
                              // TabBar Code
                              Row(children: [
                                Container(
                                  height: height / 10,
                                  width: width / 2,
                                  child: TopAnime(
                                    2,
                                    5,
                                    child: ListView.builder(
                                      itemCount: feature.length,
                                      scrollDirection: Axis.horizontal,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              i = index;
                                            });
                                          },
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 20),
                                                child: Text(
                                                  feature[index],
                                                  style: TextStyle(
                                                    color: i == index
                                                        ? Color.fromARGB(
                                                            255, 106, 232, 248)
                                                        : Color.fromARGB(
                                                            255, 0, 15, 20),
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
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
                                                          255, 106, 232, 248),
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
                                      color: Colors.red[400],
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
                                height: 30,
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
                                      RichText(
                                        text: TextSpan(
                                          text: "Hello ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          children: [
                                            TextSpan(
                                              text: "There,",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 40,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "Enter your informations below or \nlogin with a social account",
                                        style: TextStyle(
                                          color: Colors.cyanAccent,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: height / 18,
                              ),

                              // TextFiled
                              Container(
                                width: width / 1.2,
                                height: height / 2.55,
                                child: TopAnime(
                                  1,
                                  16,
                                  curve: Curves.easeInExpo,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextField(
                                        // readOnly: true, // * Just for Debug
                                        cursorColor:
                                            Color.fromARGB(255, 106, 232, 248),
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 106, 232, 248)),
                                        showCursor: true,
                                        //cursorColor: mainColor,
                                        decoration: kTextFiledInputDecoration,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextField(
                                          // readOnly: true, // * Just for Debug
                                          cursorColor: Color.fromARGB(
                                              255, 106, 232, 248),
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 106, 232, 248)),
                                          showCursor: true,
                                          //cursorColor: mainColor,
                                          decoration: kTextFiledInputDecoration
                                              .copyWith(labelText: "Password")),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      TextField(
                                        // readOnly: true, // * Just for Debug
                                        cursorColor:
                                            Color.fromARGB(255, 106, 232, 248),
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 106, 232, 248)),
                                        showCursor: true,
                                        //cursorColor: mainColor,
                                        decoration:
                                            kTextFiledInputDecoration.copyWith(
                                                labelText: "Password again"),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      // FaceBook and Google ICon
                                      TopAnime(
                                        1,
                                        3,
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: FaIcon(
                                                  FontAwesomeIcons.googlePlusG,
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
                          ),
                        ),

                        // Bottom
                        i == 1
                            ? TopAnime(
                                2,
                                29,
                                curve: Curves.fastOutSlowIn,
                                child: Container(
                                  height: height / 6,
                                  // color: Colors.red,
                                  child: Stack(
                                    children: [
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
                                                        LoginScreen()));
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 87, 230, 235),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            width: width / 4,
                                            height: height / 10,
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
                            : LoginScreen()
                      ],
                    ),
                  )
                : LoginScreen()),
      ),
    );
  }
}
