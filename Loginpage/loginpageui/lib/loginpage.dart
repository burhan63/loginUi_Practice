import 'package:flutter/material.dart';
import 'package:loginpageui/dashboard.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  login() {
    emailController.text;
    passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/Login-Page.jpg'),
            fit: BoxFit.fill,
          )),
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 150,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/kkkk.jpg'),
                      ),
                    ),
                    const Center(
                      child: Text(
                        "Khanzada Biryani House",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'CustomFont',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: emailController,
                      obscureText: false,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Your Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        prefixIcon: Icon(Icons.lock),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (emailController.text ==
                                  "Burhan.Ali11556688@gmail.com" &&
                              passwordController.text == "Burhan63") {
                            // Show success alert dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Success"),
                                  content: const Text(
                                      "Yahoo!!! Credentials are correct"),
                                  actions: [
                                    TextButton(
                                      child: const Text("OK"),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Dismiss alert dialog
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const DashboardView(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // Show error alert dialog
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text("Error"),
                                  content: const Text(
                                      "Sad!!! Credentials are not matched"),
                                  actions: [
                                    TextButton(
                                      child: const Text("Try Again"),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Dismiss alert dialog
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {},
                        ),
                        const Text('Remember Me'),
                        const SizedBox(
                          width: 90,
                        ),
                        const Text('Forget password?')
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Do You have an Account? Register',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                        height: 50,
                        width: 50,
                        child: ElevatedButton.icon(
                          icon: const Icon(
                            Icons.email_outlined,
                            color: Colors.green,
                            size: 30.0,
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Sign With Google',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 18,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.facebook_rounded,
                        color: Colors.blue,
                        size: 30.0,
                      ),
                      onPressed: () {},
                      label: const Text(
                        'Sign With Facebook',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(
                        Icons.attach_email,
                        color: Colors.lightBlue,
                        size: 30.0,
                      ),
                      onPressed: () {},
                      label: const Text(
                        'Sign With Twitter',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
