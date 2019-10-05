import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
           padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Center(
            child: TextField( decoration: InputDecoration(
              hintText: 'Search ...',
              fillColor: Colors.white,
              hoverColor: Colors.blueAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0)
              ),
              suffixIcon: Icon(Icons.search),
            ),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.title,
            keyboardType: TextInputType.text,
            
            ),
          )
        ),
      ],
    );
  }
}