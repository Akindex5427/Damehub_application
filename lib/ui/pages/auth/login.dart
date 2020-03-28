import 'package:damehub/model/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  bool signInForm;
  @override
  void initState() {
    super.initState();
    signInForm = true;
  }
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserRepository>(context);
    return WillPopScope(
      onWillPop: ()async{
        if(!signInForm) {
         setState(() {
            signInForm=true;
          });
          return false;
        }else{
          return true;
        }    
      },
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
            key: _key,
        body: Stack(
          fit: StackFit.expand,
              children: <Widget>[
               Image.asset(
                 'assets/images/log2.jpg',
                 fit: BoxFit.cover,
                 color: Colors.black87,
                 colorBlendMode: BlendMode.darken,
               ),
               SingleChildScrollView(
                    child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     Padding(
                   padding: EdgeInsets.all(15.0),
                     child: Image.asset(
                       "assets/images/icon.jpg",
                       height: 80.0,
                       width: 80.0,
                       )
                   ), 
              const SizedBox(height:30.0),
              user.status == Status.Authenticating ?
              Center(child: CircularProgressIndicator(backgroundColor: Colors.white,)) :
              RaisedButton(
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  child: Text("Continue with Google"),
                  onPressed: () async {
                            if (!await user.signInWithGoogle())
                              showMessage();
                        },   
                   ),
                  const SizedBox(height: 30.0),
                  AnimatedSwitcher(
                    child: signInForm ? LoginForm(showError: (message) => showMessage(message: message),)
                     : SignupForm
                    (showError: (message) => showMessage(message: message),),
                      duration: Duration(milliseconds: 200),
                    ),
                      const SizedBox(height: 20.0),
                      OutlineButton(
                      textColor: Colors.white,
                      child: signInForm ? Text("Sign Up", style: 
                      TextStyle(fontWeight:
                      FontWeight.bold,fontSize: 14.0,),) : Icon
                      (Icons.arrow_back),
                      onPressed: (){
                      setState(() {
                      signInForm = !signInForm;
                      });
                     },
                      color: Colors.white,
                      borderSide: BorderSide(color: 
                      Colors.redAccent),
                      highlightColor: Colors.white70,
                    
                        ), 
                       ]
                      ),
                    ),
                  ],
                ),
               ),
              );
           }
       

         void showMessage({String message = "Something is wrong"}) {
           _key.currentState.showSnackBar(SnackBar(
                                content: Text(message),
                              ));
         }
}

class LoginForm extends StatefulWidget {
  final Function showError;

  const LoginForm({Key key, this.showError}) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final FocusNode passwordField =  FocusNode();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _email;
  TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserRepository>(context);
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7.0)
      ),
        child: Form(
          key: _formKey,
                  child: Column(
            children: <Widget>[   
              Text("Login", style: Theme.of
              (context).textTheme.display1,),
              const SizedBox(height: 20.0),                   
              TextFormField(
                validator: (value) {
                  if(value.isEmpty)
                  return "Email is required";
                },
                controller: _email,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                 labelText: "email address"
               ),
               onEditingComplete: (){
                 FocusScope.of(context).requestFocus(passwordField);
               },
             ),
             const SizedBox(height: 14.0),
             TextFormField(
               validator: (value) {
                 if(value.isEmpty)
                 return "password is required";
               },
               obscureText: true,
               controller: _password,
               focusNode: passwordField,
               decoration: InputDecoration(
                 labelText: "password"
               ),
             ),
             const SizedBox(height: 20.0),
             Container(
               width: double.infinity,
               padding: const EdgeInsets.symmetric(
                 horizontal: 30.0,
                ),
               child: user.status == Status.Authenticating ?
                Center(child: CircularProgressIndicator()) : RaisedButton(
                textColor: Colors.white,
                child: Text("Login"),
                onPressed: () async {
                if (_formKey.currentState.validate()) {
                  if(!await user.signIn(_email.text, _password.text))
                    widget.showError();
                   }
                  },
                 ),
               ),
            ],
          ),
        )
      );
  }
}

