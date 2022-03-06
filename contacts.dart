// ignore_for_file: unnecessary_const
import 'package:flutter/material.dart';
import 'dart:core';

class Contacts {
  final String name;
  final String email;

  const Contacts({required this.name, required this.email});
}

const kContacts = const <Contacts>[
  const Contacts(
    name: 'madusha',
    email: 'madusha@gmail.com',
  ),
  const Contacts(
    name: 'madusha',
    email: 'madusha@gmail.com',
  ),
  const Contacts(
    name: 'madusha',
    email: 'madusha@gmail.com',
  ),
  const Contacts(
    name: 'madusha',
    email: 'madusha@gmail.com',
  ),
  const Contacts(
    name: 'madusha',
    email: 'madusha@gmail.com',
  ),
];

class _ContactListItem extends StatelessWidget {
  final Contacts _contact;

  _ContactListItem(this._contact);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(_contact.name[0])
      ),
      title: Text(_contact.name),
      subtitle: Text(_contact.email)
    );
  }

}

