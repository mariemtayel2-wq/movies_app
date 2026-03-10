import 'package:flutter/material.dart';
import 'package:movies_app/core/resources/color_manager.dart';
import 'package:movies_app/core/resources/data%20nav.dart';

class NavBarItem extends StatefulWidget {
  final NavItem item;
  final bool isSelected;
  final VoidCallback onTap;

  const NavBarItem({
    required this.item,
    required this.isSelected,
    required this.onTap,
  });

  @override
  State<NavBarItem> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBarItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _ctrl;
  late final Animation<double> _scaleAnim;
  late final Animation<double> _bounceAnim;

  @override
  void initState() {
    super.initState();
    _ctrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnim = CurvedAnimation(parent: _ctrl, curve: Curves.elasticOut);
    _bounceAnim = Tween<double>(begin: 0, end: -6).animate(
      CurvedAnimation(parent: _ctrl, curve: Curves.easeOut),
    );

    if (widget.isSelected) _ctrl.forward();
  }

  @override
  void didUpdateWidget(NavBarItem old) {
    super.didUpdateWidget(old);
    if (widget.isSelected && !old.isSelected) {
      _ctrl.forward(from: 0);
    } else if (!widget.isSelected) {
      _ctrl.reverse();
    }
  }

  @override
  void dispose() {
    _ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      behavior: HitTestBehavior.opaque,
      child: AnimatedBuilder(
        animation: _ctrl,
        builder: (_, __) => Transform.translate(
          offset: Offset(0, widget.isSelected ? _bounceAnim.value : 0),
          child: SizedBox(
            width: 72,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 350),
                  curve: Curves.easeOutCubic,
                  width: widget.isSelected ? 48 : 38,
                  height: widget.isSelected ? 36 : 32,
                  decoration: BoxDecoration(
                    color: widget.isSelected
                        ? ColorManager.primaryYello.withOpacity(0.2)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: widget.isSelected
                        ? Border.all(
                      color:ColorManager.primaryYello.withOpacity(0.4),
                      width: 1,
                    )
                        : null,
                  ),
                  child: Transform.scale(
                    scale:
                    widget.isSelected ? 1.0 + (_scaleAnim.value * 0.1) : 1.0,
                    child: Icon(
                      widget.item.icon,
                      size: widget.isSelected ? 22 : 20,
                      color: widget.isSelected
                          ? ColorManager.primaryYello
                          :ColorManager.primarywhite.withOpacity(0.45),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                AnimatedDefaultTextStyle(
                  duration: const Duration(milliseconds: 300),
                  style: TextStyle(
                    fontSize: widget.isSelected ? 10.5 : 10,
                    fontWeight: widget.isSelected
                        ? FontWeight.w700
                        : FontWeight.w400,
                    color: widget.isSelected
                        ? ColorManager.primaryYello
                        : ColorManager.primarywhite.withOpacity(0.4),
                    letterSpacing: 0.3,
                  ),
                  child: Text(widget.item.label),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}