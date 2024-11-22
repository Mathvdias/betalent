import 'package:dio/dio.dart';
import 'package:app/src/data/dio.dart';
import 'package:app/src/data/entities/employer.dart';

abstract interface class IHomeRepository {
  Future<List<Employee>> call();
}

class HomeRepositoryImpl implements IHomeRepository {
  final Dio dio;

  HomeRepositoryImpl({required IDioFactory dioFactory})
      : dio = dioFactory.create();

  @override
  Future<List<Employee>> call() async {
    try {
      final response = await dio.get('/employees');
      final List<dynamic> json = response.data;
      return json.map(EmployeeAdapter.fromJson).toList();
    } on DioException catch (e) {
      throw Exception('Failed to fetch employees: ${e.message}');
    }
  }
}
