import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:searching_block/bloc/search_bloc.dart';
import 'package:searching_block/widgets/search_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: searchAppBar(context),
            body: BlocBuilder<SearchBloc, SearchState>(
              builder: (context, state) {
                final List = context.read<SearchBloc>().state.data;
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Text(
                        "No data foun",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                      itemCount: List.length,
                      itemBuilder: ((context, index) {
                        final name = List[index];
                        return  ListTile(
                          title: Text(name,style: const TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
                          
                        );
                      }),
                    )),
                  ],
                );
              },
            )));
  }
}
