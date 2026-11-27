import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quinto_labact1a/constant.dart';
import 'package:quinto_labact1a/screens/newsfeed_screen.dart';
import 'package:quinto_labact1a/screens/notification_screen.dart';
import 'package:quinto_labact1a/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: fbTextColorWhite,
        elevation: 1,

        title: CustomText(
          text: _getAppBarTitle(),
          fontSize: ScreenUtil().setSp(25),
          color: fbPrimary,
          fontFamily: 'Klavika',
          fontWeight: FontWeight(700),
        ),
      ),

      // Screen navigation without swiping
      body: IndexedStack(
        index: _selectedIndex,
        children: const <Widget>[
          NewsfeedScreen(),

          Center(child: Text('Friends Screen')),

          NotificationScreen(),

          Center(child: Text('Profile Screen')),
        ],
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        showUnselectedLabels: false,
        showSelectedLabels: false,

        selectedItemColor: fbPrimary,
        unselectedItemColor: Colors.grey,

        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Friends'),

          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  String _getAppBarTitle() {
    switch (_selectedIndex) {
      case 0:
        return 'UpItUp';
      case 1:
        return 'Friends';
      case 2:
        return 'Notifications';
      case 3:
        return 'Profile';
      default:
        return 'UpItUp';
    }
  }
}
