import 'package:flutter/material.dart';
import 'dart:io';
import 'quote.dart';
import 'Quote_Card.dart';

void main() => runApp(MaterialApp(
  home:NappsCRD()
));

class NappsCRD extends StatefulWidget {
  @override
  _NappsCRDState createState() => _NappsCRDState();
}

class _NappsCRDState extends State<NappsCRD> {

  var regno = '2017/2*****';
  bool isSwitched = false;
  var shown = '2017/242564';
  var hidden = '2017/2*****';
  var show = 'show';
  var hide = 'hide';
  var btnvalue = 'show';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar:
      AppBar(
        title: Text(
          'Basic ID Layout',
         style: TextStyle( fontSize: 30.0,),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation:10.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0.0),
          //COLUMN TO STACK UP THE DETAILS
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, //this is to align the widgets of the column to the left
            children: <Widget>[


              Card(
                color: Colors.grey[900],
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30.0, 30, 30.0, 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[

                      Row(

                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          CircleAvatar(
                              backgroundImage: AssetImage('images/anonymous_plutocrat-20191117-0001.jpg'),
                              radius: 45.0,
                            ),
                          Image.asset('images/unnlogo.png', scale: 7),
                        ],
                      ),
                      //Divider(height: 15.0, color: Colors.grey[800]),

                      SizedBox(height: 20.0),

                      Text('Reg No.',
                        style: TextStyle(letterSpacing: 1, fontFamily: 'brash', fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text('$regno',
                            style: TextStyle(letterSpacing: 2, fontSize: 23, fontWeight: FontWeight.bold),
                          ),

                          SizedBox( width: 38, height: 10.8,
                            child: RaisedButton(
                              padding: EdgeInsets.all(0.0),
                              onPressed: () {
                                setState(() {
                                  if(regno == hidden) {
                                    setState(() {
                                      regno = shown;
                                      btnvalue = hide;
                                     });
                                    print('Switch is ON');
                                     }
                                    else {
                                     setState(() {
                                      regno = hidden ;
                                      btnvalue = show;
                                    });
                                    print('Switch is OFF');
                                  }
                                });
                              },
                              color: Colors.green,
                              elevation: 8.0,
                              child:
                              Text('$btnvalue',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 2.0),
                          Image.asset('images/signdited cdr white.png', scale:30.0),
                        ],
                      ),


                    ],
                  ),
                ),
              ),

              SizedBox(height: 17.0),//Sized box provides spacing between the widgets
              Text('Name',
                style: TextStyle(letterSpacing: 1, fontFamily: 'brash', fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              Text('Napoleon XXIV',
                style: TextStyle(letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0),//Sized box provides spacing between the widgets
              Text('School',
                style: TextStyle(letterSpacing: 1, fontFamily: 'brash', fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              Text('University of Nigeria, Nsukka.',
                style: TextStyle(letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10.0),

              Text('Department',
                style: TextStyle(letterSpacing: 1, fontFamily: 'brash', fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              Text('Electronic Engineering',
                style: TextStyle(letterSpacing: 2, fontSize: 20, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10.0),

              Text('Level',
                style: TextStyle(letterSpacing: 1, fontFamily: 'brash', fontSize: 15, color: Colors.white,fontWeight: FontWeight.bold),
              ),
              Text('300',
                style: TextStyle(letterSpacing: 2, fontSize: 19, fontWeight: FontWeight.bold),
              ),


              SizedBox(height: 10),


              Row(
                children: <Widget>[
                  Icon(
                   Icons.email,
                    color: Colors.white,
                  ),
                  SizedBox(width: 10),
                  Text('fcmokwenye@gmail.com',
                  style: TextStyle(color: Colors.grey, fontFamily: 'brash'),
                  ),
                ],
              ),

              Divider(height: 30.0, color: Colors.grey,),

              Center(child: Image.asset('images/fcqrcardunn.png', height: 150)
              ),
            ],
          ),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => exit(0),
        elevation: 10.0,
        child: Icon(
          Icons.cancel,
        ),
        backgroundColor: Colors.green[800],
        tooltip: 'Close the App',
      ),
    );
  }
}





//UNUSED CODE ATTEMPTED SWITCH
//                    child: Switch(
//                      value: isSwitched,
//                      onChanged: (value){
//                        if(isSwitched == false) {
//                          setState(() {
//                            regno = '2017/242564';
//                            isSwitched = true;
//                          });
//                          print('Switch is ON');
//                        }
//                        else {
//                          setState(() {
//                            regno = '2017/242564';
//                            isSwitched = false;
//                          });
//                          print('Switch is OFF');
//
//                        }
//                      },
//                      activeTrackColor: Colors.blueAccent,
//                      activeColor: Colors.black26,
//                    ),
