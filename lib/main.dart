import 'package:flutter/material.dart';

void main() {
  runApp(const EdgeRewardsAutomator());
}

class EdgeRewardsAutomator extends StatelessWidget {
  const EdgeRewardsAutomator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Edge Rewards Automator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Edge Rewards Automator'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Automated rewards generator for Microsoft's Edge browser by automatically searching on Bing with a scheduled list of URLs/Keywords.",
            ),
          ],
        ),
      ),
    );
  }
}
