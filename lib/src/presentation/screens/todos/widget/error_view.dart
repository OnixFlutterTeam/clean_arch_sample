import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorView extends StatelessWidget {
  final String errorText;
  final VoidCallback onRetryPressed;

  const ErrorView(
      {super.key, required this.errorText, required this.onRetryPressed});

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'No todos found',
              style: Theme.of(context).textTheme.caption,
            ),
            SizedBox(
              height: 10.h,
            ),
            OutlinedButton(
              onPressed: onRetryPressed,
              child: Text(
                'Retry',
                style: Theme.of(context).textTheme.button,
              ),
            )
          ],
        ),
      );
}
