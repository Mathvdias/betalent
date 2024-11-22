import 'package:app/src/app/theme/theme.dart';
import 'package:app/src/ui/betalent_svg.dart';
import 'package:flutter/material.dart';

class HeaderEmployee extends StatelessWidget {
  const HeaderEmployee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: AppTheme.headerColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8.0),
          topRight: Radius.circular(8.0),
        ),
        border: Border.all(
          color: AppTheme.borderColor,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              "Foto",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Expanded(
            flex: 4,
            child: Text(
              "Nome",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: BeTalentSvg.dot,
          )
        ],
      ),
    );
  }
}
