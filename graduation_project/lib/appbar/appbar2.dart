import 'package:flutter/material.dart';

String capitalizeWords(String text) {
  return text.split(" ").map((str) => str[0].toUpperCase() + str.substring(1).toLowerCase()).join(" ");
}
class appbar2 extends StatelessWidget implements PreferredSizeWidget {
  final Map userData;
  appbar2({super.key, required this.userData});


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.8),
                // spreadRadius:5,
                blurRadius: 50,
                offset: const Offset(0, 20),
              ),
            ],
          ),
        ),
        Positioned(
          child: AppBar(
            title: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/3403753 1.png'),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    capitalizeWords("${userData['fName'] + " " + userData['lName']}"),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF26A6FE),
                        ),
                  ),
                  const SizedBox(
                    width: 120,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'images/logo2.png',
                        width: 65,
                        height: 42,
                      ),
                      const Text('DentAIgnose',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF26A6FE)))
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(75.0);
}
