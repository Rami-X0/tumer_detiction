import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';
import 'package:tumer_detection/core/widgets/app_elevated_button.dart';
import 'package:tumer_detection/core/widgets/app_slide_fade_animation.dart';
import 'package:tumer_detection/features/login/ui/widgets/form_login.dart';
import 'package:tumer_detection/features/patient_home/patient_bottom_navigation_bar.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

bool isLoading = false;

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return AppSlideFadeAnimation(
      begin: 1,
      child: AppElevatedButton(
        onPressed: onTapThenPressedLogin,
        backgroundColor: AppColors.defaultColor,
        width: double.infinity,
        child: AnimatedSwitcher(
          transitionBuilder: (child, animation) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
          duration: (const Duration(milliseconds: 750)),
          child: isLoading
              ? const SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    strokeWidth: 5,
                    color: Colors.white,
                  ),
                )
              : Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
        ),
      ),
    );
  }

  void onTapThenPressedLogin() {
    if (loginFormKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });
      Future.delayed(Duration(milliseconds: 1500), () {
        setState(
          () {
            isLoading = false;
            Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                    builder: (_) => const PatientBottomNavigationBar()),
                (route) => false);
          },
        );
      });
    }
  }
}
