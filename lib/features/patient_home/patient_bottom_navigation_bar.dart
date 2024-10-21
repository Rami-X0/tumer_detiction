import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tumer_detection/core/theming/app_colors.dart';
import 'package:tumer_detection/core/widgets/app_scaffold.dart';
import 'package:tumer_detection/features/patient_home/chat/ui/patient_chat_home.dart';
import 'package:tumer_detection/features/patient_home/patient/ui/patient_home_screen.dart';

class PatientBottomNavigationBar extends StatefulWidget {
  const PatientBottomNavigationBar({super.key});

  @override
  State<PatientBottomNavigationBar> createState() => _PatientBottomNavigationBarState();
}

int selectedIndex = 0;
List<Widget> _screens = [
  const PatientHomeScreen(),
  const PatientChatHome(),
];

class _PatientBottomNavigationBarState extends State<PatientBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedLabelStyle: const TextStyle(color: Colors.black),
        selectedItemColor: AppColors.defaultColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: AppColors.blackColor,
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.solidComment),
            label: 'Chats',
          ),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