class SignupForm extends StatefulWidget {
  final Function showError;

  const SignupForm({Key key, this.showError}) : super(key: key);
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final FocusNode nameField = FocusNode();
  final FocusNode passwordField =  FocusNode();
  final FocusNode confirmpasswordField =  FocusNode();
  TextEditingController _name;
  TextEditingController _email;
  TextEditingController _password;
  TextEditingController _confirmPassword;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String gender;
  String groupValue = "male";

  @override
  void initState() {
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserRepository>(context);
    return Container(
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.3),
        borderRadius: BorderRadius.circular(7.0)
      ),
        child: Form(
          key: _formKey, 
                  child: Column(
            children: <Widget>[   
              Text("Sign up", style: Theme.of
              (context).textTheme.display1,),
               const SizedBox(height: 20.0),                   
              TextFormField(
                controller: _name,
                validator: (value) {
                  if(value.isEmpty)
                  return "Full name is required";
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                 labelText: "Full name"
               ),
               onEditingComplete: (){
                 FocusScope.of(context).requestFocus(nameField);
               },
             ),
             const SizedBox(height: 20.0), 
             Padding(padding: const EdgeInsets.fromLTRB(13.0, 7.0, 13.0, 7.0),
             child: Container(
               color: Colors.white.withOpacity(0.3),
               child: Row(
                 children: <Widget>[
                   Expanded(
                     child: ListTile(
                       title: Text(
                         "male",
                         textAlign: TextAlign.end,
                         style: TextStyle(color: Colors.white),
                       ),
                       trailing: Radio(
                         value: "male", 
                       groupValue: groupValue, 
                       onChanged: (e) => valueChanged(e)),
                     )),
                     Expanded(
                     child: ListTile(
                       title: Text(
                         "female",
                         textAlign: TextAlign.end,
                         style: TextStyle(color: Colors.white),
                       ),
                       trailing: Radio(
                         value: "female", 
                         groupValue: groupValue, 
                         onChanged: (e) => valueChanged(e)),
                     )), 
                 ]
               )
             )
             ),
              const SizedBox(height: 20.0),                   
              TextFormField(
                controller: _email,
                validator: (value) {
                  if(value.isEmpty)
                  return "Email is required";
                },
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                 labelText: "email address"
               ),
               onEditingComplete: (){
                 FocusScope.of(context).requestFocus(passwordField);
               },
             ),
             const SizedBox(height: 14.0),
             TextFormField(
               validator: (value) {
                  if(value.isEmpty)
                  return "password is required";
                },
               obscureText: true,
               controller: _password,
               focusNode: passwordField,
               decoration: InputDecoration(
                 labelText: "password"
               ),
               onEditingComplete: ()=>FocusScope.of(context).requestFocus
               (confirmpasswordField),
             ),
             const SizedBox(height: 14.0),
             TextFormField(
               obscureText: true,
               controller: _confirmPassword,
               validator: (value) {
                  if(value.isEmpty)
                  return "confirm password is required";
                },
               focusNode: confirmpasswordField,
               decoration: InputDecoration(
                 labelText: "confirm password"
               ),
             ),
             const SizedBox(height: 20.0),
             Container(
               width: double.infinity,
               padding: const EdgeInsets.symmetric(
                 horizontal: 30.0,
               ),
               child: user.status == Status.Authenticating ?
                 Center(child: CircularProgressIndicator()) : RaisedButton(
                 textColor: Colors.white,
                 child: Text("Create Account"),
                 onPressed: () async {
                   if (_formKey.currentState.validate()) {
                     if(_confirmPassword.text == _password.text)
                        if(!await user.signUp(_email.text, _password.text))
                        widget.showError();
                        }
                      else
                        widget.showError("Password and confirm password does not match");
                     
                    },
                 ),
               ),
            ],
          ),
        )
      );
  }

  valueChanged(e) {
    setState(() {
      if (e == "male") {
        groupValue = e;
        gender = e;
      } else if (e == "female") {
        groupValue = e;
        gender = e;
      }
    });
  }
}
