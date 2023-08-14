import 'package:flutter/material.dart';
import 'package:flutter_factory_design_pattern_challenge/spaceship.dart';
import 'package:flutter_factory_design_pattern_challenge/utils.dart';

SpaceShip spaceShip = NullSpaceShip();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpaceShip Factory',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'SpaceShip Factory Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _spaceShipName = '';
  String _spaceShipMovement = '';

  void _newRandomSpaceShip() {
    setState(() {
      spaceShip = Utils.generateRandomSpaceShip();
      _spaceShipName = spaceShip.getDisplay();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'SpaceShip:',
            ),
            Text(
              _spaceShipName,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              _spaceShipMovement,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            FloatingActionButton(
                tooltip: 'Move SpaceShip',
                child: const Icon(Icons.arrow_forward),
                onPressed: () => {
                      _spaceShipMovement = spaceShip.move(),
                      setState(() {}),
                    }),
            FloatingActionButton(
              onPressed: _newRandomSpaceShip,
              tooltip: 'Generate new SpaceShip',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
