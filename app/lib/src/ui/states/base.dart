sealed class BaseState {}

class InitialState implements BaseState {}

class LoadingState implements BaseState {}

class SuccessState<R> implements BaseState {
  final R data;

  const SuccessState({required this.data});
}

class ErrorState<T> implements BaseState {
  final T exception;

  const ErrorState({required this.exception});
}
