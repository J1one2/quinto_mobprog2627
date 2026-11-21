import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class PostImage extends StatelessWidget {
  final String imagePath;
  const PostImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(ScreenUtil().setSp(8)),
      child: Image.asset(imagePath, width: double.infinity, fit: BoxFit.cover),
    );
  }
}
