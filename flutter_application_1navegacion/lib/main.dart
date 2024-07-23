import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const MyHomePage(
          title: "cosa",
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'details',
          builder: (BuildContext context, GoRouterState state) {
            return const DetailsScreen();
          },
        ),
        GoRoute(
          path: 'screen1',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen1();
          },
        ),
        GoRoute(
          path: 'screen2',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen2();
          },
        ),
        GoRoute(
          path: 'screen3',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen3();
          },
        ),
        GoRoute(
          path: 'screen4',
          builder: (BuildContext context, GoRouterState state) {
            return const Screen4();
          },
        ),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /*return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );*/
    return MaterialApp.router(
      routerConfig: _router,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
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
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => context.go('/details'),
                child: const Text('Go details to the Home screen'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DetailsScreen extends StatelessWidget {
  /// Constructs a [DetailsScreen]
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen1'),
              child: const Text('Go screen1'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen2'),
              child: const Text('Go screen2'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen3'),
              child: const Text('Go screen3'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen4'),
              child: const Text('Go screen4'),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen2'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen3'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen3'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/screen4'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Details Screen')),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => context.go('/'),
              child: const Text('Go back to the Home screen'),
            ),
          ),
        ],
      ),
    );
  }
}
