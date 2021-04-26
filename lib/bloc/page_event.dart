part of 'page_bloc.dart';

abstract class PageEvent extends Equatable {
  const PageEvent();
}

class GoToSplashPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  @override
  List<Object> get props => [];
}

class GoToRegristasionPage extends PageEvent {
  final RegristasionData regristasionData;
  GoToRegristasionPage(this.regristasionData);
  @override
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegristasionData regristasionData;
  GoToPreferencePage(this.regristasionData);
  @override
  List<Object> get props => [];
}

class GoToAccountConfirmasionPage extends PageEvent {
  final RegristasionData regristasionData;
  GoToAccountConfirmasionPage(this.regristasionData);
  @override
  List<Object> get props => [];
}
