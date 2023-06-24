import 'package:flutter/material.dart';

Widget bookDetails(var book)
{
  String bookTitle = book.volumeInfo!.title ?? '';
  String bookAuthor = book.volumeInfo!.authors!.first;
  int? bookPageNumber = book.volumeInfo!.pageCount;
  return Column(
    children:  [
      Text(bookTitle ,style:const TextStyle(fontWeight: FontWeight.w700,
        fontSize: 24,)),
      const SizedBox(height: 10,),
      Text(bookAuthor, style:const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 20
      )),
      const SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.star,color: Colors.yellow,),
          const Text('4.8 ', style:TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 20
          )),
           Text('($bookPageNumber)', style:const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 16,
             color: Colors.grey,
          )),
        ],
      ),
    ],
  );
}