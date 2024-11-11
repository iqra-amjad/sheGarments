
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:she_garments/authentications/signupScreen.dart';

class login extends StatefulWidget {


  login({super.key});

  @override
  State<login> createState() => _loginViewState();
}

class _loginViewState extends State<login> {

  final emailController= TextEditingController();

  final passwordController= TextEditingController();

  bool _isObsecured= true;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(padding: EdgeInsets.only(
          left: 15,
        top: 20
      ),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Center(child: Container(height: 100,width: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://newshegarments.com/wp-content/uploads/2024/09/she_0000_Group-1-copy.png',),),
              )),
              SizedBox(height: 20,),

              Text('Log in to your account!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  color: Colors.pink.shade300
                ),),

              Text('To keep connected with us please login with your\npersonal info',
                style: TextStyle(
                    color: Colors.grey
                ),),

              SizedBox(height: 60,),

              Center(
                child: Container(padding: EdgeInsets.only(
                    left: 20
                ),
                  width: 370,height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextField(controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                      border: InputBorder.none,

                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Center(
                child: Container(padding: EdgeInsets.only(
                    left: 20
                ),
                  width: 370,height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300
                  ),
                  child: TextField(
                    obscureText: _isObsecured,
                    controller: passwordController,
                    decoration: InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none,
                        suffixIcon: IconButton(onPressed: (){
                          setState(() {
                            _isObsecured = !_isObsecured;
                          });
                        }, icon: Icon(_isObsecured? Icons.visibility_off: Icons.visibility))
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),

              Center(
                child: Container(width: 370,height: 60,
                  child: MaterialButton(onPressed: (){
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    color: Colors.pink.shade300,


                    child: Text('Log in',
                      style: TextStyle(
                          color: Colors.white
                      ),),
                  ),
                ),
              ),

              SizedBox(height: 50,),

              Center(child:
              Text('Or continue with',
                style: TextStyle(
                    color: Colors.grey
                ),),),

              SizedBox(height: 20,),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey.shade300,
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                      ),

                    ),
                    width: 370,height: 60,
                    child: MaterialButton(onPressed: (){},
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(height: 30,width: 30,

                              child: Image.network
                                ('https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Google_%22G%22_logo.svg/768px-Google_%22G%22_logo.svg.png',
                                fit: BoxFit.fill,)),

                          SizedBox(width: 10,),

                          Text('Sign in with Google',
                            style: TextStyle(
                                fontSize: 15
                            ),)

                        ],
                      ),)
                ),
              ),
              SizedBox(height: 20,),

              Container(
                child: Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account?'),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));
                        },
                        child: Text('Sign up',
                          style: TextStyle(
                              color: Colors.pink.shade300,
                              fontSize: 15
                          ),),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
