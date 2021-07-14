import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.sync,
                  color: Color(0xff00BC73),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Synchronization",
                  style: TextStyle(color: Color(0xff00BC73)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.upload,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Upload",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                child:
                    Text("Notification", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 30),
                child: Icon(
                  Icons.settings,
                  color: Colors.grey,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text("Setting", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
