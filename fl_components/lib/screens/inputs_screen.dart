import 'package:fl_components/widgets/custom_input_field.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'firt_name': 'Juan',
      'last_name': 'Rojas',
      'email': 'jfroj@google.com',
      'password': '123456',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre usuario',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido usuario',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo usuario',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña usuario',
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: const Text('Guardar'))),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      // Imprimr valores de formulario
                      print(formValues);
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
