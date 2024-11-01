import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_block/bloc/search_bloc.dart';
import 'package:searching_block/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
          home: HomeScreen()
            
              
            
          
        ),
    );
  }
}
