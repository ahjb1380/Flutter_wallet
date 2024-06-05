

import 'package:flutter/material.dart';
import 'package:iwallet/module/widget.dart';

extension ContextExtention on BuildContext{
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  void pushPage(Widget namepage)=> Navigator.push(this,MaterialPageRoute(builder: (_)=>namepage));

}
extension TextExtention on String{
  Widget  toText({Color? color,double? size,String? family,bool isBold=false}) =>CreatText(title: this,color: color,size: size,family: family,isBold: isBold,);
}
extension PadiinandMargingExtention on Widget{
  Widget  get hMarg6 =>Container(child: this,margin: EdgeInsets.symmetric(horizontal: 6),);
  Widget  get hMarg9 =>Container(child: this,margin: EdgeInsets.symmetric(horizontal: 9),);
  Widget get vMarg3 =>Container(child: this,margin: EdgeInsets.symmetric(vertical: 3),);
  Widget get hMarg3 =>Container(child: this,margin: EdgeInsets.symmetric(horizontal: 3),);
  Widget get vMarg6 =>Container(child: this,margin: EdgeInsets.symmetric(vertical: 6),);
  Widget get vMarg9 =>Container(child: this,margin: EdgeInsets.symmetric(vertical: 9),);
  Widget get allMarg3 =>Container(child: this,margin: EdgeInsets.all(3),);
  Widget get allMarg6 =>Container(child: this,margin: EdgeInsets.all(6),);
  Widget get allMarg9 =>Container(child: this,margin: EdgeInsets.all(9),);


  Widget get hPadd3=>Container(padding: EdgeInsets.symmetric(horizontal: 3),child: this,);
  Widget get hPadd6=>Container(padding: EdgeInsets.symmetric(horizontal: 6),child: this);
  Widget get hPadd9=>Container(padding: EdgeInsets.symmetric(horizontal: 9),child: this);
  Widget get vPadd3=>Container(padding: EdgeInsets.symmetric(vertical: 3),child: this);
  Widget get vPadd6=>Container(padding: EdgeInsets.symmetric(vertical: 6),child: this);
  Widget get vPadd9=>Container(padding: EdgeInsets.symmetric(vertical: 9),child: this);
  Widget get allPadd3=>Container(padding: EdgeInsets.all(3),child: this);
  Widget get allPadd6=>Container(padding: EdgeInsets.all(6),child: this);
  Widget get allPadd9=>Container(padding: EdgeInsets.all(9),child: this);


  Widget get expan=>Expanded(child: this);
  Widget get center=>Center(child: this);
  Widget get card=>Card(child: this);


}
