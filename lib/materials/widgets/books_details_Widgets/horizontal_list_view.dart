import 'package:books/materials/screen/book_details_screen.dart';
import 'package:flutter/material.dart';

Widget horizontalListView(context , var books)
{
  String  bookImage ;
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.only(left: 24.0 ,bottom: 24 ,top: 24 ,right: 0),
      child: SizedBox(
        width: double.infinity,
        child: ListView.separated(
          scrollDirection:  Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 24,),
          itemBuilder: (context, index)
          {
            bookImage = books[index].volumeInfo!.imageLinks!.thumbnail ?? '';
            return  GestureDetector(
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetails(books , index),) );
              },
              child: Container(
                width: 115,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(bookImage),
                        fit: BoxFit.fill)),
              ),
            );
          },
          itemCount: books.length,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    ),
  );
}