import 'package:app1/activities.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('My Fitness App'),
      ),
      body: Column(
        children: [
          //Text('Activities',style: TextStyle(fontSize: 20),),
          Text(
            'Users',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 25,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Activities()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey.shade200,
                        child: ListTile(
                          leading: Icon(Icons.verified_user),
                          title: Text('User $index'),
                        ),
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
