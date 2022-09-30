import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF454443),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              'Toque para escuchar',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              height: 150,
            ),
            AvatarGlow(
              animate: true,
              endRadius: 180.0,
              glowColor: Colors.red,
              child: GestureDetector(
                onTap: () => print('AAAAAAAAAAAAAAAAAAAAAAAAAA'),
                child: Material(
                  shape: CircleBorder(),
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(30),
                    height: 200,
                    width: 200,
                    child: Image.asset('../assets/music.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Material(
              shape: CircleBorder(),
              elevation: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                height: 35,
                width: 35,
                child: Image.asset('../assets/corazon.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
