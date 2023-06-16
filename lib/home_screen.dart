import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Locale _koLocale = const Locale('ko');
  final Locale _enLocale = const Locale('en');
  bool _isKo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('appBarTitle'),
        title: const Text('msg').tr(args: ['Easy localization', 'Dart']),
        actions: [
          IconButton.outlined(
            onPressed: () {
              if (_isKo) {
                context.setLocale(_enLocale);
                _isKo = !_isKo;
              } else {
                context.setLocale(_koLocale);
                _isKo = !_isKo;
              }
            },
            icon: const Icon(Icons.sailing),
          )
        ],
      ),
      body: Center(
        child: const Text('msg_named').tr(namedArgs: {'lang': 'Dart'}),
      ),
    );
  }
}
