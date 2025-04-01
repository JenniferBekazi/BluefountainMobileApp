part of 'posts_bloc.dart';

@immutable
abstract class PostsState {}

abstract class PostActionState extends PostsState {}

class PostsInitial extends PostsState {}

class PostfetchingLoadingState extends PostsState {}

class PostfetchingErrorState extends PostsState {}

class PostFetchingSuccessfulState extends PostsState {
  final List<DoctorsModel> posts;

  PostFetchingSuccessfulState({required this.posts});
}