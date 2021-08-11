import 'package:flutter/material.dart';
import 'package:google_agenda/style.dart';

class IconsMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.phone_outlined,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "Ligar",
                        style: TextStyle(
                          fontSize: 12,
                          color: blueTheme,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.message_outlined,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "Mensagem SMS",
                        style: TextStyle(
                          fontSize: 12,
                          color: blueTheme,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.videocam_outlined,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "Vídeo",
                        style: TextStyle(
                          fontSize: 12,
                          color: blueTheme,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.email_outlined,
                      size: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                      ),
                      child: Text(
                        "Envia email",
                        style: TextStyle(
                          fontSize: 12,
                          color: blueTheme,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
