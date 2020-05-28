import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {

  List<Widget> pageChildren(double width){
    return <Widget>[
      Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Website \nDevlopers",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.white
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text("We have taken each and every project handed over to us as a challenge "
                  "\nwhich has helped us achieve a high project success rate.",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),),
            ),
            MaterialButton(
              onPressed: (){},
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                child: Text("Our Packages",
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset("assets/images/lp_image.png",
        width: width),
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth > 800){
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width/2),
          );
        }else{
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: pageChildren(constraints.biggest.width/2)
          );
        }
      },
    );
  }
}
