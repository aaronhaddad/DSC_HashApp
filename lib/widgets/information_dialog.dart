import 'package:flutter/material.dart';

void informationDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            mainAxisAlignment: MainAxisAlignment.center,  
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/caution.png',
                height: 30.0,
              ),
              Text(
                'Info',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Product Sans',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(
                  8.0,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'Product Sans',
                ),
              ),
            ],
          ),
          actions: [
            FlatButton(
              child: Text(
                'I get it',
              ),
              onPressed: () {
                return Navigator.pop(context);
              },
            ),
          ],
        );
      });
}
