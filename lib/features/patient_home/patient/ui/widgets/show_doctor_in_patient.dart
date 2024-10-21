import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';

class ShowDoctorInPatient extends StatelessWidget {
  const ShowDoctorInPatient({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: _imageDoctors.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5.w,
        crossAxisSpacing: 5.h,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.r),
              child: Material(
                color: AppColors.defaultColor,
                child: CachedNetworkImage(
                  imageUrl: _imageDoctors[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 1.w,
              right: 1.w,
              top: 153.h,
              // bottom: 5,
              child: Container(
                height: 35.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.blackColor.withOpacity(0.5),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r))),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    _nameDoctors[index],
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

List<String> _imageDoctors = [
  'https://img.freepik.com/premium-photo/male-female-doctor-portrait-healthcare-medical-staff-concept-confident-doctor-portrait_71956-32908.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/premium-photo/male-female-doctor-portrait-healthcare-medical-staff-concept-confident-doctor-portrait_71956-32933.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/doctor-with-his-arms-crossed-white-background_1368-5790.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/hospital-healthcare-workers-covid-19-treatment-concept-young-doctor-scrubs-making-daily-errands-clinic-listening-patient-symptoms-look-camera-professional-physician-curing-diseases_1258-57233.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/cheerful-doctor-making-notes-looking-away_23-2147896151.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/portrait-male-physician-looking-camera-isolated-white-background_1157-52206.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/close-up-doctor-getting-ready-work_23-2149152484.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/young-handsome-physician-medical-robe-with-stethoscope_1303-17840.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/family-doctor-doctor-s-office_23-2148168504.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/medium-shot-smiley-doctor-with-crossed-arms_23-2149355015.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/smiling-touching-arms-crossed-room-hospital_1134-799.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
  'https://img.freepik.com/free-photo/covid-19-preventing-virus-healthcare-workers-vaccination-concept-confident-determined-professional-doctor-medical-mask-gloves-cross-arms-chest-treating-sick-patients_1258-57479.jpg?ga=GA1.1.1923401238.1728614943&semt=ais_hybrid',
];
List<String> _nameDoctors = [
  'Dr. Hamed',
  'Dr. Ali',
  'Dr. Shahin',
  'Dr. Ahmed',
  'Dr. Mohamed',
  'Dr. Omar',
  'Dr. Basel',
  'Dr. Radi',
  'Dr. Mostafa',
  'Dr. Adel',
  'Dr. Mokhtar',
  'Dr. Hossam',
];
