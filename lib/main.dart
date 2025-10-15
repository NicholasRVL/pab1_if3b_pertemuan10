import 'dart:ui';

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GaleriPage()),
                    );
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




class GaleriPage extends StatefulWidget {
  const GaleriPage({super.key});

  @override
  State<GaleriPage> createState() => _GaleriPageState();
}

class _GaleriPageState extends State<GaleriPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Galeri Foto', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,

      ),
      body: Center(
        child: Column(
          children: [

            Image.asset(
              'assets/picsumPFN2.jpg',
              width: 500,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
            ),

            SizedBox(height: 30,),

            Text("Jalan Di Barcelona", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),

            SizedBox(height: 30,),

            Container(
              width: 370,
              height: 100,
              padding: const EdgeInsets.symmetric(
                vertical: 1,
              ),
              decoration: BoxDecoration(color: Colors.grey),

              child: Stack(
                children: [
                   Container(
                    color: Colors.white,
                    width: 370,
                    height: 100,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                            children: [
                        Icon(Icons.location_on, color: Colors.red, size: 30,),
                        Text("Lokasi : Barcelona, Spanyol"),
                          ]
                        ),
                        
                        SizedBox(height: 2),

                        Row(
                          children: [
                            Icon(Icons.calendar_month, color: Colors.blue, size: 30,),
                            Text("Publikasi : 13 Agustus 2013"),

                          ]
                        )
                      ],
                    ),

                  ),
                ],
              ),

            ),


            SizedBox(height: 20),


            Container(
              width: 370,
              height: 100,
              
              child: Stack(
                children: [
                  Container(
                    width: 370,
                    height: 100,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text("Deskripsi", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                          ],
                        ),
                        Row(
                          children: [
                           Expanded(child: Text("Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.", style: TextStyle(fontSize: 12),))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
            



          ],
        ),
      ),
    );
  }
}