import 'package:data_table_2/data_table_2.dart';
import 'package:desktopapp/models/RecentFile.dart';
import 'package:desktopapp/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: !Responsive.isMobile(context)
          ? EdgeInsets.all(defaultPadding)
          : EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Container(
              margin: !Responsive.isMobile(context)
                  ? EdgeInsets.only(left: 30, top: 10, right: 30)
                  : EdgeInsets.only(left: 10, top: 10, right: 10),
              child: !Responsive.isMobile(context)
                  ? Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(left: 10, top: 20, right: 10),
                          padding: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "File",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("Size",
                                  style: TextStyle(color: Colors.grey)),
                              Text("Status",
                                  style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Text("Logo_New.ai")
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 45),
                                child: Text("9.4Mb"),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.done),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text("Done"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12),
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Text("Document32.pdf")
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 70),
                                child: Text("9.4Mb"),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.done),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text("Done"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 10, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Text("Logo_New.ai")
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text("9.5Mb"),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: LinearPercentIndicator(
                                      alignment: MainAxisAlignment.end,
                                      padding: EdgeInsets.all(0),
                                      width: 100,
                                      lineHeight: 8.0,
                                      percent: 0.2,
                                      progressColor: Colors.red,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 20, top: 10, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12),
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Text("Document32.pdf")
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 40),
                                child: Text("9.4Mb"),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: LinearPercentIndicator(
                                      alignment: MainAxisAlignment.end,
                                      padding: EdgeInsets.all(0),
                                      width: 100,
                                      lineHeight: 8.0,
                                      percent: 0.2,
                                      progressColor: Colors.red,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.only(
                            left: 0,
                            top: 20,
                            right: 0,
                          ),
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "File",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("Size",
                                  style: TextStyle(color: Colors.grey)),
                              Container(
                                padding: EdgeInsets.only(),
                                child: Text("Status",
                                    style: TextStyle(color: Colors.grey)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 20, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Text(
                                      "Logo_New.ai",
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Text(
                                  "9.4Mb",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.done),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Done",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 10, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12),
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Text(
                                      "Document32.pdf",
                                      style: TextStyle(fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 0),
                                child: Text(
                                  "9.4Mb",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.done),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    child: Text(
                                      "Done",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 10, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Container(
                                    width: 60,
                                    child: Text(
                                      "Logo_New.ai",
                                      style: TextStyle(fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text(
                                  "9.5Mb",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    child: LinearPercentIndicator(
                                      alignment: MainAxisAlignment.end,
                                      padding: EdgeInsets.all(0),
                                      width: 50,
                                      lineHeight: 8.0,
                                      percent: 0.2,
                                      progressColor: Colors.red,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(
                              left: 10, top: 10, right: 20, bottom: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black12),
                          margin: EdgeInsets.only(left: 10, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    child: Icon(Icons.file_copy),
                                  ),
                                  Container(
                                    width: 80,
                                    child: Text(
                                      "Document32.pdf",
                                      style: TextStyle(fontSize: 12),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 40, top: 5),
                                child: Text(
                                  "9.4Mb",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(top: 10),
                                    child: LinearPercentIndicator(
                                      alignment: MainAxisAlignment.end,
                                      padding: EdgeInsets.all(0),
                                      width: 50,
                                      lineHeight: 8.0,
                                      percent: 0.2,
                                      progressColor: Colors.red,
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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

DataRow recentFileDataRow(RecentFile fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.size!)),
      DataCell(Text(fileInfo.date!)),
    ],
  );
}
