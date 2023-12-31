import 'package:flutter/material.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';

class BaseWidget extends StatefulWidget {
  final Widget? child;
  final PreferredSize? appBar;
  final bool avoidBottomInset;

  final Color? backgroundColor;
  final Key? scaffoldKey;
  final bool extendBodyBehindAppBar;
  final bool isPadding;

  const BaseWidget({
    super.key,
    this.child,
    this.appBar,
    this.avoidBottomInset = true,
    this.backgroundColor,
    this.scaffoldKey,
    this.extendBodyBehindAppBar = false,
    this.isPadding = true
  });

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          key: widget.scaffoldKey,
          backgroundColor: widget.backgroundColor,
          resizeToAvoidBottomInset: widget.avoidBottomInset,
          extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
          appBar: widget.appBar,
          body: Padding(
            padding: widget.isPadding ? const EdgeInsets.all(AppSizes.horizontalPadding) : const EdgeInsets.all(0),
            child: widget.child,
          ),

        ),
      ),
    );
  }
}
