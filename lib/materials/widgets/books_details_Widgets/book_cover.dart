import 'package:flutter/cupertino.dart';

Widget bookCover(context  , var book)
{
  return Center(
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.33 ,
      width: MediaQuery.of(context).size.width * 0.42,
      child: Container(
        decoration: BoxDecoration(
          borderRadius:const BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                image: NetworkImage(book.volumeInfo!.imageLinks!.thumbnail ?? '') ,
                fit: BoxFit.fill)),
      ),
    ),
  );
}