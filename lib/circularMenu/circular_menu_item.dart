import 'package:flutter/material.dart';

class CircularMenuItem extends StatelessWidget {
  /// if icon and animatedIcon are passed, icon will be ignored
  final IconData? icon;
  final Color? color;
  final Color? iconColor;
  final VoidCallback onPressed;
  final double iconSize;
  final double padding;
  final double margin;
  final List<BoxShadow>? boxShadow;
  final bool enableBadge;
  final double? badgeRightOffet;
  final double? badgeLeftOffet;
  final double? badgeTopOffet;
  final double? badgeBottomOffet;
  final double? badgeRadius;
  final TextStyle? badgeTextStyle;
  final String? badgeLabel;
  final Color? badgeTextColor;
  final Color? badgeColor;
  final String? text;
  final TextAlign? textAlign;

  /// if animatedIcon and icon are passed, icon will be ignored
  final AnimatedIcon? animatedIcon;

  /// creates a menu item .
  /// [onTap] must not be null.
  /// [padding] and [margin]  must be equal or greater than zero.
  CircularMenuItem({
    required this.onPressed,
    this.icon,
    this.color,
    this.iconSize = 30,
    this.boxShadow,
    this.iconColor,
    this.animatedIcon,
    this.padding = 10,
    this.margin = 150,
    this.enableBadge = false,
    this.badgeBottomOffet,
    this.badgeLeftOffet,
    this.badgeRightOffet,
    this.badgeTopOffet,
    this.badgeRadius,
    this.badgeTextStyle,
    this.badgeLabel,
    this.badgeTextColor,
    this.badgeColor,
    this.text,
    this.textAlign,
  })  : assert(padding >= 0.0),
        assert(margin >= 0.0);

  Widget _buildCircularMenuItem(BuildContext context) {
    return Container(

        margin: EdgeInsets.all(margin),
        decoration: BoxDecoration(
          color: Colors.transparent,
          boxShadow: boxShadow ??
              [
                BoxShadow(
                  color: color ?? Theme.of(context).primaryColor,
                  blurRadius: 0,
                ),
              ],
          shape: BoxShape.circle,
        ),

        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
              primary: Colors.green,
              minimumSize: Size(100.0, 50.0)
          ),
          child: Text('$text', textAlign: textAlign,),
          onPressed: onPressed,
        )
    );
  }

  Widget _buildCircularMenuItemWithBadge(BuildContext context) {
    return _Badge(
      color: badgeColor,
      bottomOffset: badgeBottomOffet,
      rightOffset: badgeRightOffet,
      leftOffset: badgeLeftOffet,
      topOffset: badgeTopOffet,
      radius: badgeRadius,
      textStyle: badgeTextStyle,
      onTap: onPressed,
      textColor: badgeTextColor,
      label: badgeLabel,
      child: _buildCircularMenuItem(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return enableBadge
        ? _buildCircularMenuItemWithBadge(context)
        : _buildCircularMenuItem(context);
  }
}

class _Badge extends StatelessWidget {
  const _Badge({
    Key? key,
    required this.child,
    required this.label,
    this.color,
    this.textColor,
    this.onTap,
    this.radius,
    this.bottomOffset,
    this.leftOffset,
    this.rightOffset,
    this.topOffset,
    this.textStyle,
  }) : super(key: key);

  final Widget child;
  final String? label;
  final Color? color;
  final Color? textColor;
  final Function? onTap;
  final double? rightOffset;
  final double? leftOffset;
  final double? topOffset;
  final double? bottomOffset;
  final double? radius;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none, alignment: Alignment.center,
      children: [
        child,
        Positioned(
          right: (leftOffset == null && rightOffset == null) ? 8 : rightOffset,
          top: (topOffset == null && bottomOffset == null) ? 8 : topOffset,
          left: leftOffset,
          bottom: bottomOffset,
          child: FittedBox(
            child: GestureDetector(
              onTap: onTap as void Function()? ?? () {},
              child: CircleAvatar(
                maxRadius: radius ?? 10,
                minRadius: radius ?? 10,
                backgroundColor: color ?? Theme.of(context).primaryColor,
                child: FittedBox(
                  child: Text(
                    label ?? '',
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        TextStyle(
                          fontSize: 10,
                          color: textColor ?? Theme.of(context).accentColor,
                        ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}