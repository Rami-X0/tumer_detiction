import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/helper/spacing.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';
import 'package:tumer_detection/core/widgets/app_elevated_button.dart';
import 'package:tumer_detection/core/widgets/app_slide_fade_animation.dart';
import 'package:tumer_detection/features/login/ui/login_screen.dart';

class HaveAccount extends StatelessWidget {
  const HaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: 1,
      child: Column(
        children: [
          Text(
            'Have an account?',
            style: TextStyle(
              color: AppColors.defaultColor,
              fontWeight: FontWeight.w500,
              fontSize: 15.sp,
            ),
          ),
          verticalSpace(10.h),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 10),
                  ),
                ]),
            child: AppElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const LoginScreen()),
                    (route) => false);
              },
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              width: double.maxFinite,
              borderWidth: 2,
              borderColor: AppColors.defaultColor,
              child:  Text(
                'Login',
                style: TextStyle(
                  color: AppColors.defaultColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
