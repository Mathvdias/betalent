import 'package:app/src/app/theme/theme.dart';
import 'package:app/src/controllers/home_controller.dart';
import 'package:app/src/data/entities/employer.dart';
import 'package:app/src/di/di.dart';
import 'package:app/src/ui/betalent_svg.dart';
import 'package:app/src/ui/states/base.dart';
import 'package:app/src/ui/widgets/employee_data.dart';
import 'package:app/src/ui/widgets/header.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = getIt<HomeControllerImpl>();

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18.0, 18.0, 0.0, 0.0),
                    child: CircleAvatar(
                      backgroundColor: AppTheme.greyColor,
                      child: Text(
                        'GC',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 18.0, 18.0, 0.0),
                    child: IconButton(
                      icon: Badge.count(
                        backgroundColor: AppTheme.primaryBlue,
                        count: 02,
                        child: BeTalentSvg.notification,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              Expanded(
                child: FutureBuilder(
                  future: controller.call(),
                  builder: (context, snapshot) {
                    final state = controller.state;

                    if (state is LoadingState) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (state is SuccessState<List<Employee>>) {
                      final employees = state.data;

                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Text(
                                    'Funcionários',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ),
                                SearchAnchor(
                                  builder: (
                                    BuildContext context,
                                    SearchController searchController,
                                  ) {
                                    return SearchBar(
                                      elevation:
                                          const WidgetStatePropertyAll(0),
                                      backgroundColor: WidgetStateProperty.all(
                                          AppTheme.greyColor),
                                      controller: searchController,
                                      hintText: 'Pesquisar',
                                      onSubmitted: (x) =>
                                          searchController.clear(),
                                      onChanged: (query) {
                                        searchController.openView();
                                        controller.search(query);
                                      },
                                      leading: const Icon(Icons.search),
                                      padding: const WidgetStatePropertyAll<
                                          EdgeInsets>(
                                        EdgeInsets.symmetric(horizontal: 16.0),
                                      ),
                                    );
                                  },
                                  suggestionsBuilder: (
                                    BuildContext context,
                                    SearchController searchController,
                                  ) {
                                    final query =
                                        searchController.text.toLowerCase();

                                    final filteredEmployees =
                                        controller.search(query);

                                    if (filteredEmployees.isEmpty) {
                                      return [
                                        const Center(
                                          child: Padding(
                                            padding: EdgeInsets.all(16.0),
                                            child: Text(
                                                'Nenhum funcionário encontrado'),
                                          ),
                                        ),
                                      ];
                                    }

                                    return filteredEmployees.map((employee) {
                                      return EmployeeData(employee: employee);
                                    }).toList();
                                  },
                                ),
                              ],
                            ),
                          ),
                          const HeaderEmployee(),
                          Expanded(
                            child: ListView.builder(
                              itemCount: employees.length,
                              itemBuilder: (context, index) {
                                final employee = employees[index];
                                return EmployeeData(employee: employee);
                              },
                            ),
                          ),
                        ],
                      );
                    } else if (state is ErrorState) {
                      return Center(child: Text('Erro: ${state.exception}'));
                    }

                    return const Center(child: Text('Sem dados disponíveis'));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
