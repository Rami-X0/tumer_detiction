import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/helper/spacing.dart';
import 'package:tumer_detection/core/widgets/app_scaffold.dart';
import 'package:tumer_detection/features/choose_user/choose_user.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/choose_image_doctor.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/form_sign_up.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/have_account.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/sign_up_button.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/sign_up_text.dart';
import 'package:tumer_detection/features/sign_up/ui/widgets/top_container_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: ListView(
        children: [
          const TopContainerSignUp(),
          Padding(
            padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpText(),
                verticalSpace(20.h),
                const FormSignUp(),
                verticalSpace(20.h),
                isDoctor?
                Column(
                  children: [
                    const ChooseImageDoctor(),
                    verticalSpace(20.h),
                  ],
                ):const SizedBox.shrink(),
                const SignUpButton(),
                verticalSpace(20.h),
                const HaveAccount(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
