import 'package:desktopapp/responsive.dart';
import 'package:flutter/material.dart';

class SignupDetails extends StatelessWidget {
  const SignupDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                  child: Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 40, top: 30),
                child: Text(
                  "English USA",
                  style: TextStyle(color: Colors.black),
                ),
              )),
              Expanded(
                  flex: 7,
                  child: Container(
                    padding: Responsive.isDesktop(context)
                        ? EdgeInsets.symmetric(horizontal: 160)
                        : EdgeInsets.symmetric(horizontal: 100),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Connect With Leviia",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Container(
                              child: Text(
                                "Dont have an account?",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Container(
                              child: Text(
                                " Sign Up",
                                style: TextStyle(
                                    color: Color(0xff00BC73),
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          width: 500,
                          child: Center(
                              child: TextField(
                            decoration: new InputDecoration(
                                // focusColor: Color(0xff00BC73),
                                labelText: "Username",
                                labelStyle: TextStyle(color: Color(0xff00BC73)),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xff00BC73),
                                  ),
                                  gapPadding: 0,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  borderSide:
                                      BorderSide(color: Color(0xff00BC73)),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                fillColor: Colors.white70),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          width: 500,
                          child: Center(
                              child: TextField(
                            decoration: new InputDecoration(
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Colors.grey,
                                ),
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.grey),
                                focusedBorder: new OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  borderSide:
                                      BorderSide(color: Color(0xff00BC73)),
                                ),
                                border: new OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                fillColor: Colors.grey[100]),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          decoration: BoxDecoration(),
                          width: 500,
                          child: Center(
                              child: TextField(
                            decoration: new InputDecoration(
                                labelText: "Host name",
                                labelStyle: TextStyle(color: Colors.grey),
                                border: new OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(20.0),
                                  ),
                                ),
                                focusedBorder: new OutlineInputBorder(
                                  gapPadding: 0,
                                  borderRadius: new BorderRadius.circular(20.0),
                                  borderSide:
                                      BorderSide(color: Color(0xff00BC73)),
                                ),
                                filled: true,
                                hintStyle:
                                    new TextStyle(color: Colors.grey[800]),
                                fillColor: Colors.grey[100]),
                          )),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.of(context)
                            //     .push(MaterialPageRoute(builder: (context) {
                            //   return HomePage();
                            // }));
                          },
                          child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Color(0xff00BC73),
                                  borderRadius: BorderRadius.circular(15)),
                              width: 500,
                              child: Center(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Test Connection",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    child: Image.asset(
                                        "assets/images/spinner.gif"),
                                  )
                                ],
                              ))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            SizedBox(),
                            Container(
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.symmetric(
                                    horizontal: 120, vertical: 0),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 188, 115, .5),
                                    borderRadius: BorderRadius.circular(15)),
                                width: 250,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.done,
                                        size: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Connected Successfully",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
