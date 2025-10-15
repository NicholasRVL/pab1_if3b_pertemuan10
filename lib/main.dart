import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(title: 'Widget Demo'),
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          children:[

            Container(
              width: 400,
              height: 200,
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(8),
              ),

              child: const Center(
                child: Text("Ini adalah contoh penggunaan container",

                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
                textAlign: TextAlign.center,

                ),

              ),

            ),

              const SizedBox(height: 20),

              ElevatedButton(
                  onPressed: () {
                    print("elevated button di tekan");
                  },
                  child:  const Text('Tombol elavated '),
              ),

            const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const[
              Icon(
                Icons.star,
                color: Colors.amber,
                size: 24,
              ),

              SizedBox(width: 8),
              Text(
                'Rating: 4.5',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

            ],
          ),

            const SizedBox(height: 20),
            Image.asset(
              'assets/picsumPFN.jpg',
                  width: 400,
                 height: 250,
              fit: BoxFit.cover,
            ),


          ]

        ),
      ),
    );
  }
}


