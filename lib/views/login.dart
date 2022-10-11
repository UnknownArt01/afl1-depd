part of "tampilan.dart";

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

class _Login extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlEmail = TextEditingController();
  final ctrlPass = TextEditingController();
  final ctrlNama = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();
  bool isVisible = true;

  @override
  void dispose() {
    ctrlEmail.dispose();
    ctrlPass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fill Yor Form"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(32),
        child: Form(
            key: _loginKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    icon: Icon(Icons.email_outlined),
                    hintText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: ctrlEmail,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return EmailValidator.validate(value.toString())
                        ? null
                        : "Email Invalid";
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "Name",
                    icon: Icon(Icons.person),
                    hintText: "Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: ctrlNama,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Fields cannot be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    labelText: "City",
                    icon: Icon(Icons.place_outlined),
                    hintText: "City",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: ctrlCity,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Fields cannot be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    icon: Icon(Icons.phone_android),
                    hintText: "0821*********",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  controller: ctrlPhone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    return value.toString().isEmpty
                        ? 'Fields cannot be empty!'
                        : null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: isVisible ? true : false,
                  decoration: InputDecoration(
                    labelText: "Password",
                    icon: Icon(Icons.key_off_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      child: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                  controller: ctrlPass,
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_loginKey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              actions: [
                                ElevatedButton(
                                  onPressed: (() {
                                    Navigator.pushAndRemoveUntil<dynamic>(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()),
                                        ((route) => false));
                                  }),
                                  child: Text("OK"),
                                )
                              ],
                              title: Text("CUCESS"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("${ctrlEmail.text.toString()}"),
                                  Text("${ctrlNama.text.toString()}"),
                                  Text("${ctrlPhone.text.toString()}"),
                                  Text("${ctrlEmail.text.toString()}"),
                                  Text("${ctrlCity.text.toString()}"),
                                  Text("Silahkan kembali ke halaman menu "),
                                ],
                              ),
                            );
                          },
                        );
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("INVALID"),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [Text("Please fill all the field!")],
                              ),
                            );
                          },
                        );
                      }
                    },
                    child: Text("Submit"))
              ],
            )),
        alignment: Alignment.center,
      ),
    );
  }
}
