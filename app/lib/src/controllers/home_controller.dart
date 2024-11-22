import 'package:app/src/data/entities/employer.dart';
import 'package:app/src/data/repository.dart';
import 'package:app/src/ui/states/base.dart';
import 'package:flutter/material.dart';

abstract class IHomeController {
  Future<List<Employee>> call();
  List<Employee> search(String query);
}

class HomeControllerImpl extends ChangeNotifier implements IHomeController {
  final IHomeRepository _repository;

  HomeControllerImpl({required IHomeRepository repository})
      : _repository = repository;

  BaseState _state = InitialState();
  BaseState get state => _state;

  List<Employee> _employees = [];
  List<Employee> get employees => _employees;

  @override
  Future<List<Employee>> call() async {
    _state = LoadingState();
    notifyListeners();

    try {
      final employees = await _repository.call();
      _employees = employees;

      _state = SuccessState(data: employees);
      return employees;
    } catch (e) {
      _state = ErrorState(exception: e.toString());
      return [];
    } finally {
      notifyListeners();
    }
  }

  @override
  List<Employee> search(String query) {
    if (query.isEmpty) return _employees;

    final lowerCaseQuery = query.toLowerCase();

    final results = _employees.where((employee) {
      return employee.name.toLowerCase().contains(lowerCaseQuery) ||
          employee.phone.contains(query) ||
          employee.job.toLowerCase().contains(lowerCaseQuery);
    }).toList();

    return results;
  }
}
