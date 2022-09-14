import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io';


class PlatformDialogApp extends StatelessWidget {
  const PlatformDialogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) =>  Platform.isIOS ? showiOSDialog(context)
            : showAndroidDialog(context),
      ),
      child: const Text('Show Dialog'),
    );
  }

  showAndroidDialog(context){
    return AlertDialog(
      title: const Text('AlertDialog Title'),
      content: const Text('AlertDialog description'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text('OK'),
        ),
      ],
    );
  }

  showiOSDialog(context){
    return CupertinoAlertDialog(
        title: const Text('Title'),
        content: const Text('Content'),
        actions: <Widget>[
        CupertinoDialogAction(
        onPressed: () {
      Navigator.pop(context);
    },
    child: const Text('Yes'),
    ),
    CupertinoDialogAction(
    onPressed: () {
      Navigator.pop(context);
    },
    child: const Text('No'),
    )]);
  }
}