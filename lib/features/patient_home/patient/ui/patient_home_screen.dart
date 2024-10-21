import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/helper/spacing.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';
import 'package:tumer_detection/core/widgets/app_scaffold.dart';
import 'package:tumer_detection/features/patient_home/patient/ui/widgets/patient_brain_tumor_slider.dart';
import 'package:tumer_detection/features/patient_home/patient/ui/widgets/show_doctor_in_patient.dart';

class PatientHomeScreen extends StatelessWidget {
  const PatientHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Text(
          'Tumer Detection',
          style: TextStyle(
              color: AppColors.defaultColor,
              fontWeight: FontWeight.bold,
              fontSize: 20.sp),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 4.w, right: 4.w,bottom: 5.h),
        child: ListView(
          children: [
            const PatientBrainTumorSlider(),
            const Divider(),
            verticalSpace(10.h),
            const ShowDoctorInPatient(),
          ],
        ),
      ),
    );
  }
}
