import 'package:flutter/material.dart';
import 'package:one_piece/src/animations/fade_animation.dart';
import 'package:one_piece/src/widgets/blur_container.dart';
import 'package:one_piece/src/widgets/infotitle_widget.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.color,
    required this.nombre,
    required this.image,
  });

  final int color;
  final String image;
  final String nombre;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  double altopantalla = 0;

  @override
  Widget build(BuildContext context) {
    altopantalla = MediaQuery.of(context).size.height;
    var row = Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InfoTitle(subtitle: "Creador", title: "Ciichiro Oda"),
                  InfoTitle(subtitle: "Pais", title: "Japon"),
                ],
              );
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(widget.color), (Colors.black)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 12),
                  child: SizedBox(height: altopantalla*.60, 
                    child: Hero(
                      tag: widget.color, 
                      child: Image.asset(widget.image)
                    )
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: FadeAnimation(
                    intervaleEnd: 0.8,
                    child: BlurContainer(
                      child: Container(
                        width: 160,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                        child: Text(
                          widget.nombre,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(
                intervalStart: 0.3,
                child: Text(
                  "${widget.nombre} #personaje",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(intervalStart: 0.35,child: Text("One Piece", style: TextStyle(color: Colors.white70))),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: FadeAnimation(intervalStart: 0.4,child: row),
            ),
            const Spacer(),
            FadeAnimation(
              intervalStart: 0.5,
              child: GestureDetector(
                onTap: (){Navigator.pop(context);},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(widget.color)
                  ),
                  child: Text("Volver", style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
