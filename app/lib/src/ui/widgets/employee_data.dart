import 'package:app/src/app/theme/theme.dart';
import 'package:app/src/data/entities/employer.dart';
import 'package:app/src/ui/betalent_svg.dart';
import 'package:app/src/ui/widgets/item_tile_data.dart';
import 'package:flutter/material.dart';

class EmployeeData extends StatelessWidget {
  const EmployeeData({
    super.key,
    required this.employee,
  });

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppTheme.borderColor),
          right: BorderSide(color: AppTheme.borderColor),
          left: BorderSide(color: AppTheme.borderColor),
        ),
      ),
      child: ExpansionTile(
        childrenPadding: const EdgeInsets.symmetric(horizontal: 24.0),
        trailing: BeTalentSvg.arrowDown,
        leading: CircleAvatar(
          backgroundColor: Colors.grey[300],
          child: ClipOval(
            child: Image.network(
              employee.image,
              width: 40,
              height: 40,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const Icon(Icons.person, color: Colors.white);
                }
              },
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error, color: Colors.red);
              },
            ),
          ),
        ),
        title: Text(employee.name),
        controlAffinity: ListTileControlAffinity.trailing,
        children: <Widget>[
          ItemTileData(
            employeeData: employee.job,
            label: 'Cargo',
          ),
          ItemTileData(
            employeeData: employee.admissionDateFormatted,
            label: 'Data de admissão',
          ),
          ItemTileData(
            employeeData: employee.phoneFormatted,
            label: 'Telefone',
          ),
        ],
      ),
    );
  }
}
