import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';

main() async {
  // Mock sign in with Google.
  final googleSignIn = MockGoogleSignIn();
  final signInAccount = await googleSignIn.signIn();
  final googleAuth = await signInAccount.authentication;
  final AuthCredential credential = GoogleAuthProvider.getCredential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );
  // Sign in.
  test('testing signin', () async {
    final auth = MockFirebaseAuth();
    final actual = await auth.signInWithEmailAndPassword(
        email: "abc@gmail.com", password: "khkj");
//  final result = await auth.signInWithCredential(credential);
//  final user = await result.user;
    final user = actual.user;
    print(user.displayName);
  });
}
