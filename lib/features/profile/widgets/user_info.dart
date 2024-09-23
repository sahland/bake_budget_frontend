import 'package:bake_budget_frontend/features/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class UserInfo extends StatefulWidget {
  final String username;
  final String userMail;

  final double width;
  final double height;
  final double borderRadius;

  const UserInfo({
    required this.username,
    required this.userMail,
    this.width = 350,
    this.height = 400,
    this.borderRadius = 10,
    super.key,
  });

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    const newPasswordTitle = 'Сменить пароль';
    const leaveAccount = 'Выйти из аккаунта';
    const avatarPath = './assets/images/povar.png';

    const usernameFontSize = 25.0;
    const mailFontSize = 16.0;
    const topSizedBoxHeight = 65.0;
    const middleSizedBoxHeight = 70.0;
    const lowSizedBoxHeight = 25.0;

    final theme = Theme.of(context);

    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: topSizedBoxHeight,
            ),
            Center(
              child: Container(
                width: widget.width,
                height: widget.height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(widget.borderRadius),
                  ),
                  color: theme.dialogBackgroundColor,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: middleSizedBoxHeight,
                    ),
                    _infoText(
                      theme,
                      widget.username,
                      usernameFontSize,
                    ),
                    _infoText(
                      theme,
                      widget.userMail,
                      mailFontSize,
                    ),
                    const Spacer(),
                    const ProfileButton(
                      title: newPasswordTitle,
                    ),
                    const ProfileButton(
                      title: leaveAccount,
                    ),
                    const SizedBox(
                      height: lowSizedBoxHeight,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        _userAvatar(
          avatarPath,
        ),
      ],
    );
  }

  Column _userAvatar(String imagePath, [double avatarRadius = 60]) {
    const sizedBoxHeight = 10.0;

    return Column(
      children: [
        const SizedBox(height: sizedBoxHeight),
        Center(
          child: CircleAvatar(
            radius: avatarRadius,
            backgroundImage: AssetImage(
              imagePath,
            ),
          ),
        ),
      ],
    );
  }

  Text _infoText(ThemeData theme, String text, double fontSize) {
    return Text(
      text,
      style: TextStyle(
        color: theme.secondaryHeaderColor,
        fontSize: fontSize,
      ),
    );
  }
}
