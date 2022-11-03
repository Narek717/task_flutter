import 'package:flutter/material.dart';
import 'package:online_shop/whatsApp/whatsapp4.dart';

class Chats extends StatelessWidget {
  Chats({super.key});

  List<Info> list = [
    Info('Gevor', 'Gev jan barev vonc es', '12:08',
        'https://randomuser.me/api/portraits/men/82.jpg'),
    Info('Gugo', 'De davai axpers vaxy ktesnvenq', '21:43',
        'https://randomuser.me/api/portraits/men/1.jpg'),
    Info('Hendo', 'Axpers miat nkarners karas qces', '14:44',
        'https://randomuser.me/api/portraits/men/40.jpg'),
    Info('Sevo', 'Sevo vaxy kzangem xosanq', '01:55',
        'https://randomuser.me/api/portraits/men/9.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(list[index].image),
            ),
            title: Text(list[index].name),
            subtitle: Text(list[index].message),
            trailing: Text(list[index].time),
          );
        });
  }
}
