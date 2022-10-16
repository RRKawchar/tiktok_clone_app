import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone_with_getx/constants.dart';
import 'package:tiktok_ui_clone_with_getx/views/widgets/text_input_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final TextEditingController userNameController=TextEditingController();
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Tiktok Clone",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 35,
                    color: buttonColor
                ),),
                const Text("Register",style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 25,

                ),),
                const SizedBox(height: 25,),
                Stack(
                  children: [
                    const CircleAvatar(
                      radius: 64,
                      backgroundImage: NetworkImage("https://www.pngitem.com/pimgs/m/150-1503945_transparent-user-png-default-user-image-png-png.png"),
                      backgroundColor: Colors.black,
                    ),
                    Positioned(
                      bottom: -10,
                        left: 80,
                        child: IconButton(
                          onPressed: (){
                            authController.pickImage();
                          },
                          icon: const Icon(Icons.add_a_photo),
                        )
                    )
                  ],
                ),
                const SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInputField(
                    controller: userNameController,
                    labelText: 'UserName',
                    icon: Icons.person,
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInputField(
                    controller: emailController,
                    labelText: 'Email',
                    icon: Icons.email,
                  ),
                ),
                const SizedBox(height: 15,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin:const EdgeInsets.symmetric(horizontal: 20),
                  child: TextInputField(
                    controller: passController,
                    labelText: 'Password',
                    icon: Icons.lock,
                  ),
                ),
                const SizedBox(height: 30,),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width-40,
                  height: 50,
                  decoration: BoxDecoration(
                      color:buttonColor,
                      borderRadius:const BorderRadius.all(
                          Radius.circular(5)
                      )
                  ),
                  child:InkWell(
                      onTap: (){
                        authController.registerUser(
                            userNameController.text,
                            emailController.text,
                            passController.text,
                            authController.profilePhoto
                        );
                      },
                      child:const Text("Register",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? ",style: TextStyle(fontSize: 20),),
                    InkWell(
                        onTap: (){
                          print("Register");
                        },
                        child: Text("Login.",style: TextStyle(fontSize: 20,color: buttonColor),)),

                  ],
                )

              ],
            ),
          ),
        )
    );
  }
}
