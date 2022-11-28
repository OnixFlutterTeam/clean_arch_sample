import 'package:clean_arch_sample/presentation/style/theme_extension/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorView extends StatelessWidget {
  final String? errorText;
  final VoidCallback onRetryPressed;

  const ErrorView({
    required this.onRetryPressed,
    this.errorText,
    super.key,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'No todos found',
              style: context.caption14,
            ),
            SizedBox(
              height: 10.h,
            ),
            OutlinedButton(
              onPressed: onRetryPressed,
              child: Text(
                'Retry',
                style: context.button18,
              ),
            ),
          ],
        ),
      );
}
