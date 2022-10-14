import '../Paths.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../UI/SignInScreen.dart';


class handleAuthState extends StatelessWidget {
  const handleAuthState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //User is not signed in
          if (!snapshot.hasData) {
            //return const SignInScreen(
            //providerConfigs: [
            //EmailProviderConfiguration(),
            // GoogleProviderConfiguration(clientId: '835296411177-oeg97ol5k748qn2btm5tlunbh0ltv8bt.apps.googleusercontent.com')
            //],);

            return SignInScreen();
          }
          return const MyHomePage(title: 'Klapp');
        });
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn(
    scopes: <String>["email"]).signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

CreateUserWithEmailandPassword(
    String email, String password, String name, BuildContext context) async {
  try {
    final credential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    final user = FirebaseAuth.instance.currentUser;
    await user?.updateDisplayName(name);


    Navigator.pop(context);
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      print('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      print('The account already exists for that email.');
    }
  } catch (e) {
    print(e);
  }
}

SignInWithEmailAndPassword(String email, String password) async {
  final credantial = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: password);
}
SignOut(){
  FirebaseAuth.instance.signOut();
}

