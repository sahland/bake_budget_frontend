import 'package:auto_route/auto_route.dart';
import 'package:bake_budget_frontend/features/profile/widgets/widgets.dart';
import 'package:bake_budget_frontend/uikit/uikit.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            toolbarHeight: 70,
            backgroundColor: theme.cardColor,
            surfaceTintColor: theme.cardColor,
            title: AppBarTitle(
              theme: theme,
              title: 'Мой профиль',
            ),
          ),
          const SliverToBoxAdapter(
            child: UserInfo(
              username: 'Антон Пиструн',
              userMail: 'antoshalittledick@mail.ru',
            ),
          ),
        ],
      ),
    );
  }
}
