import 'package:flutter/widgets.dart';

class PSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    Paint paint_0 = new Paint()
      ..color = Color.fromARGB(255, 62, 172, 46)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.1250000,size.height*0.3333333);
    path_0.quadraticBezierTo(size.width*0.6070250,size.height*0.3393667,size.width*0.7525000,size.height*0.3366667);
    path_0.quadraticBezierTo(size.width*0.9196000,size.height*0.5128333,size.width*0.7523750,size.height*0.6671333);
    path_0.quadraticBezierTo(size.width*0.5929500,size.height*0.6650333,size.width*0.1250000,size.height*0.6700000);
    path_0.quadraticBezierTo(size.width*-0.0529500,size.height*0.5236000,size.width*0.1250000,size.height*0.3333333);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


    Paint paint_1 = new Paint()
      ..color = Color.fromARGB(255, 50, 243, 33)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;


    Path path_1 = Path();
    path_1.moveTo(size.width*0.6252000,size.height*0.6648000);
    path_1.lineTo(size.width*0.7475000,size.height*0.6651000);
    path_1.quadraticBezierTo(size.width*0.7753500,size.height*0.8462000,size.width*0.7523000,size.height*0.8306000);
    path_1.quadraticBezierTo(size.width*0.6762500,size.height*0.7584667,size.width*0.6252000,size.height*0.6648000);
    path_1.close();

    canvas.drawPath(path_1, paint_1);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
