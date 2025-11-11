import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:syke/presentation/widget/layout/drawer_widget.dart';
import 'package:syke/services/login/login_services.dart';

class HomeScreen extends StatefulWidget {
  static final String routeName = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formController = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _isLoading = false;

  void loginSer ( BuildContext context) async {
    if(!_formController.currentState!.validate()){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: const Text("Por favor, ingrese todos los campos"),
        backgroundColor: Colors.red,
      ));
      return;
    }

    setState(() {
      _isLoading = false;
    });

    String msn = await LoginServices.getToken(_userController.text, _passwordController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Hola Home')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formController,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Login"),
                SizedBox(height: 16),
                TextFormField(
                  controller: _userController,
                  decoration: InputDecoration(
                    labelText: 'Usuario',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.person),
                  ),
                  validator: (value) {
                    return value == null || value.isEmpty
                        ? 'Usuario requerido'
                        : null;
                  },
                ),
                SizedBox(height: 16),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.key),
                  ),
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  validator: (value) {
                    return value == null || value.isEmpty
                        ? 'Contraseña requerida'
                        : null;
                  },
                ),
                SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton.icon(
                    icon: _isLoading
                        ? const CircularProgressIndicator()
                        : const Icon(Icons.login),
                    onPressed: () {
                      loginSer(context);
                    },
                    label: Text("Login"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
