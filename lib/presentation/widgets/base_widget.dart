import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  final Widget? child;
  final PreferredSize? appBar;
  final bool avoidBottomInset;

  final Color? backgroundColor;
  final Key? scaffoldKey;
  final bool extendBodyBehindAppBar;

  const BaseWidget({
    super.key,
    this.child,
    this.appBar,
    this.avoidBottomInset = true,
    this.backgroundColor,
    this.scaffoldKey,
    this.extendBodyBehindAppBar = false,
  });

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        key: widget.scaffoldKey,
        backgroundColor: widget.backgroundColor,
        resizeToAvoidBottomInset: widget.avoidBottomInset,
        extendBodyBehindAppBar: widget.extendBodyBehindAppBar,
        appBar: widget.appBar,
        body: widget.child,

      ),
    );
  }
}
