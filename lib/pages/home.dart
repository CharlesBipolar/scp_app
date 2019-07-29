import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

TextEditingController TxtUsuario = TextEditingController();
TextEditingController TxtSenha = TextEditingController();
TextStyle estilo = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
OutlineInputBorder oiBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(20.0),
  borderSide: BorderSide(
    color: Color.fromARGB(255, 77, 77, 77),
  ),
);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 45, 45, 45),
      body: ListView(
        children: <Widget>[
          Container(width: MediaQuery.of(context).size.width,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20.0),
                Text(
                  "Mobile Unit Forces",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26.0,
                    fontFamily: "FiraMono-Regular",
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 25.0),
                Image.asset(
                  "images/newlogo.png",
                  width: 200.0,
                  height: 200.0,
                ),
                SizedBox(
                  height: 25.0,
                ),
                Text(
                  "hello agent."
                      "\nPlease log-in.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 180, 180, 180),
                    fontSize: 20.0,
                    fontFamily: "FiraMono-Regular",
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(width: 15.0,
                  height: 25.0,
                ),
                TextFormField(
                  controller: TxtUsuario,
                  validator: (String texto) {
                    if (texto.isEmpty) return "We can't find the agent";
                  },

                  obscureText: false,
                  style: estilo,
                  //InputDecoration serve para deixar o textField personalizado
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "Email:",
                  ),
                ),
                SizedBox(width: 25.0,
                  height: 15.0,
                ),
                TextFormField(
                  controller: TxtSenha,
                  validator: (String texto) {
                    if (texto.isEmpty) return "PassCode isn't validate";
                  },
                  obscureText: true,
                  style: estilo,
                  //InputDecoration serve para deixar o textField personalizado
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                    hintText: "PassCode:",
                  ),
                ),
                SizedBox(height: 20.0,),
                RaisedButton(onPressed: () {},
                  child: ButtonTheme(buttonColor: Colors.black,
                    child: Text("log-on"),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
