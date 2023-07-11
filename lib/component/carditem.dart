import 'package:flutter/material.dart';



class Carditem extends StatelessWidget {
  final String image, title, description;
  final Color titlecolor;
  final int id, time;
  final void Function() press;
  const Carditem({
    super.key, required this.image, required this.title, required this.description, required this.titlecolor, required this.id, required this.time, required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Card(
        color: Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 8),
              child: SizedBox(
                height: 56,
                width: 56,
                child: Image.asset(image,

                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80,bottom: 5, top:5),
                      child: Text(title,
                      style: TextStyle(
                          color: titlecolor,
                        fontSize: 16,
                          fontFamily: 'Readex Pro'
                      ),
                      ),
                    ),
                    Container(
                      width: 260, // Adjust the width as needed
                      height: 42, // Adjust the height as needed
                      // Adjust the box color as desired
                      padding: EdgeInsets.only(top: 5,bottom: 2), // Adjust the padding as desired
                        child: Text(
                          description,
                          style: const TextStyle(fontSize: 12, color: Colors.grey, fontFamily: 'Readex Pro',), // Adjust the font size as desired
                        ),

                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 150, bottom: 2),
                      child: Text("${time} sec ago",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontFamily: 'ReadexPro',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ), // Replace with the appropriate title from your data
      ),
    );
  }
}