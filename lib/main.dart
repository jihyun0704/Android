import 'package:flutter/material.dart';

class MyBody extends StatelessWidget {
  Widget _buildList(BuildContext context) {
    return ListView(
      children: [
        _tile(context, 'Roxie Theater', '3117 16th St', Icons.theaters),
        _tile(context, 'United Artists Stonestown Twin', '501 Buckingham Way',
            Icons.theaters),
        _tile(context, 'AMC Metreon 16', '135 4th St #3000', Icons.theaters),
        const Divider(),
        _tile(context, 'K\'s Kitchen', '757 Monterey Blvd', Icons.restaurant),
        _tile(context, 'La Ciccia', '291 30th St', Icons.restaurant),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return _buildList(context);
  }
}

Widget _tile(
    BuildContext context,
    String title,
    String subtitle,
    IconData icon,
    ) {
  return ListTile(
    title: Text(title,
        style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
    subtitle: Text(subtitle),
    leading: Icon(icon, color: Colors.blue.shade500),
    onTap: () => Navigator.push(context,
        MaterialPageRoute(
            builder: (context) => SubPage(title, subtitle)),
  ));
}

class SubPage extends StatelessWidget {
  String title;
  String subtitle;

  SubPage(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title)), body: Text(subtitle));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Demo',
      home: Scaffold(appBar: AppBar(title: Text('title')), body: MyBody()) // Scaffold나 Material 안에 ListTile을 사용해야 합니다..
    );
  }
}
void main() => runApp(MyApp());

