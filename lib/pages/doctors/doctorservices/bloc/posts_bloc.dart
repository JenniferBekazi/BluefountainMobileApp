import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import '../doctor_model.dart';

part 'posts_event.dart';
part 'posts_state.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsInitialFetchEvent>(postsInitialFetchEvent);
  }

  FutureOr<void> postsInitialFetchEvent(
      PostsInitialFetchEvent event, Emitter<PostsState> emit) async {
    emit(PostfetchingLoadingState());
    var client = http.Client();
    List<DoctorsModel> posts = [];
    try {

      var response = await client.get(Uri.parse(
          "http://20.164.214.226:3060/mongo/doctor"));
      List result = jsonDecode(response.body);
      print(response.body);
      for (int i = 0; i < result.length; i++) {
        DoctorsModel post =
        DoctorsModel.fromMap(result[i] as Map<String, dynamic>);
        posts.add(post);
      }
      print(posts);
      emit(PostFetchingSuccessfulState(posts: posts));
    } catch (e) {
      emit(PostfetchingErrorState());
      log(e.toString());
    }
  }
}