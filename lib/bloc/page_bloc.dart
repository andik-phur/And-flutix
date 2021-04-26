import 'dart:async';

import 'package:and_flutix/models/models.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'page_event.dart';
part 'page_state.dart';

class PageBloc extends Bloc<PageEvent, PageState> {
  @override
  PageState get initialState => OnInitialPage();

  @override
  Stream<PageState> mapEventToState(
    PageEvent event,
  ) async* {
    if (event is GoToSplashPage) {
      yield OnSplashPage();
    } else if (event is GoToLoginPage) {
      yield OnLoginPage();
    } else if (event is GoToMainPage) {
      yield OnMainPage();
    } else if (event is GoToPreferencePage) {
      yield OnPreferencePage(event.regristasionData);
    } else if (event is GoToAccountConfirmasionPage) {
      yield OnAccountConfirmasionPage(event.regristasionData);
    } else if (event is GoToRegristasionPage) {
      yield OnRegristasionPage(event.regristasionData);
    }
  }
}
