part of 'page_bloc.dart';

abstract class PageState extends Equatable {
  const PageState();
}

class OnInitialPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  @override
  List<Object> get props => [];
}

class OnRegristasionPage extends PageState {
  @override
  final RegristasionData regristasionData;
  OnRegristasionPage(this.regristasionData);
  List<Object> get props => [];
}

class OnPreferencePage extends PageState {
  @override
  final RegristasionData regristasionData;
  OnPreferencePage(this.regristasionData);
  List<Object> get props => [];
}

class OnAccountConfirmasionPage extends PageState {
  @override
  final RegristasionData regristasionData;
  OnAccountConfirmasionPage(this.regristasionData);
  List<Object> get props => [];
}
