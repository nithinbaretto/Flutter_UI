import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class UploadSpeed extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff00BC73),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Color(0xff00BC73)),
                  child: Center(
                      child: Container(
                          height: 20,
                          width: 20,
                          child: Image.asset(
                            "assets/images/cloud-upload-1.png",
                            fit: BoxFit.cover,
                          ))),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Upload Speed",
                      style: TextStyle(color: Colors.grey),
                    ),
                    Text(
                      "5.2Mbps",
                      style: TextStyle(fontSize: 20, color: Color(0xff00BC73)),
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 100,
            child: LineChart(LineChartData(
              gridData: FlGridData(
                show: false,
                drawVerticalLine: false,
                getDrawingHorizontalLine: (value) {
                  return FlLine(
                    color: Color(0xff00BC73),
                    strokeWidth: 1,
                  );
                },
                getDrawingVerticalLine: (value) {
                  return FlLine(
                    color: Color(0xff00BC73),
                    strokeWidth: 1,
                  );
                },
              ),
              titlesData: FlTitlesData(
                show: false,
                bottomTitles: SideTitles(
                  showTitles: false,
                  reservedSize: 22,
                  getTextStyles: (value) => const TextStyle(
                      color: Color(0xff00BC73),
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                  margin: 8,
                ),
              ),
              borderData: FlBorderData(
                  show: false,
                  border: Border.all(color: Color(0xff00BC73), width: 1)),
              minX: 0,
              maxX: 11,
              minY: 0,
              maxY: 6,
              lineBarsData: [
                LineChartBarData(
                  spots: [
                    FlSpot(0, 1),
                    FlSpot(1, 1),
                    FlSpot(1, 2),
                    FlSpot(1, 6),
                    FlSpot(1.8, 2),
                    FlSpot(2.6, 2),
                    FlSpot(4.9, 5),
                    FlSpot(6.8, 3.1),
                    FlSpot(8, 4),
                    FlSpot(9.5, 3),
                    FlSpot(11, 4),
                  ],
                  isCurved: true,
                  colors: gradientColors,
                  barWidth: 5,
                  isStrokeCapRound: true,
                  dotData: FlDotData(
                    show: false,
                  ),
                  belowBarData: BarAreaData(
                    gradientColorStops: [0.5, 1.0],
                    gradientFrom: const Offset(0, 0),
                    gradientTo: const Offset(0, 1),
                    show: true,
                    colors: [
                      Color(0xff00BC73).withOpacity(0.2),
                      Color(0xff00BC73).withOpacity(0.0)
                    ],
                  ),
                ),
              ],
            )),
          ),
        ]));
  }
}
