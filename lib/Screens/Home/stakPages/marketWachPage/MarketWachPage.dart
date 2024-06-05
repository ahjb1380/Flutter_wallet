import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:iwallet/module/const.dart';
import 'package:iwallet/module/extention.dart';
import 'package:iwallet/module/widget.dart';

class MarketWatchPage extends StatefulWidget {
  const MarketWatchPage({super.key});

  @override
  State<MarketWatchPage> createState() => _MarketWatchPageState();
}

class _MarketWatchPageState extends State<MarketWatchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Column(
        children: [
          Expanded(
            child: Padding(padding: EdgeInsets.all(10),child:  Container(
               decoration: BoxDecoration(
                 color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "200,000,00 ریال",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "-9.23",
                          style: TextStyle(
                              fontSize: 10, color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "دلار",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                          AssetImage("assets/images/image1.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),),
          ),
          Expanded(
            child: Padding(padding: EdgeInsets.all(10),child:  Container(
               decoration: BoxDecoration(
                 color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "200,000,00 ریال",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "-9.23",
                          style: TextStyle(
                              fontSize: 10, color: Colors.red),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "دلار",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                          AssetImage("assets/images/image1.jpg"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),),
          ),
          Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 20),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Column(
                children: [
                  "تغییرات قیمت 24 ساعت".toText(isBold:true),
                  Row(
                    children: [
                      "50000".toText(),
                      "0.36%".toText(color: Colors.green)
                    ],
                  )

                ],
              ),
              Column(
                children: [
                  "بلاترین قیمت 24 ساعت".toText(isBold:true),
                  "50000".toText(),

                ],
              ),
            ],
          ),),
          Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 20),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Column(
                children: [
                  "تغییرات قیمت 24 ساعت".toText(isBold:true),
                  Row(
                    children: [
                      "50000".toText(),
                      "0.36%".toText(color: Colors.green)
                    ],
                  )

                ],
              ),
              Column(
                children: [
                  "بلاترین قیمت 24 ساعت".toText(isBold:true),
                  "50000".toText(),

                ],
              ),
            ],
          ),),
          Padding(padding: EdgeInsets.only(left: 10,right: 10,bottom: 20,top: 20),child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
              Column(
                children: [
                  "تغییرات قیمت 24 ساعت".toText(isBold:true),
                  Row(
                    children: [
                      "50000".toText(),
                      "0.36%".toText(color: Colors.green)
                    ],
                  )

                ],
              ),
              Column(
                children: [
                  "بلاترین قیمت 24 ساعت".toText(isBold:true),
                  "50000".toText(),

                ],
              ),
            ],
          ),),
          Padding(padding: EdgeInsets.only(left: 10,),child:Text("نوسان"),),
          Padding(padding: EdgeInsets.only(left: 10,right: 10),child:Row(children: [ CreatButton(title: "خرید",color:Colors.green ,ontap: (){},),CreatButton(title: "فروش",color:Colors.red ,ontap: (){},)
          ],),),


        ],
      ),
    );
  }
}
