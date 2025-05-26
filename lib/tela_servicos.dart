import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({super.key});

  @override
  TelaServicoState createState() => TelaServicoState();
}

class TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.cyan,
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
                  Icon(Icons.business_center, color: Colors.cyan, size: 60),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text("Nossos serviços",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.cyan
                      ),
                    ),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Text(
                      "Planejamento",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Auditoria",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Acompanhamento de projetos",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Treinamentos",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Acessoria",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "Consultoria",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87
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
