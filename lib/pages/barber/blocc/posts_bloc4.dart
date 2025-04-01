import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

import 'package:bluefountain_superapp_frontend_mobile_flutter/pages/barber/viewbarber_model.dart';

part 'posts_event4.dart';
part 'posts_state4.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsInitialFetchEvent>(postsInitialFetchEvent);
  }

  FutureOr<void> postsInitialFetchEvent(
      PostsInitialFetchEvent event, Emitter<PostsState> emit) async {
    emit(PostfetchingLoadingState());
    var client = http.Client();
    List<BarbersModel> posts = [];
    try {

      var response = await client.get(Uri.parse(
          "http://52.191.238.178:3032/api/get-all"));
      List result = jsonDecode(response.body);
      print(response.body);
      for (int i = 0; i < result.length; i++) {
        BarbersModel post =
        BarbersModel.fromMap(result[i] as Map<String, dynamic>);
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