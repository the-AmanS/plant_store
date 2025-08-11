import 'package:flutter/material.dart';
import '../constants/colors.dart';

class FreeShippingBanner extends StatelessWidget {
  const FreeShippingBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 100,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 10,
            color: AppColors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Free Shipping',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'On orders over \$50',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/banner.png',
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}