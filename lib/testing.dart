import 'package:flutter/material.dart';
double c=0;
TextEditingController temper= TextEditingController();
TextEditingController weight=TextEditingController();
TextEditingController length= TextEditingController();
TextEditingController speed=TextEditingController();
void _showToast(BuildContext context) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
      SnackBar(
        content: const Text('SUCCESS'),
      )
  );
}
class DropDownDemo1 extends StatefulWidget {
  @override
  _DropDownDemoState createState() => _DropDownDemoState();
}
class _DropDownDemoState extends State<DropDownDemo1> {
  String? _chosenValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 25, right: 3),
                            child: Text(
                              "Choose the conversion :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 35, right: 3),
                          child: DropdownButton<String>(
                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black),

                            items: <String>['Celsius to Fahrenheit', 'Celsius to Kelvin', 'Fahrenheit to Celsius'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Choose temperature conversion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                          child: TextField(
                            controller: temper,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter the values',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 10),
                          child: ElevatedButton(
                            child: Text('CONVERT', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              if(_chosenValue=='Celsius to Fahrenheit'){
                                c=(int.parse(temper.text)*9/5)+32;
                                _showToast(context);
                              }
                              else if(_chosenValue=='Celsius to Kelvin'){
                                c=int.parse(temper.text)+273.15;
                                _showToast(context);
                              }
                              else if(_chosenValue=='Fahrenheit to Celsius'){
                                c=(int.parse(temper.text)-32)*5/9;
                                _showToast(context);
                              }
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, right: 3),
                            child: Text(
                              c.toStringAsFixed(2),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: ElevatedButton(
                            child: Text('Choose a different unit', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.pop(context);
                              c=0;
                            },
                          ),
                        ),
                      ]),
                ])
        )
    );
  }
}
class DropDownDemo2 extends StatefulWidget {
  @override
  _DropDownDemoState2 createState() => _DropDownDemoState2();
}
class _DropDownDemoState2 extends State<DropDownDemo2> {
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 30, right: 3),
                            child: Text(
                              "Choose the conversion :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, right: 3),
                          child: DropdownButton<String>(
                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black),

                            items: <String>['kgs to pounds', 'kgs to grams', 'kgs to ounce'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Choose weight conversion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                          child: TextField(
                            controller: weight,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter the values',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 10),
                          child: ElevatedButton(
                            child: Text('CONVERT', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              if(_chosenValue=='kgs to pounds'){
                                c=int.parse(weight.text)*2.25;
                                _showToast(context);
                              }
                              else if(_chosenValue=='kgs to grams'){
                                c=int.parse(weight.text)*1000;
                                _showToast(context);
                              }
                              else if(_chosenValue=='kgs to ounce'){
                                c=int.parse(weight.text)*35.274;
                                _showToast(context);
                              }
                              //Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, right: 3),
                            child: Text(
                              c.toStringAsFixed(2),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: ElevatedButton(
                            child: Text('Choose a different unit', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.pop(context);
                              c=0;
                            },
                          ),
                        ),

                      ]),
                ])
        )
    );
  }
}
class DropDownDemo3 extends StatefulWidget {
  @override
  _DropDownDemoState3 createState() => _DropDownDemoState3();
}

class _DropDownDemoState3 extends State<DropDownDemo3> {
  String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('DropDown'),
        ),
        body: SingleChildScrollView(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 25, right: 3),
                            child: Text(
                              "Choose the conversion :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 35, right: 3),
                          child: DropdownButton<String>(
                            value: _chosenValue,
                            //elevation: 5,
                            style: TextStyle(color: Colors.black),

                            items: <String>['metre to kilometre', 'kilometre to mile', 'metre to centimetre'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Choose length conversion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                          child: TextField(
                            controller: length,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter the values',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 10),
                          child: ElevatedButton(
                            child: Text('CONVERT', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              if(_chosenValue=='metre to kilometre'){
                                c=int.parse(length.text)/1000;
                                _showToast(context);
                              }
                              else if(_chosenValue=='kilometre to mile'){
                                c=int.parse(length.text)*0.621;
                                _showToast(context);
                              }
                              else if(_chosenValue=='metre to centimetre'){
                                c=int.parse(length.text)*100;
                                _showToast(context);
                              }
                              //Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, right: 3),
                            child: Text(
                              c.toStringAsFixed(2),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: ElevatedButton(
                            child: Text('Choose a different unit', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.pop(context);
                              c=0;
                            },
                          ),
                        ),
                      ]),
                ])
        )
    );
  }
}
class DropDownDemo4 extends StatefulWidget {
  @override
  _DropDownDemoState4 createState() => _DropDownDemoState4();
}
class _DropDownDemoState4 extends State<DropDownDemo4> {
  String? _chosenValue;
  @override
  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text('SUCCESS'),
        )
    );
  }
  void _showToastfal(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
        SnackBar(
          content: const Text('ERROR VALUE'),
        )
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.green,
        appBar: AppBar(
          title: Text('DropDown'),
        ),

        body: SingleChildScrollView(

            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 25, right: 3),
                            child: Text(
                              "Choose the conversion :",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 35, right: 3),
                          child: DropdownButton<String>(
                            value: _chosenValue,
                            //elevation: 1,
                            style: TextStyle(color: Colors.black),
                            items: <String>['m/s to km/hr', 'km/hr to m/s', 'm/s to cm/s'].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            hint: Text(
                              "Choose speed conversion",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w600),
                            ),
                            onChanged: (String? value) {
                              setState(() {
                                _chosenValue = value;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20,right: 20,top: 30),
                          child: TextField(
                            controller: speed,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter the values',
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 25, left: 10),
                          child: ElevatedButton(
                            child: Text('CONVERT', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              if(_chosenValue=='m/s to km/hr'){
                                c=int.parse(speed.text)*36/10;
                                _showToast(context);
                              }
                              else if(_chosenValue=='km/hr to m/s'){
                                c=int.parse(speed.text)*10/36;
                                _showToast(context);
                              }
                              else if(_chosenValue=='m/s to cm/s'){
                                c=int.parse(speed.text)*100;
                                _showToast(context);
                              }
                              else if(speed.text!=double){
                                _showToastfal(context);
                                Navigator.pop(context);
                              }
                            },
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 20, right: 3),
                            child: Text(
                              c.toStringAsFixed(2),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            )
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 10),
                          child: ElevatedButton(
                            child: Text('Choose a different unit', style: TextStyle(color: Colors.black),),
                            onPressed: () {
                              Navigator.pop(context);
                              c=0;
                            },
                          ),
                        ),
                      ]),
                ])
        )
    );
  }
}


