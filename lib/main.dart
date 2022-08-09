import 'package:flutter/material.dart';
import './testing.dart';
void main() {
  runApp(MaterialApp(home: MyApp()));
}
double c=0;
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoginScreen()
    );
  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text("UNIT CONVERTER"),
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 35, right: 3),
                          child: ElevatedButton(
                            child: Text('UNIT CONVERSION', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SecondRoute()),
                              );
                            },
                          ),
                        ),

                      ]),
                ])
        )
    );
  }
}
List<String> items=["Temper.","Length","Weight","Speed"];
class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightGreenAccent,
        appBar: AppBar(
          title: const Text('COURSES'),
          backgroundColor: Colors.greenAccent,
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(bottom: 3, left: 40, top: 30),
                            child: Text(
                              "Select the unit for conversion :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        for(var i=0;i<items.length;i++)
                          Padding(
                            padding: EdgeInsets.only(top: 35, right: 3),
                            child: ElevatedButton(
                              child: Text(items[i],
                                style: TextStyle(color: Colors.black),),
                              onPressed: () {
                                if(i==0)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        DropDownDemo1()),
                                  );
                                if(i==2)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        DropDownDemo2()),
                                  );
                                if(i==1)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        DropDownDemo3()),
                                  );
                                if(i==3)
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) =>
                                        DropDownDemo4()),
                                  );
                              },
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                              ),
                            ),
                          ),
                      ])
                ])
        )
    );
  }
}
