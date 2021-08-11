import 'package:flutter/material.dart';
import 'package:google_agenda/models/contact.dart';
import 'package:google_agenda/screens/widgets/icons_menu.dart';
import 'package:google_agenda/style.dart';

class Details extends StatelessWidget {
  final Contact _selectedContact;

  Details(this._selectedContact);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          (_selectedContact.isFavorite)
              ? Icon(Icons.star)
              : Icon(Icons.star_outline),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.edit),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: _selectedContact.name,
              child: Image.asset(
                _selectedContact.photo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 16,
              ),
              child: Text(
                _selectedContact.name,
                style: TextStyle(
                  fontSize: 25,
                  color: grayTheme,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Column(
                children: [
                  IconsMenu(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Row(
                children: [
                  Icon(Icons.email_outlined),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    _selectedContact.email,
                    style: TextStyle(
                      color: grayTheme,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [],
            ),
          ],
        ),
      ),
    );
  }
}
