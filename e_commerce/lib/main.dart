import 'package:e_commerce/products/bloc/product_bloc.dart';
import 'package:e_commerce/products/data/repository/product_repository.dart';
import 'package:e_commerce/products/presentation/product_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc API',
      builder: (context, child) {
        
        final mediaQueryData = MediaQuery.of(context);
        return MediaQuery(
          
          data: mediaQueryData.copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
      
      home: RepositoryProvider<ProductRepository>(
          create: (context) => ProductRepository(),
          child: BlocProvider(
            lazy: false,
            create: (BuildContext context) => ProductBloc(
                productRepository: context.read<ProductRepository>()),
            child: const ProductsPage(),
          )),
    );
  }
}
