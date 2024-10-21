import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/helper/spacing.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';
import 'package:tumer_detection/core/widgets/app_elevated_button.dart';
import 'package:tumer_detection/core/widgets/app_slide_fade_animation.dart';
import 'package:tumer_detection/features/sign_up/ui/sign_up_screen.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: -1,
      child: Column(
        children: [
           Text(
            'Don\'t have an account?',
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
              ],
            ),
            child: AppElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const SignUpScreen()),
                    (route) => false);
              },
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              width: double.maxFinite,
              borderWidth: 2.w,
              borderColor: AppColors.defaultColor,
              child:  Text(
                'Sign Up',
                style: TextStyle(
                  color: AppColors.defaultColor,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
