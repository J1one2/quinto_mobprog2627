import 'package:quinto_labact1a/constant.dart';
import 'package:quinto_labact1a/widgets/custom_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
    this.color = fbDarkPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      icon: Icon(icon, color: color),
      label: CustomText(
        text: label,
        fontSize: ScreenUtil().setSp(12),
        color: color,
      ),
    );
  }
}

class LikeButton extends StatefulWidget {
  final int initialLikes;
  const LikeButton({super.key, this.initialLikes = 0});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late int _likes = widget.initialLikes;
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return ActionButton(
      icon: _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
      label: _likes.toString(),
      color: _isLiked ? fbPrimary : fbDarkPrimary,
      onPressed: () {
        setState(() {
          _isLiked = !_isLiked;
          _likes += _isLiked ? 1 : -1;
        });
      },
    );
  }
}
