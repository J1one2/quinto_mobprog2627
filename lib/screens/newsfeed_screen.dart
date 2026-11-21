import 'package:quinto_labact1a/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Jason Momoa',
          postContent: 'If anything happens, Im Right behind you.',
          date: '1 hour ago',
          numOfLikes: 10,
          avatarPath: 'assets/images/profile.jpeg',
        ),
        NewsfeedCard(
          userName: 'Jason Momoa',
          postContent: 'Play GTA 6 Now on PS5',
          date: 'November 19, 2026',
          numOfLikes: 3000,
          imagePath: 'assets/images/console.jpeg',
          avatarPath: 'assets/images/profile.jpeg',
        ),
      ],
    );
  }
}
