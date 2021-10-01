import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Color.fromRGBO(50, 75, 205, 1),
        child: ListView(
          children: <Widget>[
            Container(
              padding: padding,
              child: Column(
                children: [
                  const SizedBox(height: 12),
                  buildSearchField(),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'blah',
                    icon: Icons.people,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'blah blah',
                    icon: Icons.favorite_border,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'blah blah blah',
                    icon: Icons.workspaces_outline,
                  ),
                  const SizedBox(height: 16),
                  buildMenuItem(
                    text: 'blah blah blah blah',
                    icon: Icons.update,
                  ),
                  const SizedBox(height: 24),
                  Divider(color: Colors.white70),
                  const SizedBox(height: 24),
                  buildMenuItem(
                    text: 'Login/Logout',
                    icon: Icons.offline_bolt,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  VoidCallback? onClicked,
}) {
  final color = Colors.white;
  final hoverColor = Colors.white70;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(text, style: TextStyle(color: color)),
    hoverColor: hoverColor,
    onTap: onClicked,
  );
}

Widget buildSearchField() {
  final color = Colors.white;

  return TextField(
    style: TextStyle(color: color),
    decoration: InputDecoration(
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      hintText: 'Search',
      hintStyle: TextStyle(color: color),
      prefixIcon: Icon(Icons.search, color: color),
      filled: true,
      fillColor: Colors.white12,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide(color: color.withOpacity(0.7)),
      ),
    ),
  );
}
