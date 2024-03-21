import 'package:flutter/material.dart';
import 'package:resume_builder_app/utils/route_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Welcome To Resume App"),
        flexibleSpace: const Image(
          image: NetworkImage(
            "https://i.pinimg.com/564x/9b/20/0d/9b200dc0a860cd5e4ef8e4d0cea1c15a.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://i.pinimg.com/564x/9b/20/0d/9b200dc0a860cd5e4ef8e4d0cea1c15a.jpg",
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                MyRoutes.buildoptionpage,
              );
            },
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.2,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(3, 3),
                          blurRadius: 5,
                        ),
                      ],
                      color: Color(0xff789461),
                    ),
                    alignment: Alignment.center,
                    child: const Text(
                      "+ Creat New Resume ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
