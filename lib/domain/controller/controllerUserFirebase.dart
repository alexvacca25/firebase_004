import 'package:firebase_004/data/services/peticionesUserFirebase.dart';
import 'package:get/get.dart';

class ControlUserAuth extends GetxController {
  final Rx<dynamic> _response = ''.obs;

  Future<void> crearUser(String email, String pass) async {
    _response.value = await Peticioneslogin.crearRegistroEmail(email, pass);
    print(_response.value);
  }

  Future<void> ingresarUser(String email, String pass) async {
    _response.value = await Peticioneslogin.ingresarEmail(email, pass);
    print(_response.value);
  }
}
