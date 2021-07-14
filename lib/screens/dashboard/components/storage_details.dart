import 'package:desktopapp/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 0),
                    child: Text(
                      "Storage",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10),
                          child: Text(
                            "GB",
                            style: TextStyle(color: Colors.black),
                          ))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Used: ",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Container(
                          child: Text("56.2GB",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Free: ",
                              style: TextStyle(color: Colors.black)),
                        ),
                        Container(
                          child: Text("56.2GB",
                              style: TextStyle(color: Color(0xff00BC73))),
                        ),
                      ],
                    ),
                  )
                ],
              )),
              SizedBox(
                width: 60,
              ),
              Expanded(
                child: Container(
                    padding: EdgeInsets.only(top: 20, bottom: 40),
                    child: CircularPercentIndicator(
                      progressColor: Color(0xff00BC73).withOpacity(0.6),
                      backgroundColor: Colors.green.withOpacity(0.1),
                      radius: !Responsive.isTablet(context) ? 150.0 : 120,
                      lineWidth: !Responsive.isTablet(context) ? 25.0 : 20,
                      animation: true,
                      percent: 0.7,
                      center: new Text(
                        "70.0%",
                        style: new TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0),
                      ),
                    )),
              )
            ],
          ),
        ]));
  }
}
