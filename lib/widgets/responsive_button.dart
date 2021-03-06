import 'package:flutter/cupertino.dart';
import 'package:tripflutterapp/mics/colors.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive ;
  double? width;
   ResponsiveButton({Key? key,this.width,this.isResponsive=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius:BorderRadius.circular(10),
        color: AppColors.mainColor
      ),
      child: Row(
        children: [
          Expanded(child: Image.asset('images/button-one.png'))
        ],
      ),
    );
  }
}
