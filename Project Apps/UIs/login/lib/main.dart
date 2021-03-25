import 'package:flutter/material.dart';
import 'package:login/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: TextTheme(
          headline4:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),
          headline5:
              TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/perosn.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BAKING LESSONS\n',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      TextSpan(
                        text: 'Master of Baking',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: kPrimaryColor,
                    ),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Start Learning',
                          style: Theme.of(context).textTheme.button.copyWith(
                                color: Colors.black,
                              ),
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
