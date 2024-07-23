import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final VoidCallback onTap;

  // button background color
  final Color fillColor;

  // border
  final bool border;
  final Color? borderColor;
  final double? borderWidth;

  // shadow
  final bool shadow;
  final double? shadowOpacity;
  final double? shadowBlurRadius;
  final Offset? shadowOffset;

  // padding and border radius
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  // child widget
  final Widget child;

  Button({
    super.key,
    required this.onTap,
    required this.fillColor,
    required this.border,
    this.borderColor,
    this.borderWidth,
    required this.shadow,
    this.shadowOpacity,
    this.shadowBlurRadius,
    this.shadowOffset,
    this.padding,
    this.borderRadius,
    required this.child,
  });

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  bool _isPressed = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _isPressed = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _isPressed = false;
    });
    widget.onTap();
  }

  void _handleTapCancel() {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTapCancel: _handleTapCancel,
        child: Container(
          padding: widget.padding ?? EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: _isPressed
                ? widget.fillColor.withOpacity(0.8)
                : widget.fillColor,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(40),
            border: widget.border
                ? Border.all(
                    color: widget.borderColor ?? Colors.transparent,
                    width: widget.borderWidth ?? 1.0,
                  )
                : null,
            boxShadow: widget.shadow
                ? [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(widget.shadowOpacity ?? 0.25),
                      blurRadius: widget.shadowBlurRadius ?? 0.0,
                      offset: widget.shadowOffset ?? Offset(0, 4),
                    ),
                  ]
                : [],
          ),
          child: Center(child: widget.child),
        ),
      ),
    );
  }
}
