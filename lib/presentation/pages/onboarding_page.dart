import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/car_list_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2C2B34),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/onboarding.png'), fit: BoxFit.cover),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Premium cars. \nEnjoy the luxury",
                  style: TextStyle(color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 16),
                Text(
                  'Premium and prestige car daily rental. \nExperience the thrill at a lower price',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SizedBox(
                    width: double.infinity,
                    height: 54,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushAndRemoveUntil(MaterialPageRoute(builder: (context) => CarListScreen()), (route) => false);
                        },
                        style: ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white),
                        child: Text(
                          'Let\'s Go',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
