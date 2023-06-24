import 'package:books/data/cubit/state.dart';
import 'package:books/data/models/book_model.dart';
import 'package:books/data/dio_helper/dio_helper.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppState>
{
  AppCubit() : super(InitState());

  static AppCubit get(context)=> BlocProvider.of(context);


  List<BookModel> books = [];

  getBookDetails()
  {
    emit(GetBookDetailsState());
    DioHelper.getData(
        path: 'https://www.googleapis.com/books/v1/volumes?q=programming',
    )
        .then((value){
          print("the Data is ${value.data['items']}");
          for(var element in value.data['items'])
          {
            books.add(BookModel.fromJson(element));
          }
          for(var element in books)
          {
            print('element is ${element.volumeInfo!.title}');
          }
          emit(GetBookDetailsSuccessState());
    })
        .catchError((error){
          print("the Error ${error.toString()}");
          emit(GetBookDetailsErrorState());

    });
  }




}