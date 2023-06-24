import 'package:books/materials/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customAppBarBookDetails(context , description)
{
  return Padding(
    padding: const EdgeInsets.only(
        top: 40 , bottom: 30 , left: 24 ,right:  24
    ),
    child: Row(
      children: [
        IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>const HomeScreen(),));
        }, icon:const Icon(Icons.cancel_sharp)),
        const Spacer(),
        IconButton(onPressed: () {
          showDialog(context: context,
            builder:(context) => Scaffold(
              appBar: AppBar(
                backgroundColor: const Color(0Xff100B20),
              ),
              body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: Text(description ,
                        style: GoogleFonts.aboreto(fontWeight: FontWeight.w600 ,fontSize: 18 ,height: 2),
                    ),
          ),
                ),
              ),
            ), );
        }, icon:const Icon(Icons.question_mark_outlined)),
      ],
    ),
  );
}