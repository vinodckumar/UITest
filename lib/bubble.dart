import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 112, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.0016667,size.height*0.0133333);
    path_0.lineTo(size.width*0.3833333,size.height*0.0133333);
    path_0.lineTo(size.width*0.2983333,size.height*0.4400000);
    path_0.lineTo(size.width*0.3716667,size.height*0.9800000);
    path_0.lineTo(size.width*0.0033333,size.height*0.9866667);
    path_0.lineTo(size.width*0.0016667,size.height*0.0133333);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(92, 63, 78, 54)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_1 = Path();
    path_1.moveTo(0,size.height*0.0133333);
    path_1.lineTo(size.width*0.9966667,size.height*0.0066667);
    path_1.lineTo(size.width*0.9983333,size.height*0.9933333);
    path_1.lineTo(size.width*0.0029667,size.height*0.9984667);

    canvas.drawPath(path_1, paint_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
