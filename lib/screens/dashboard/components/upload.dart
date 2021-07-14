import 'package:desktopapp/models/RecentFile.dart';
import 'package:desktopapp/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import '../../../constants.dart';

class UploadFiles extends StatelessWidget {
  const UploadFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              margin: EdgeInsets.only(left: 30, top: 10, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Choose folders"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Select your folder to sync with the cloud folder",
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Responsive.isMobile(context)
                      ? Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(15),
                              child: Center(
                                  child: Text(
                                "Select Remote Director",
                              )),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.file_copy),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      child: Text("Office Work"),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 20),
                                  child: Text(
                                    "Copy with",
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(15),
                              child:
                                  Center(child: Text("Select Local Director")),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Icon(Icons.file_copy),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      child: Text("Office Work"),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 20),
                                  child: Text(
                                    "Copy with",
                                  ),
                                )
                              ],
                            ),
                          ],
                        )
                      : Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(15),
                                child: Center(
                                    child: Text(
                                  "Select Remote Director",
                                )),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(20)),
                                padding: EdgeInsets.all(15),
                                child: Center(
                                    child: Text("Select Local Director")),
                              ),
                            ),
                          ],
                        ),
                  SizedBox(
                    height: 10,
                  ),
                  Responsive.isMobile(context)
                      ? Container()
                      : Container(
                          margin: EdgeInsets.only(left: 10, right: 20),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          child: Icon(Icons.file_copy),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Text("Office Work"),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 10, right: 20),
                                      child: Text(
                                        "Copy with",
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 20,
                                          ),
                                          child: Icon(Icons.file_copy),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          child: Text("Office Work"),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      child: Text("Copy with"),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                          "1 folder and 487 files are selested. totla 1.5Gb"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text("Start Synchronization")),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
