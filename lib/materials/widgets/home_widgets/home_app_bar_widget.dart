import 'package:books/data/cubit/cubit.dart';
import 'package:flutter/material.dart';

Widget customAppBar(context)
{
  return Padding(
    padding: const EdgeInsets.only(
        top: 40 , bottom: 30 , left: 24 ,right:  24
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:const  [
        Text('Books' ,style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 20)),
      ],
    ),
  );
}
