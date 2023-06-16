import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Locale _koLocale = const Locale('ko');
  final Locale _enLocale = const Locale('en');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('msg').tr(args: ['Easy localization', 'Dart']),
        actions: [
          IconButton.outlined(
            onPressed: () {
              context.setLocale(_enLocale);
            },
            icon: const Icon(Icons.stadium),
          ),
          IconButton.outlined(
            onPressed: () {
              context.setLocale(_koLocale);
            },
            icon: const Icon(Icons.sailing),
          )
        ],
      ),
      body: Center(
        // child: const Text('msg_named').tr(namedArgs: {'lang': 'Dart'}),
        child: Text('msg_named'.tr(namedArgs: {'lang': 'Dart'})),
      ),
    );
  }
}
