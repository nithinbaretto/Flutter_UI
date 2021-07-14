import 'package:desktopapp/screens/dashboard/components/UploadSpeed.dart';
import 'package:desktopapp/screens/dashboard/components/download%20speed.dart';
import 'package:desktopapp/screens/dashboard/components/my_fields.dart';
import 'package:desktopapp/screens/dashboard/components/upload.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../responsive.dart';
import 'components/header.dart';

import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(18),
        child: Column(
          children: [
            SizedBox(height: 30),
            Header(),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      UploadFiles(),
                      SizedBox(height: defaultPadding),
                      RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        Column(
                          children: [
                            UploadSpeed(),
                            SizedBox(
                              height: 20,
                            ),
                            DownloadSpeed(),
                            SizedBox(
                              height: 20,
                            ),
                            StarageDetails()
                          ],
                        ),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(width: defaultPadding),
                // On Mobile means if the screen is less than 850 we dont want to show it
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        UploadSpeed(),
                        SizedBox(
                          height: 20,
                        ),
                        DownloadSpeed(),
                        SizedBox(
                          height: 20,
                        ),
                        StarageDetails()
                      ],
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
