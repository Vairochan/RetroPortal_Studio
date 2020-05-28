import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints){
        if(constraints.maxWidth>1200){
          return DesktopNavBar();
        }else if(constraints.maxWidth > 800 && constraints.maxWidth < 1200){
          return DesktopNavBar();
        }else{
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("RetroPortal Studio",
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.w100
            ),),
            Row(
              children: [
                Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Portfolio",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),
                ),
                SizedBox(
                width: 30,
                ),
                MaterialButton(
                  color: Colors.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: (){},
                  child: Text("Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20
                  ),),
                )
                ],
            )
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
      child: Container(
        child: Column(
            children: [
              Text("RetroPortal Studio",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold
                ),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "About Us",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Portfolio",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),

                  ],
                ),
              )
            ]
        ),
      ),
    );
  }
}


