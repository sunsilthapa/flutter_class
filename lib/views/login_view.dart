import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final key = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Center(
            child: Expanded(
                child: Text(
          "Bakery Shop",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
        ))),
      ),
      body: SafeArea(
        child: Form(
          key: key,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Image.asset("assets/images/login.jpg", height: MediaQuery.of(context).size.height/0.4,),
              const Text(
                'Welcome Back',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.612),
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 200,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
                      labelText: "Username",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ))),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35.0),
                child: TextFormField(
                  controller: userController,
                  decoration: const InputDecoration(
                      labelText: "Password",
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ))),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Align(
                alignment:Alignment.centerRight, child: Text("Forget password", style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),)),
              const SizedBox(
                height: 30,
              ),
              Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: ElevatedButton(
                      child: const Text("Login"),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35.0),
                    child: ElevatedButton(
                      child: const Text("SignUp"),
                      onPressed: () {},
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
