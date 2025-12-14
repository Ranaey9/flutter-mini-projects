import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url = 'https://avatars.githubusercontent.com/u/109630831?v=4';
  Widget _buildItem(String value, String label) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 94, 58, 10),
            ),
          ),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 248, 248),
        appBar: AppBar(centerTitle: true, title: Text("Profil Sayfası")),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  CircleAvatar(radius: 50, backgroundImage: NetworkImage(url)),
                  SizedBox(height: 16),
                  Text(
                    "Rana Eyüp",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 94, 58, 10),
                    ),
                  ),
                  Text(
                    "Flutter Geliştircisi",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 171, 158, 142),
                    ),
                  ),
                  SizedBox(height: 24),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          _buildItem('150', 'Takip'),
                          _buildItem('2.5k', 'takipçi'),
                          _buildItem('500', 'Göderi'),
                          
                        ],
                      ),
                    ),
                  ),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hakkımda',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 94, 58, 10),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Flutter geliştiricisi olarak mobil uygulamalar yapıyorum. '
                            'Flutter ile çapraz platform uygulamalar geliştiriyorum.',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
