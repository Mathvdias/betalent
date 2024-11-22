import 'package:app/src/data/entities/employer.dart';
import 'package:app/src/data/repository.dart';
import 'package:app/src/ui/states/base.dart';
import 'package:flutter/material.dart';

abstract class IHomeController {
  Future<List<Employee>> call();
}

class HomeControllerImpl extends ChangeNotifier implements IHomeController {
  final IHomeRepository _repository;

  HomeControllerImpl({required IHomeRepository repository})
      : _repository = repository;

  BaseState _state = InitialState();
  BaseState get state => _state;

  @override
  Future<List<Employee>> call() async {
    _state = LoadingState();
    notifyListeners();

    try {
      final employees = await _repository.call();
      _state = SuccessState(data: employees);
      return employees;
    } catch (e) {
      _state = ErrorState(exception: e.toString());
      return [];
    } finally {
      notifyListeners();
    }
  }
}
