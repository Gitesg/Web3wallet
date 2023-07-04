import 'package:flutter/material.dart';

 class Transcation extends StatelessWidget {
   const Transcation({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return  Scaffold(

       body:Container(
         height: 400,
           child: TextButton(onPressed: (){
         Navigator.pop(context);
       },child: Text('goback'))
     ));

   }
 }
