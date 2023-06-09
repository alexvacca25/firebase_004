import 'package:firebase_004/domain/controller/controllerUserFirebase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    //ControlUser controlu = Get.find();
    // ControlNotes controln = Get.find();
    //ControlArticles controla = Get.find();
    //ControlStudent controle = Get.find();
    //ControlPets controlp = Get.find();
    ControlUserAuth controlua = Get.find();
    controlua.verLocal();
    TextEditingController user =
        TextEditingController(text: controlua.emailLocal);
    TextEditingController pass =
        TextEditingController(text: controlua.passwdLocal);
    controlua.ingresarUser(user.text, pass.text).then((value) {
      if (controlua.userValido == null) {
        Get.snackbar("Usuarios", controlua.mensajesUser,
            duration: const Duration(seconds: 4),
            backgroundColor: Colors.amber);
      } else {
        Get.snackbar("Usuarios", controlua.mensajesUser,
            duration: const Duration(seconds: 4),
            backgroundColor: Colors.amber);
        Get.toNamed("/perfil");
      }
    });
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/login.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
            padding: const EdgeInsets.only(left: 35, top: 80),
            child: const Text(
              "Bienvenidos\nProgramacion Movil",
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.5),
              child: Column(children: [
                TextField(
                  controller: user,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Entrar',
                      style: TextStyle(
                        color: Color(0xff4c505b),
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color(0xff4c505b),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          controlua
                              .ingresarUser(user.text, pass.text)
                              .then((value) {
                            if (controlua.userValido == null) {
                              Get.snackbar("Usuarios", controlua.mensajesUser,
                                  duration: const Duration(seconds: 4),
                                  backgroundColor: Colors.amber);
                            } else {
                              Get.snackbar("Usuarios", controlua.mensajesUser,
                                  duration: const Duration(seconds: 4),
                                  backgroundColor: Colors.amber);
                              Get.toNamed("/perfil");
                            }
                          });
                        },
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Get.toNamed("/register");
                        },
                        child: const Text(
                          'Registrarse',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Recordar Contraseña',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            color: Color(0xff4c505b),
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
