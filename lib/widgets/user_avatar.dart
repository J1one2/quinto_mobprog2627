import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class UserAvatar extends StatelessWidget {
  final String? imagePath;
  final double radius;
  const UserAvatar({super.key, this.imagePath, this.radius = 18});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: ScreenUtil().setSp(radius),
      backgroundColor: Colors.grey[300],
      backgroundImage: imagePath != null ? AssetImage(imagePath!) : null,
      child: imagePath == null
          ? Icon(
              Icons.person,
              color: Colors.grey[700],
              size: ScreenUtil().setSp(radius),
            )
          : null,
    );
  }
}
