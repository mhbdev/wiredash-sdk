import 'package:flutter/material.dart';
import 'package:wiredash/src/common/theme/wiredash_theme.dart';

/// Clickable text
class TronLabeledButton extends ImplicitlyAnimatedWidget {
  const TronLabeledButton({
    Key? key,
    required this.child,
    this.onTap,
    this.padding,
  }) : super(
          key: key,
          curve: Curves.easeInOutCirc,
          duration: const Duration(milliseconds: 150),
        );

  final Widget child;
  final void Function()? onTap;
  final EdgeInsetsGeometry? padding;

  @override
  AnimatedWidgetBaseState<TronLabeledButton> createState() =>
      _LabeledButtonState();
}

class _LabeledButtonState extends AnimatedWidgetBaseState<TronLabeledButton> {
  ColorTween? _colorTween;
  Tween<double>? _buttonScaleTween;

  bool _focused = false;

  bool _pressed = false;

  bool _hovered = false;

  bool get _enabled => widget.onTap != null;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: _enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (event) {
        _hovered = true;
        didUpdateWidget(widget);
      },
      onExit: (event) {
        _hovered = false;
        didUpdateWidget(widget);
      },
      child: Focus(
        onFocusChange: (focused) {
          _focused = focused;
          didUpdateWidget(widget);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 24,
              child: PhysicalShape(
                color: _colorTween!.evaluate(animation)!,
                elevation: _focused ? 2 : 0,
                clipper: ShapeBorderClipper(
                  shape: const StadiumBorder(),
                  textDirection: Directionality.maybeOf(context),
                ),
                child: GestureDetector(
                  onTap: widget.onTap,
                  onTapDown: (_) {
                    if (!_enabled) return;
                    _pressed = true;
                    didUpdateWidget(widget);
                  },
                  onTapUp: (_) {
                    _pressed = false;
                    didUpdateWidget(widget);
                  },
                  onTapCancel: () {
                    _pressed = false;
                    didUpdateWidget(widget);
                  },
                  behavior: HitTestBehavior.opaque,
                  excludeFromSemantics: true,
                  child: ScaleTransition(
                    scale: _buttonScaleTween!.animate(animation),
                    child: DefaultTextStyle(
                      style: context.theme.captionTextStyle,
                      child: Center(
                        widthFactor: 1,
                        child: Padding(
                          padding: widget.padding ??
                              const EdgeInsets.symmetric(horizontal: 8),
                          child: widget.child,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  late Color color = Colors.transparent;

  @override
  void initState() {
    color = WiredashTheme.of(context, listen: false)!.secondaryColor;
    super.initState();
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _colorTween = visitor(
      _colorTween,
      () {
        if (widget.onTap == null) {
          return color.withOpacity(0);
        }
        if (_pressed) {
          // ignore: avoid_redundant_argument_values
          return color;
        }
        if (_hovered) {
          return color.withOpacity(0.5);
        }
        return color.withOpacity(0);
      }(),
      (dynamic value) => ColorTween(begin: value as Color?),
    ) as ColorTween?;
    _buttonScaleTween = visitor(
      _buttonScaleTween,
      _pressed ? 1.05 : 1.0,
      (dynamic value) => Tween<double>(begin: value as double?),
    ) as Tween<double>?;
  }
}