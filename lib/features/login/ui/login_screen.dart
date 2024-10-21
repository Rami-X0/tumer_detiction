import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/helper/spacing.dart';
import 'package:tumer_detection/core/widgets/app_scaffold.dart';
import 'package:tumer_detection/features/login/ui/widgets/custom_top_animation_login.dart';
import 'package:tumer_detection/features/login/ui/widgets/dont_have_account.dart';
import 'package:tumer_detection/features/login/ui/widgets/form_login.dart';
import 'package:tumer_detection/features/login/ui/widgets/login_button.dart';
import 'package:tumer_detection/features/login/ui/widgets/text_login.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          const CustomTopAnimationLogin(),
          Padding(
            padding:  EdgeInsets.only(left: 10.w,right: 10.w,bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextLogin(),
                const FormLogin(),
                verticalSpace(45.h),
                const LoginButton(),
                verticalSpace(25.h),
                const DontHaveAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
