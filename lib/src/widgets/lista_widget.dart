import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:one_piece/src/pages/detail_page.dart';

class ListaWidget extends StatefulWidget {
  const ListaWidget({super.key});

  @override
  State<ListaWidget> createState() => _ListaWidgetState();
}

class _ListaWidgetState extends State<ListaWidget> {

  double anchoPantalla = 0;

  @override
  Widget build(BuildContext context) {

    //Sacar la medida de la pantalla en la que estamos trabajando
    anchoPantalla = MediaQuery.of(context).size.width-50;

    return Expanded(
      child: ListView(
        padding: EdgeInsets.all(25),
        children: [
          Text("Portadas",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),

          SizedBox(
            height: 15,
          ),

            

          Row(


            children: [
              bloquesPortada("Portada 1", "p1.jpg", "  2018"),
              SizedBox(width: 12),
              
              
              bloquesPortada("Portada 2", "p2.jpg", "  2022"),
              SizedBox(width: 12),
              
              
              bloquesPortada("Portada 3", "p3.jpg", "  2025")
            ],
          ),

          const Divider(
            //grosor del divider
            thickness: 1,
            color: Color.fromARGB(255, 62, 62, 62),
          ),

          const SizedBox(
            height: 20,
          ),
          bloquePersonajes("Brook", 0xff4913C4, "o1"),
          bloquePersonajes("Luffy", 0xffF82A2D, "o2"),
          bloquePersonajes("Portgas D. ACe", 0xffFFCB28, "o3"),
          bloquePersonajes("Boa Hancock", 0xffFE4649, "o4"),
          bloquePersonajes("Boa Hancock", 0xffDF1C6A, "o5"),
          bloquePersonajes("Roronoa Zoro", 0xff21E295, "o6"),
        ],
      ),
    );
  }

  Column bloquesPortada(String titulo, String imagen, String subtitulo){
    return Column(
      children: [
        //Alberga imagenes con bordes
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.asset(
            "assets/$imagen",
            width: anchoPantalla*0.31,
            height: 110,
            //Escalar la imagen
            fit: BoxFit.cover,
            ),
            

        ),
        const SizedBox(
          height: 15
        ),
        //Rich text nos ayudara a poner textos con diferentes estilos
        RichText(text: TextSpan(
          text: titulo, style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          children: [
            TextSpan(
              text: subtitulo,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w300,
                fontSize: 12
              )
            )
          ]
        ))
      ],
    );
  }

  //Codigo para lo de las imagenes
  Widget bloquePersonajes(String nombre, int color, String imagen){
      return GestureDetector(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(builder: ((context) => DetailPage(color: color, image: "assets/$imagen.png",nombre: nombre,))));
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 20),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Color.fromARGB(66, 43, 43, 43),
            borderRadius: BorderRadius.circular(15)
          ),
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
        
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(color),
                          blurRadius: 8,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                          blurStyle: BlurStyle.normal
                          
                        )
                      ],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    padding: EdgeInsets.all(8),

                    child: Hero(
                      tag: color, 
                      child: Image.asset("assets/$imagen.png"),
                    )
                    
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Text(nombre, style: TextStyle(
                    fontSize: 16,
                    color: Colors.white
                  ),)
                ],
              ),
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_rounded, color: Colors.grey))
            ],
          ),
        ),
      );
    }
}