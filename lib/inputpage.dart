import 'package:bmi_calc/resultpage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'box.dart';
import 'boxcontent.dart';
import 'bmibrain.dart';

const boxactivecolor = Color.fromARGB(255, 37, 3, 69);
const boxinactivecolor = Color.fromARGB(255, 45, 2, 61);
const labelcolor = TextStyle(
  fontSize: 20.0,
  color: Color.fromARGB(255, 248, 207, 118),
);
int height = 185;
int weight = 65;
int age = 18;

enum Gender {
  male,
  female,
}

class inputpage extends StatefulWidget {
  const inputpage({super.key});
  @override
  State<inputpage> createState() => _inputpageState();
}

class _inputpageState extends State<inputpage> {
  late Gender selectedgender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('BMI calculator')),
          backgroundColor: Color.fromARGB(255, 20, 2, 25),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    child: Box(
                      colour: selectedgender == Gender.male
                          ? boxactivecolor
                          : boxinactivecolor,
                      chotu:
                          boxcontent(icon: FontAwesomeIcons.mars, data: "MALE"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    child: Box(
                      colour: selectedgender == Gender.female
                          ? boxactivecolor
                          : boxinactivecolor,
                      chotu: boxcontent(
                          icon: FontAwesomeIcons.venus, data: "FEMALE"),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: Box(
                  colour: boxinactivecolor,
                  chotu: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: labelcolor,
                        ),
                        
                        SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Text(
                              'cm',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 15.0,
                          max: 250.0,
                          activeColor: Color.fromARGB(255, 189, 5, 67),
                          inactiveColor: Color(0xFF8D8E98),
                          onChanged: (double newvalue) {
                            setState(() {
                              height = newvalue.round();
                            });
                          },
                        )
                      ],
                    ),
                  )),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: Box(
                      colour: boxinactivecolor,
                      chotu: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: labelcolor,
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                weight.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'kg',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              vgbutton(
                                icon: FontAwesomeIcons.minus,
                                vgtap: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              vgbutton(
                                icon: FontAwesomeIcons.plus,
                                vgtap: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
                Expanded(
                  child: Box(
                      colour: boxinactivecolor,
                      chotu: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: labelcolor,
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                age.toString(),
                                style: TextStyle(
                                  fontSize: 50.0,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                'year',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              vgbutton(
                                icon: FontAwesomeIcons.minus,
                                vgtap: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              vgbutton(
                                icon: FontAwesomeIcons.plus,
                                vgtap: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            )),
            GestureDetector(
              onTap: () {

             bmibrain calc = bmibrain(height: height, weight: weight);

                Navigator.push(context, MaterialPageRoute(builder: ((context) =>
                   resultpage(
                    bmiresult: calc.calculator(),
                    reslutnum:  calc.numresult(),
                    reslutdesc: calc.descresult(),
                   )
                )));
  },
              child: Container(
                color: Color.fromARGB(255, 189, 5, 67),
                height: 60.0,
                width: double.infinity,
                margin: EdgeInsets.only(top: 10.0),
                child: Center(
                    child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                )),
              ),
            ),
          ],
        ));
  }
}

class vgbutton extends StatelessWidget {
  vgbutton({required this.icon, required this.vgtap});

  final IconData icon;
  final Function vgtap;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 40.0,
        color: Colors.black,
      ),
      onPressed: (() {
        vgtap();
      }),
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      shape: CircleBorder(),
      fillColor: Color.fromARGB(255, 188, 246, 177),
    );
  }
}
