import 'package:flutter/material.dart';

class UserIngredientInfo extends StatefulWidget {
  const UserIngredientInfo({super.key});

  @override
  State<UserIngredientInfo> createState() => _UserIngredientInfoState();
}

class _UserIngredientInfoState extends State<UserIngredientInfo> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: 370,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                color: theme.dialogBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Text(
                      'молоко',
                      style: TextStyle(
                        color: theme.secondaryHeaderColor,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const Spacer(),
                    Center(
                      child: Text(
                        '1000 гр.',
                        style: TextStyle(
                          color: theme.secondaryHeaderColor,
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      '60 руб.',
                      style: TextStyle(
                        color: theme.secondaryHeaderColor,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
