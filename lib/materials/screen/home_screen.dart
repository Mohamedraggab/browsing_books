import 'package:books/data/cubit/cubit.dart';
import 'package:books/data/cubit/state.dart';
import 'package:books/materials/widgets/home_widgets/home_app_bar_widget.dart';
import 'package:books/materials/widgets/home_widgets/home_list_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:books/materials/widgets/home_widgets/text_of_best_seller.dart';
import 'package:books/materials/widgets/home_widgets/vertical_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit()..getBookDetails(),
      child: BlocConsumer<AppCubit, AppState>(
        listener: (context, state) {
          },
        builder: (context, state) {
          return Scaffold(
              body: ConditionalBuilder(
                  condition: AppCubit.get(context).books.isNotEmpty,
                builder: (context) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children:  [
                      customAppBar(context),
                      customListView(context: context),
                      bestSeller(),
                      verticalListView(context),
                    ],
                  );
                },
                fallback: (context) => const Center(child: CircularProgressIndicator()),
              ),
            );
          },
      ),
    );
  }
}

