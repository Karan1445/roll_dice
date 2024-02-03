import 'dart:math';
import 'package:flutter/material.dart';

class Roll extends StatefulWidget{
   const Roll({super.key});

  @override
  State<Roll> createState() => _RollState();
}

class _RollState extends State<Roll> {
     List images=[
       "assets/img/dice-png-27648.png",
       "assets/img/dice-png-27649.png ",
       "assets/img/dice-png-27658.png",
       "assets/img/dice-png-27664.png",
       "assets/img/dice-png-27671.png",
       "assets/img/dice-png-27672.png"

     ];
      String dice1="assets/img/dice-png-27648.png";
      String dice2="assets/img/dice-png-27648.png";


  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(title: const Text("Roll the Dice",maxLines: 1,style:TextStyle(fontFamily: "cairo"))
        ,backgroundColor: Colors.purpleAccent.shade100),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
        children: [
              Row(mainAxisAlignment: MainAxisAlignment.center,mainAxisSize: MainAxisSize.max,
                children: [
                  Container(margin: const EdgeInsets.all(10),
                      child:
                      Image.asset(dice1,width: 150,)),

                  Container(margin: const EdgeInsets.all(10),
                      child:
                      Image.asset(dice2,width: 150,)),

                ],
              ),
              FloatingActionButton(onPressed: () {
                 setState(() {

                  dice1=images[Random().nextInt(6)];
                  dice2=images[Random().nextInt(6)];
                });
              },
                focusColor: Colors.cyan,
                isExtended: true,
                child: const Text("Roll",style: TextStyle(fontFamily: "cairo",fontSize: 25),),),
        ],
      ),
    );
  }
}