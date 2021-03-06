import 'dart:async';

import 'package:and_flutix/models/models.dart';
import 'package:and_flutix/services/services.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => UserInitial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      User user = await UserServices.getUser(event.id);

      yield UserLoaded(user);
    } else if (event is SignOut) {
      yield UserInitial();
    }
  }
}
