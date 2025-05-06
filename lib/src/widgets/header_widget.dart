import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.0),
      //Importante para alinear los elementos
      alignment: Alignment.bottomCenter,
      height: 170.0,
      decoration: BoxDecoration(color: Color.fromARGB(255, 41, 40, 39)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "OnePiece",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Serie",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(126, 0, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton( 
                  onPressed: () {
                    
                  },
                  icon: 
                    Icon(
                      Icons.search, 
                      size: 28, 
                      color: Colors.white
                      )
                    ),
              ),
              const SizedBox(
                width: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(126, 0, 0, 0),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton( 
                  onPressed: () {
                    
                  },
                  icon: 
                    Icon(
                      Icons.notifications, 
                      size: 28, 
                      color: Colors.white
                      )
                    ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
