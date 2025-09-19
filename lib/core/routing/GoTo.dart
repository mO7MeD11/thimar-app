// class Goto {

// }

import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
void GoTo(Widget page) {
  navigatorKey.currentState!.push(MaterialPageRoute(builder: (_) => page));
}
