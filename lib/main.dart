import 'package:books/data/cubit/observer.dart';
import 'package:books/data/dio_helper/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:books/materials/screen/home_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(bodyMedium:TextStyle(fontFamily: GoogleFonts.montserrat().fontFamily)),
          scaffoldBackgroundColor:const Color(0Xff100B20) ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
