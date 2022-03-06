// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'contacts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContactsPage(),
    );
  }
}

class ContactsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text("Contacts"),
        ),
        body: ContactList(kContacts)
      );
  }

}

class ContactList extends StatelessWidget {

  late final List<Contacts> _contacts;

  // ignore: non_constant_identifier_names
  ContactList(this._contacts);

  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          children: _buildContactList()
        );
  }

  List<_ContactListItem> _buildContactList() {
    return _contacts.map((contact) => _ContactListItem(contact))
                    .toList();
  }

}

class _ContactListItem extends ListTile {

  _ContactListItem(Contacts contact) :
    super(
      title : Text(contact.name),
      subtitle: Text(contact.email),
      leading: CircleAvatar(
        child: Text(contact.name[0])
      )
    );

}