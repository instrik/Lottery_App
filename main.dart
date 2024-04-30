// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Lottery());

class Lottery extends StatefulWidget {
  @override
  State<Lottery> createState() => _LotteryState();
}

class _LotteryState extends State<Lottery> {
  Random random = Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text(
                'Lottery App',
                style: TextStyle(
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Image.asset(
                  'images/logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                    text: '',
                    children: [
                      TextSpan(
                        text: 'Lucky No. is ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: '0',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: x == 0
                    ? Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.greenAccent,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.done,
                                color: Colors.green,
                                size: 35,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '',
                                  children: [
                                    TextSpan(
                                      text: 'Congratulations \n',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'You got ',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '0',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        height: 140,
                        width: 300,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(.2),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 35,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: '',
                                  children: [
                                    TextSpan(
                                      text: 'You got ',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '$x \n',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Better Luck next time',
                                      style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.black,
            foregroundColor: Colors.yellowAccent,
            child: Icon(Icons.refresh),
            onPressed: () {
              setState(
                () {
                  x = random.nextInt(100);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
