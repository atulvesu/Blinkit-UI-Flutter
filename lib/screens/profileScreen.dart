import 'package:blinkit/style/dimension.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(fontSize: Dimensions.fontSize(12)),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'My account',
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: Dimensions.height(10),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text('Log in or sign up to your complete profile'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: Dimensions.margin(10)),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.green),
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(textAlign: TextAlign.center, 'Continue'),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            color: Color(0xffF0F8FF),
            padding: EdgeInsets.symmetric(
                horizontal: Dimensions.padding(40),
                vertical: Dimensions.padding(15)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(Icons.wallet),
                    Text('Wallet'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.wallet),
                    Text('Support'),
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.wallet),
                    Text('Payment'),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height(10),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.loop),
                    SizedBox(
                      width: Dimensions.width(10),
                    ),
                    Text('App update available'),
                  ],
                ),
                Container(color: Colors.grey.shade100, child: Text('v16.3.3')),
                Icon(Icons.arrow_right_outlined)
              ],
            ),
          ),
        ),
        SizedBox(
          height: Dimensions.height(10),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.padding(20),
            vertical: Dimensions.padding(10),
          ),
          child: Text('YOUR INFORMATION'),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Your orders'),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Address Book'),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimensions.padding(15),
            vertical: Dimensions.padding(10),
          ),
          child: Text('OTHER INFORMATION'),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('Share the app'),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
        ListTile(
          leading: Icon(Icons.book),
          title: Text('About us'),
          trailing: Icon(
            Icons.arrow_forward_ios_rounded,
            size: 15,
          ),
        ),
      ]),
    );
  }
}
