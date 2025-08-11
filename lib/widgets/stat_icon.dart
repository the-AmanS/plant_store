import 'package:flutter/material.dart';
import '../constants/colors.dart';

class StatIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final int value;
  final int maxValue;

  const StatIcon({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
    this.maxValue = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: AppColors.lightGrey,
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            color: AppColors.primary,
            size: 30,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(
            color: AppColors.textDark,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: List.generate(
            maxValue,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 2),
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index < value
                    ? AppColors.primary
                    : AppColors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}