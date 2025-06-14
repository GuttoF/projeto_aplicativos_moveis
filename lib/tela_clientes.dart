import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({super.key});
  
  @override
  TelaClienteState createState() => TelaClienteState();
}

class TelaClienteState extends State<TelaCliente> {
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Clientes"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.group, color: Colors.pink, size: 60),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Clientes",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.pink
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 32),
              Center(
                child: Column(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => _launchURL('https://www.facebook.com'),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink.shade100,
                            radius: 50,
                            child: Icon(MdiIcons.facebook, size: 50, color: Colors.pink),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Facebook",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    
                    GestureDetector(
                      onTap: () => _launchURL('https://www.google.com'),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink.shade100,
                            radius: 50,
                            child: Icon(MdiIcons.google, size: 50, color: Colors.pink),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Google",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    
                    GestureDetector(
                      onTap: () => _launchURL('https://www.apple.com'),
                      child: Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.pink.shade100,
                            radius: 50,
                            child: Icon(MdiIcons.apple, size: 50, color: Colors.pink),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Apple",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}