part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {
  SearchEvent();
}

class SearchingEvent extends SearchEvent {
  final List<String> data;
  SearchingEvent(this.data);
}
