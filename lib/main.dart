import 'package:flutter/material.dart';

void main() {
  runApp(ScamShieldApp());
}

class ScamShieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ScamShield AI',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ScamShield AI"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            FeatureCard(
              icon: Icons.call,
              title: "Scan Call",
              subtitle: "Detect spam & fraud calls",
            ),
            FeatureCard(
              icon: Icons.message,
              title: "Scan SMS",
              subtitle: "Detect scam messages",
            ),
            FeatureCard(
              icon: Icons.report,
              title: "Report Scam",
              subtitle: "Report fraud numbers",
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  FeatureCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Icon(icon, size: 30, color: Colors.redAccent),
        title: Text(title, style: TextStyle(fontSize: 18)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
