import 'package:flutter/cupertino.dart';
import 'package:myapp/base/extensions.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(context.locale.somethingWentWrong));
  }
}
