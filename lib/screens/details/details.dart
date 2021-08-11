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
                bottom: 20,
              ),
              child: Column(
                children: [
                  IconsMenu(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
                bottom: 20,
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.phone_outlined,
                    size: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedContact.phone,
                          style: TextStyle(
                            color: grayTheme,
                            fontSize: 10,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Celualr",
                          style: TextStyle(
                            color: grayTheme,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 139,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 16,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.videocam_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.message_outlined,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
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
