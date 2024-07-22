import 'package:flutter/material.dart';
import 'package:royal_app/constants/colors.dart';

class AttemptsInfo extends StatelessWidget {
  final int maxAttempts;
  final int currentAttempts;

  AttemptsInfo(this.maxAttempts, this.currentAttempts);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 105, vertical: 5),
      decoration: BoxDecoration(
        color: AppColors.colorPrimary,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline, color: Colors.white),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              'Intentos restantes: ${maxAttempts - currentAttempts}',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
