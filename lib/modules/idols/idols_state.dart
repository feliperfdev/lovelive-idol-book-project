abstract class IdolState {}

class InitialIdolState extends IdolState {}

class LoadingIdolState extends IdolState {}

class SuccessIdolState extends IdolState {
  final List<dynamic> idols;

  SuccessIdolState(this.idols);
}

class ErrorIdolState extends IdolState {
  final String message;

  ErrorIdolState(this.message);
}
