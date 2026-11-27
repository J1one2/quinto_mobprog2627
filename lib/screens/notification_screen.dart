import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quinto_labact1a/widgets/notification.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => NotificationScreenState();
}

class NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: [
          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),

          NotificationWidget(
            description: 'liked your post.',
            post: 'Your latest post',
            name: 'Lucia Caminos',
          ),
          Divider(),
        ],
      ),
    );
  }
}
