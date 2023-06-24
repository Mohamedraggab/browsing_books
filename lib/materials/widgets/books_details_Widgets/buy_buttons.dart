import 'package:flutter/material.dart';
import 'package:enhanced_url_launcher/enhanced_url_launcher.dart';

Widget rowOfBuyButtons({required context ,required String language , required String myUrl})
{
  final Uri url = Uri.parse(myUrl);
  return ButtonBar(
    alignment: MainAxisAlignment.center,
    buttonHeight: 50,
    buttonPadding: const EdgeInsets.all(0),
    children: [
    Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25) ,bottomLeft: Radius.circular(25)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.35,
        color: Colors.white,
          child: Center(child: Text(language ,style: const TextStyle(fontWeight: FontWeight.w700 ,fontSize: 18 , color: Colors.black),))),
    ),
    Container(
      decoration:const BoxDecoration(
        borderRadius: BorderRadius.only(topRight: Radius.circular(25) ,bottomRight: Radius.circular(25)),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
          minWidth: MediaQuery.of(context).size.width * 0.35,
          color: Colors.red,
          onPressed: ()
          async {
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          }

          },
          child: const Text('Preview' ,style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 16),)),
    ),
  ],);
}



