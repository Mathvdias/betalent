import 'package:app/src/controllers/home_controller.dart';
import 'package:app/src/data/entities/employer.dart';
import 'package:app/src/di/di.dart';
import 'package:app/src/ui/states/base.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = getIt<HomeControllerImpl>();

    return Scaffold(
      appBar: AppBar(title: const Text('Employees')),
      body: FutureBuilder(
        future: controller.call(),
        builder: (context, snapshot) {
          final state = controller.state;

          if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is SuccessState<List<Employee>>) {
            final employees = state.data;

            return ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                final employee = employees[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(employee.image),
                  ),
                  title: Text(employee.name),
                  subtitle: Text(employee.job),
                );
              },
            );
          } else if (state is ErrorState) {
            return Center(child: Text('Error: ${state.exception}'));
          }

          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}
