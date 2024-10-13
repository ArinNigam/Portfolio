import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import '../../providers/scroll_provider.dart';

class SmartInstiPage extends StatelessWidget {
  const SmartInstiPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    ScrollProvider scrollProvider =
        Provider.of<ScrollProvider>(context, listen: false);

    bool isMobile =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width;
    return ResponsiveScaledBox(
      width: isMobile ? 455 : 1978,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          elevation: 1,
          shadowColor: Colors.black,
          backgroundColor: Colors.lightBlueAccent,
          toolbarHeight: 40,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.go('/home');
            },
          ),
          title: const Text(
            'Smart Insti',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/admin_auth.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/admin_dashboard.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/user_auth.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/user_dashboard.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/add_student.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/multi_choice_roles.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/year_picker.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/add_faculty.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_faculties.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/add_course.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_courses.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/add_rooms.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_room_vacancy.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/add_menu.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_mess_menu.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_menu.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/view_lost_and_found.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/chatroom.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/timetable_1.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: height,
                          child: Image.asset(
                              'lib/assets/projects_images/smart_insti/timetable_2.png',
                              fit: BoxFit.fitHeight),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
