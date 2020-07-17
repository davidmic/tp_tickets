import 'package:flutter/material.dart';

/// An icon widget that is decorated inside a circular container.
/// When tapped, it's size animates to reflect a positive or negative action.
class MyEncircledIcon extends StatefulWidget {
  MyEncircledIcon({Key key, this.activeIconSize: 30, this.inactiveIconSize: 20, this.isActive: false, this.encircledColor, this.activeColor, this.inactiveColor, this.onPressed, this.icon, this.animationController}) : super(key: key);

  final double activeIconSize;
  final double inactiveIconSize;
  final bool isActive;  
  final Color encircledColor;
  final Color activeColor;
  final Color inactiveColor;
  final Icon icon;
  final Function onPressed;
  final AnimationController animationController;
  
  @override
  _MyEncircledIconState createState() => _MyEncircledIconState();
}

class _MyEncircledIconState extends State<MyEncircledIcon> with TickerProviderStateMixin {
  
  double iconSize;
  bool isActive;

  @override
  void initState() {
    
    // init to a size based on active/inactive status.  
    iconSize = widget.isActive ? widget.activeIconSize: widget.inactiveIconSize;
    isActive = widget.isActive;

    super.initState();
  }
  
  @override
  Widget build (BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: widget.encircledColor
      ),
      child: AnimatedSize(
        vsync: this,
        curve: Curves.easeInBack,
        duration: Duration(milliseconds: 100),
        child: IconButton(
          icon: widget.icon,

          // todo: set iconSize depending on whether this profileId is in this user's admired list.
          iconSize: iconSize,
          color: isActive ? widget.activeColor: widget.inactiveColor,
          onPressed: () {
            
            if (widget.onPressed != null) widget.onPressed();

            // toggle colors.
            setState(() {

              isActive = !isActive;

              iconSize = isActive ? widget.activeIconSize: widget.inactiveIconSize;
            });
          },
        ),
      ),
    );
  }
}