import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:last_8/Features/auth/presentation/manger/cubit/auth_cubit.dart';
import 'package:last_8/Features/auth/presentation/views/widgets/custom_text_form_field.dart';
import 'package:last_8/Features/auth/presentation/views/widgets/gender.dart';
import 'package:last_8/Features/auth/validators/validators.dart';
import 'package:last_8/core/style/string_app.dart';
import 'package:last_8/core/style/styles.dart';
import 'package:last_8/core/widgets/custom_app_bar.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phonenumber = TextEditingController();
  TextEditingController nationalId = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController token = TextEditingController();
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(text: StringApp.titleappbarRegisterScreen),
      body: Padding(
        padding: EdgeInsets.only(top: 30, left: 20, right: 20),
        child: BlocProvider(
          create: (context) => AuthCubit(),
          child: Form(
            key: formstate,
            child: BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) async {
                if (state is Authsuccess) {
                  var userData = await state.user;
                  if (userData["status"] == "success") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.purple,
                        content: Text(
                          userData["message"],
                          style: Styles.textstyle18,
                        ),
                      ),
                    );
                  }
                  if (userData["status"] == "error") {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.red,
                        content: Text(
                          userData["message"],
                          style: Styles.textstyle18,
                        ),
                      ),
                    );
                  }
                }
              },
              builder: (context, state) {
                return BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    AuthCubit authCubit = BlocProvider.of(context);
                    return SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Please upload your image",
                                style: Styles.textstyle18,
                              ),
                              authCubit.image == null
                                  ? MaterialButton(
                                    onPressed: () {
                                      authCubit.addImage();
                                    },
                                    child: const Icon(Icons.camera, size: 80),
                                  )
                                  : Container(
                                    height: 80,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: FileImage(authCubit.image!),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                            ],
                          ),
                          CustomTextFormField(
                            labeltext: "username",
                            hinttext: "Enter Your username",
                            mycontroller: username,
                            validator: (value) {
                              return MyValidators.displayNameValidator(value);
                            },
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.person,
                                color: Colors.purple[800],
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 15),
                          CustomTextFormField(
                            labeltext: "Email",

                            hinttext: "Enter Your Email",
                            inputType: TextInputType.emailAddress,
                            mycontroller: email,
                            validator: (value) {
                              return MyValidators.emailValidator(value);
                            },
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.email,
                                color: Colors.purple[800],
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 15),
                          CustomTextFormField(
                            labeltext: "Phone",
                            hinttext: "Enter Your Phone",
                            inputType: TextInputType.phone,
                            mycontroller: phonenumber,
                            validator: (value) {
                              return MyValidators.phoneValidator(value);
                            },
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.phone,
                                color: Colors.purple[800],
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 15),

                          CustomTextFormField(
                            labeltext: " National Id",
                            hinttext: " Enter National Id",
                            inputType: TextInputType.number,
                            mycontroller: nationalId,
                            validator: (value) {
                              return MyValidators.nationalIdValidator(value);
                            },
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.card_membership,
                                color: Colors.purple[800],
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 15),
                          CustomTextFormField(
                            labeltext: "Password",
                            hinttext: "Enter Password",
                            mycontroller: password,
                            validator: (value) {
                              return MyValidators.passwordValidator(value);
                            },
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  obscureText = !obscureText;
                                });
                              },
                              icon: Icon(
                                obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.lock, color: Colors.purple[800]),
                            ),
                            obscureText: obscureText,
                          ),
                          SizedBox(height: 15),

                          CustomTextFormField(
                            labeltext: "Token",
                            hinttext: " Enter Token",
                            inputType: TextInputType.number,
                            mycontroller: token,
                            validator: (value) {
                              return MyValidators.tokenValidator(value);
                            },
                            prefixIcon: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.token,
                                color: Colors.purple[800],
                              ),
                            ),
                            obscureText: false,
                          ),
                          SizedBox(height: 15),
                          GenderSelection(genderController: gender),
                          SizedBox(height: 15),

                          MaterialButton(
                            height: 60,
                            color: Colors.purple,
                            minWidth: double.infinity,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(27),
                            ),
                            onPressed: () {
                              if (formstate.currentState!.validate()) {
                                print("===================================");
                                authCubit.postdatacubit(
                                  name: username.text,
                                  email: email.text,
                                  phone: phonenumber.text,
                                  nationalId: nationalId.text,
                                  gender: gender.text,
                                  password: password.text,
                                  token: token.text,
                                );
                              }
                            },
                            child: Text("Sign in", style: Styles.textstyle20),
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
