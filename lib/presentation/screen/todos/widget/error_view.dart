import 'package:clean_arch_sample/presentation/style/theme/theme_imports.dart';
import 'package:clean_arch_sample/util/dimensions.dart';
import 'package:flutter/material.dart';

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
              style: context.themeTextStyles.caption14,
            ),
            SizedBox(height: Dimensions.delimiterH10),
            OutlinedButton(
              onPressed: onRetryPressed,
              child: Text(
                'Retry',
                style: context.themeTextStyles.button18,
              ),
            ),
          ],
        ),
      );
}
