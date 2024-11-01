part of 'search_bloc.dart';

@immutable
 class SearchState {
  final List<String> data;
  const SearchState({required this.data});
  SearchState copywith({
    List<String>? data,
  }) {
    return SearchState(data: data ?? this.data);
  }
}

final class SearchInitial extends SearchState {
  SearchInitial() : super(data: []);
}
