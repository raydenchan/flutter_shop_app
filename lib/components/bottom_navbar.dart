import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavbar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const BottomNavbar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GNav(
          color: Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade200,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 15,

          //onTabChange
          onTabChange: (value) => onTabChange!(value),

          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Shop',
            ),
            GButton(
              icon: Icons.shopping_bag_rounded,
              text: 'Cart',
            )
          ],
        ));
  }
}
