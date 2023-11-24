import 'package:flutter/material.dart';

// Assuming you have a Notification model like this
class Notification {
  final String title;
  final String body;

  Notification({required this.title, required this.body});
}

class NotificationPage extends StatelessWidget {
  final List<Notification>? notifications;

  const NotificationPage({super.key, this.notifications});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1, //notifications!.length,
      itemBuilder: (context, index) {
        return const ListTile(
          title: Text("notifications![index].title"),
          subtitle: Text("notifications![index].body"),
        );
      },
    );
  }
}
