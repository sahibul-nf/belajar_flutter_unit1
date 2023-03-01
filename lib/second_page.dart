import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              child: Image.network(
                "https://ssl.gstatic.com/docs/common/profile/capybara_lg.png",
                height: 90,
                width: 90,
              ),
            ),
            Container(
              color: Colors.blue,
              child: Image.asset(
                "assets/capybara_lg.png",
                height: 90,
                width: 90,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Kembali ke halaman sebelumnya"),
            )
          ],
        ),
      ),
    );
  }
}
