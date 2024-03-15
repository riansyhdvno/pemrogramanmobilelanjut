import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:tes/PageMINavigatorBar.dart';
import 'package:tes/PageTKNavigatorBar.dart';

class PageLatihan extends StatelessWidget {
  const PageLatihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'gambar/pnp.png',
                fit: BoxFit.contain,
                height: 100,
                width: 100,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'Selamat Datang di Politeknik Negeri Padang',
                style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontWeight: FontWeight.bold),
                ),
          Text(
            'Limau Manis, Padang, Sumatera Barat',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(onPressed: () {
                showToast('Manajemen Informatika',
                context: context,
                  animation: StyledToastAnimation.slideFromTop,
                  reverseAnimation: StyledToastAnimation.slideFromTop,
                  position: StyledToastPosition.top,
                  startOffset: Offset(0.0, -3.0),
                  reverseEndOffset: Offset(0.0, -3.0),
                  duration: Duration(seconds: 4),
                  animDuration: Duration(seconds: 1),
                  curve: Curves.elasticOut,
                  reverseCurve: Curves.fastOutSlowIn
                );
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PageMINavigatorBar()));
              },
                child: Text(
                  'Manajemen Informatika',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                color: Colors.orange,
                textColor: Colors.white,
              ),
              SizedBox(
                height: 8,
              ),
              MaterialButton(
                  onPressed: () {
                    showToast(
                      'Teknik Komputer',
                      context: context,
                      axis: Axis.horizontal,
                      alignment: Alignment.center,
                      position: StyledToastPosition.bottom,
                      toastHorizontalMargin: 20,
                      fullWidth: true
                    );
                    Navigator.push(
                        context,
                    MaterialPageRoute(
                        builder: (context) => PageTKNavigatorBar ()));
                  },
                child: Text(
                  'Teknik Komputer',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
                color: Colors.orange,
                textColor: Colors.white,
                  )
            ],
          ),
        ),
      ),

    );
  }
}

