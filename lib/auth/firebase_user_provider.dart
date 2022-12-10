import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class AnovoFirebaseUser {
  AnovoFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

AnovoFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<AnovoFirebaseUser> anovoFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<AnovoFirebaseUser>(
      (user) {
        currentUser = AnovoFirebaseUser(user);
        return currentUser!;
      },
    );
