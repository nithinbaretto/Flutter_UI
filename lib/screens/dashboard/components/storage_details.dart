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
          color: secondaryColor,
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
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 20, top: 0),
                        child: Text(
                          "100",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 10), child: Text("GB"))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Used: "),
                        ),
                        Container(
                          child: Text("56.2GB"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: [
                        Container(
                          child: Text("Free: "),
                        ),
                        Container(
                          child: Text("56.2GB"),
                        ),
                      ],
                    ),
                  )
                ],
              )),
              SizedBox(
                width: 60,
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, bottom: 40),
                  child: CircularPercentIndicator(
                    radius: 150.0,
                    lineWidth: 15.0,
                    animation: true,
                    percent: 0.7,
                    center: new Text(
                      "70.0%",
                      style: new TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                  ))
            ],
          ),
        ]));
  }
}
