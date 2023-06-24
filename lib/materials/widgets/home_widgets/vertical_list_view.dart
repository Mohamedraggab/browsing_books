import 'package:books/data/cubit/cubit.dart';
import 'package:books/materials/screen/book_details_screen.dart';
import 'package:flutter/material.dart';

Widget verticalListView(context)
{
  var cubit = AppCubit.get(context);
  return Expanded(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.infinity,
        child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 24,),
          itemBuilder: (context, index) {
            var books = cubit.books;
            String bookImage = cubit.books[index].volumeInfo!.imageLinks!.thumbnail ?? '';
            String bookTitle = cubit.books[index].volumeInfo!.title ?? '';
            String bookAuthor = cubit.books[index].volumeInfo!.authors!.first;
            int? bookPageNumber = cubit.books[index].volumeInfo!.pageCount;
            return  GestureDetector(
            onTap: () {
              Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetails(books , index),) );
            },
            child: Row(
              children: [
                Container(
                  height: 120,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(bookImage),
                          fit: BoxFit.fill),
                  ),
                ),
                const SizedBox(width: 35,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only( right: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text(
                           bookTitle,
                           style:const TextStyle(
                             fontWeight: FontWeight.w700,
                             fontSize: 24,
                             overflow: TextOverflow.ellipsis,
                           ),
                           maxLines: 3,
                         ),
                        Text(bookAuthor, style:const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20
                        )),
                        Row(
                          children: [
                            const Text('19.5\$'),
                            const Spacer(),
                            Row(
                              children: [
                                const Icon(Icons.star ,color: Colors.yellow),
                                const Text('4.8'),
                                Text('($bookPageNumber)',style: const TextStyle(color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
},
          itemCount: cubit.books.length,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    ),
  );
}
