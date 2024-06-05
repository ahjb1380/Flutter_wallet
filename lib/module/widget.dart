import 'package:flutter/material.dart';

class CreatButton extends StatelessWidget {
  final String title;
  final Icon? icon;
  final Color? color;
  final VoidCallback ontap;
  final EdgeInsets? padding;
  final Color? textColor;
  const CreatButton({required this.title, this.icon, this.color, this.padding, this.textColor, required this.ontap, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.ontap,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  //side: BorderSide(color: Colors.red)
              )
          ),
        backgroundColor: MaterialStateProperty.all(color),
        padding: MaterialStateProperty.all(padding),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40)
        ),
        child: icon == null
            ? CreatText(title:title)
            : Row(
                 mainAxisSize: MainAxisSize.min,
                children: [
                  this.icon!,
                  SizedBox(
                    width: 5,
                  ),
                 CreatText(title: title,color: textColor,),

                ],
              ),
      ),
    );
  }
}
class textFilde extends StatelessWidget {
  final String input;
  final Icon? outIcon;
  final Icon? inIcon;
  final Function(String)? onchange;
  final bool password;
  final bool auotFocus;
  final TextEditingController? controller;


  const textFilde({required this.input,this.outIcon,this.inIcon,this.password=false,this.onchange,this.auotFocus=false,this.controller,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onchange,
      obscureText: password,
      style: TextStyle(color: Colors.black87),
      decoration: InputDecoration(
        prefixIcon: inIcon,
        icon: outIcon,
        hintText: input,
        hintStyle: TextStyle(color: Colors.redAccent),

        labelText: input,
        labelStyle: TextStyle(color: Colors.grey),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          gapPadding: 8,
          ),
      ),
    );
  }
}
class CreatText extends StatelessWidget {
  final String title;
  final String? family;
  final bool? isBold;
  final double? size;
  final Color? color ;
  const CreatText({required this.title,this.family,this.color,this.isBold=false,this.size,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(title,style: TextStyle(color: color,fontSize:size,fontWeight: isBold!? FontWeight.bold:FontWeight.normal,fontFamily: family),);
  }
}



