import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quinto_labact1a/screens/home_screen.dart';
import 'package:quinto_labact1a/screens/newsfeed_screen.dart';
import 'package:material_ui/material_ui.dart';
import 'package:quinto_labact1a/screens/notification_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Facebook Replication",
          initialRoute: "/home",
          routes: {
            "/newsfeed": (context) => const NewsfeedScreen(),
            "/home": (context) => const HomeScreen(),
            "/notifications": (context) => const NotificationScreen(),
          },
        ); // MaterialApp
      },
    ); // ScreenUtilInit
  }
}
