import 'package:books/materials/widgets/books_details_Widgets/app_bar_book_details.dart';
import 'package:books/materials/widgets/books_details_Widgets/book_details.dart';
import 'package:books/materials/widgets/books_details_Widgets/buy_buttons.dart';
import 'package:books/materials/widgets/books_details_Widgets/horizontal_list_view.dart';
import 'package:books/materials/widgets/divider_h_w.dart';
import 'package:flutter/material.dart';
import 'package:books/materials/widgets/books_details_Widgets/book_cover.dart';
class BookDetails extends StatelessWidget {
  var book;
  var index;
  BookDetails(this.book , this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    String language = book[index].volumeInfo!.language ?? '' ;
    String previewLink = book[index].volumeInfo!.previewLink ?? '' ;
    String description = book[index].volumeInfo!.description ?? '' ;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customAppBarBookDetails(context , description),
          bookCover(context , book[index]),
          dividerHW(height: 35, width: 0),
          bookDetails(book[index]),
          dividerHW(height: 35, width: 0),
          rowOfBuyButtons(context: context, language: language , myUrl: previewLink),
          dividerHW(height: 20, width: 0),
          const Padding(
            padding: EdgeInsets.only(left: 24.0),
            child: Text('You can also like' , style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.w600)),
          ),
          horizontalListView(context , book),

        ],
      ),
    );
  }
}
