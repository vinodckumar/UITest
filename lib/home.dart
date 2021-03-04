import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/bubble.dart';
import 'package:ui_test/customMessages.dart';
import 'package:ui_test/model_data.dart';
import 'package:ui_test/profile_image.dart';
import 'package:ui_test/status_bubble.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget getAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      automaticallyImplyLeading: true,
      centerTitle: true,
      leadingWidth: 100,
      brightness: Brightness.light,
      title: Text(
        CustomMessages.title,
        style: TextStyle(fontSize: 14, color: Colors.red),
      ),
      leading: Icon(
        Icons.arrow_back_ios,
        color: Colors.red,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.messenger_outline,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.share_outlined,
              color: Colors.red,
            ),
            SizedBox(
              width: 10,
            )
          ],
        ),
      ],
    );
  }

  Widget getStatusWidget() {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 160,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Colors.lightGreenAccent.shade100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    height: 4,
                    width: 50,
                    color: Colors.lightGreenAccent.shade400,
                  ),
                  Container(
                    height: 8,
                    width: 5,
                    color: Colors.lightGreenAccent.shade400,
                  ),
                  Container(
                    height: 4,
                    width: 200,
                    color: Colors.lightGreenAccent.shade400,
                  ),
                  Container(
                    height: 8,
                    width: 5,
                    color: Colors.lightGreenAccent.shade400,
                  ),
                  Container(
                    height: 4,
                    width: 80,
                    color: Colors.lightGreenAccent.shade400,
                  ),
                ],
              ),
              Text(
                'Hurray u did it!!!.',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              SizedBox(
                height: 10,
              ),
              ConstrainedBox(
                constraints: const BoxConstraints(
                    minWidth: 350, maxHeight: 50, minHeight: 32),
                child: RaisedButton(
                    color: Colors.lightGreenAccent.shade400,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upload current task',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.cloud_upload,
                          color: Colors.white,
                        )
                      ],
                    ),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          width: 1.0, color: Colors.lightGreenAccent.shade400),
                      borderRadius: BorderRadius.circular(12.0),
                    )),
              ),
            ],
          ),
        ),
        Positioned(
            left: 280,
            top: 0,
            child: Stack(
              children: [
                CustomPaint(
                  size: Size(100,
                      60), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: PSCustomPainter(),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12, top: 22),
                  child: Text(
                    'COMPLETED',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                )
              ],
            )),
      ],
    );
  }

  Widget getProfileWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
          color: Colors.pinkAccent.shade100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: [
              ProfileImage(
                url: 'https://picsum.photos/id/237/200/300',
                radius: 120,
                displayBorder: true,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    categories[0].name,
                    style: TextStyle(
                        color: Colors.pinkAccent.shade400, fontSize: 24),
                  ),
                  Text(
                    categories[0].specialization,
                    style: TextStyle(color: Colors.black),
                  ),
                  ConstrainedBox(
                    constraints: const BoxConstraints(
                        minWidth: 200, maxHeight: 50, minHeight: 28),
                    child: RaisedButton(
                        color: Colors.pinkAccent.shade400,
                        child: Text(
                          'Follow',
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                              width: 1.0, color: Colors.pinkAccent.shade400),
                          borderRadius: BorderRadius.circular(10.0),
                        )),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget sessionCard() {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Container(
          padding: EdgeInsets.all(20),
          height: 240,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(
              image: AssetImage('assets/images/ux_design.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'how to learn cycling',
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Text(
                'by expert',
                style: TextStyle(color: Colors.black, fontSize: 14),
              ),
            ],
          ),
        ),
        Positioned(
          top: 150,
          left: 0,
          right: 0,
          child: Stack(
            children: [
              CustomPaint(
                size: Size(400,
                    40), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Text(
                  'Confirmed',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Positioned(
                left: 200,
                child: Container(
                  margin: EdgeInsets.all(8.0),
                  child: Text(
                    'Reg no..${categories[0].reg}',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget body() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          sessionCard(),
          getProfileWidget(),
          SizedBox(
            height: 20,
          ),
          getStatusWidget()
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: body(),
    );
  }
}
