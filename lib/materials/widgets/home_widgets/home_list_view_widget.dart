import 'package:books/data/cubit/cubit.dart';
import 'package:books/materials/screen/book_details_screen.dart';
import 'package:flutter/material.dart';
Widget customListView({required context})
{
  var cubit = AppCubit.get(context);
  String bookImage ;
  return Padding(

    padding: const EdgeInsets.only(left: 24),
    child: SizedBox(
      height: MediaQuery.of(context).size.height * 0.28,
      child: ListView.builder(
        itemBuilder: (context, index) {
          bookImage = cubit.books[index].volumeInfo!.imageLinks!.thumbnail ?? '';
          return GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetails(cubit.books , index),) );
            },
            child: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Container(
              width: 155,
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(bookImage) ,
                      fit: BoxFit.fill)),
            ),
        ),
          );
},
        itemCount: cubit.books.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
      ),
    ),
  );
}