import 'package:flutter/material.dart';
import 'package:moth/global/router.dart';
import 'package:moth/global/shared.dart';
import 'package:moth/models/task.dart';
import 'package:moth/services/task_service.dart';
import 'package:moth/user_interfaces/others/app_builder.dart';
import 'package:moth/user_interfaces/pages/health_page.dart';
import 'package:moth/user_interfaces/pages/map_page.dart';
import 'package:moth/user_interfaces/pages/notifications_page.dart';
import 'package:moth/user_interfaces/pages/tasks_page.dart';
import 'package:moth/user_interfaces/pages/dash_board.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TaskService().streamAllTasks();

    return AppBuilder(
      builder: (context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: Shared.theme,
          title: 'Contact Hub',
          routes: {
            '/': (context) => DashBoard(),
            dashboard: (context) => DashBoard(),
            healthPage: (context) => HealthPage(),
            tasksPage: (context) => TasksPage(),
            mapPage: (context) => MapPage(),
            notificationsPage: (context) => NotificationsPage(),
          },
        );
      },
    );
  }
}
