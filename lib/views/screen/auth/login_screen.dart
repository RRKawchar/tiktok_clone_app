
import 'package:flutter/material.dart';
import 'package:tiktok_ui_clone_with_getx/constants.dart';
import 'package:tiktok_ui_clone_with_getx/views/widgets/text_input_field.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({Key? key}) : super(key: key);
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tiktok Clone",style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 35,
              color: buttonColor
            ),),
            const Text("Login",style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,

            ),),

            const SizedBox(height: 25,),
            Container(
              width: MediaQuery.of(context).size.width,
              margin:const EdgeInsets.symmetric(horizontal: 20),
              child: TextInputField(
                controller: emailController,
                labelText: 'Email',
                icon: Icons.email,
              ),
            ),
            const SizedBox(height: 25,),
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
                    print("Logger user");
                  },
                  child:const Text("Login",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),)),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? ",style: TextStyle(fontSize: 20),),
                InkWell(
                    onTap: (){
                      print("Register");
                    },
                    child: Text("Register",style: TextStyle(fontSize: 20,color: buttonColor),)),

              ],
            )

          ],
        ),
      )
    );
  }
}
