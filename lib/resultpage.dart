import 'package:flutter/material.dart';
import 'box.dart';

const boxactivecolor = Color.fromARGB(255, 37, 3, 69);
const boxinactivecolor = Color.fromARGB(255, 45, 2, 61);
const rtextstyle = TextStyle(fontSize: 25.0,
fontWeight: FontWeight.bold,
color: Colors.green);
const rnumstyle = TextStyle(
fontWeight: FontWeight.bold,
fontSize: 100.0,
);
const rdescstyle = TextStyle(
  fontSize: 20.0,
);

class resultpage extends StatelessWidget {

resultpage({required this.bmiresult,required this.reslutdesc,required this.reslutnum});

final String bmiresult;
final String reslutnum;
final String reslutdesc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  
title: Padding(
  padding: const EdgeInsets.fromLTRB(60.0, 10.0, 50.0, 10.0),
  child:   Text("BMI calculator"),
),
 backgroundColor: Color.fromARGB(255, 20, 2, 25),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Container(
            child: Center(
              child: Text('REPORT',style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w900,
              ),),
            ),
          )),
          Expanded(flex: 5,child: Box(colour: boxactivecolor, chotu: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                reslutnum.toUpperCase(),
              style: rtextstyle,
              ),
              Text(bmiresult,
              style: rnumstyle,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(textAlign :TextAlign.center,reslutdesc,style: rdescstyle,),
              ),
             
            ],
          )
          ),),

 GestureDetector(
              onTap: () {
                Navigator.pop(context);
  },
              child: Container(
                color: Color.fromARGB(255, 189, 5, 67),
                height: 60.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                child: Center(
                    child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
              ),
            ),

        ],
      ),
    );
  }
}