import 'package:flutter/material.dart';
import 'package:google_agenda/style.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus contatos"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
          itemBuilder: builder,
          itemCount: 8,
          separatorBuilder: (_, index) {
            return Divider(
              color: blueTheme,
            );
          }),
    );
  }

  Widget builder(BuildContext _, int index) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          Icons.star,
          color: blueTheme,
        ),
        onPressed: () {},
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.chevron_right,
          color: grayTheme,
        ),
        onPressed: () {},
      ),
      title: Row(
        children: [
          ClipOval(
            child: Image.asset(
              "assets/images/Nicole.jpg",
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nicole",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: grayTheme,
                ),
              ),
              Text(
                "+ 55 51 11111-1111",
                style: TextStyle(
                  fontSize: 10,
                  color: grayTheme,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
