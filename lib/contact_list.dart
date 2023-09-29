import 'package:flutter/material.dart';

class ContactList extends StatefulWidget {
  const ContactList({super.key});

  final contacts = const [5, 1, 2];

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      key: UniqueKey(),
      itemCount: widget.contacts.length,
      separatorBuilder: (context, index) => const Divider(
        height: 0.0,
        thickness: 1.0,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text(
            "${widget.contacts[index]} Test",
            style: const TextStyle(fontSize: 18.0),
          ),
          subtitle: const Text("Subtitle Test"),
        ),
    );
  }
}
