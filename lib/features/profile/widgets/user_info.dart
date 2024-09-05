import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  final String username;
  final String userMail;
  const UserInfo({
    super.key,
    required this.username,
    required this.userMail,
  });

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 140,
          color: theme.cardColor,
        ),
        Column(
          children: [
            const SizedBox(height: 65),
            Center(
              child: Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  color: theme.dialogBackgroundColor,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 70),
                    _username(theme),
                    _userMail(theme),
                    const Spacer(),
                    _profileButton(theme, 'Сменить пароль'),
                    _profileButton(theme, 'Приобрести подписку'),
                    _profileButton(theme, 'Выйти'),
                    const SizedBox(
                      height: 25,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage(
                  './assets/images/povar.png',
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Text _userMail(ThemeData theme) {
    return Text(
      widget.userMail,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 16,
      ),
    );
  }

  Text _username(ThemeData theme) {
    return Text(
      widget.username,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: 25,
      ),
    );
  }

  Padding _profileButton(ThemeData theme, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 10,
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: theme.cardColor,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {},
        child: Container(
          width: 250,
          height: 60,
          padding: EdgeInsets.zero,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                color: theme.secondaryHeaderColor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
