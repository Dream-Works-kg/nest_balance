import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  final Color? backgroundColor;
  final Widget body;
  final PreferredSizeWidget? appBar;
  const CustomScaffold({
    super.key,
    this.backgroundColor,
    required this.body,
    this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: appBar,
        backgroundColor: backgroundColor ?? Colors.white,
        body: SafeArea(child: body),
      ),
    );
  }
}
