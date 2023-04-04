import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DaskalosV1FirebaseUser {
  DaskalosV1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DaskalosV1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DaskalosV1FirebaseUser> daskalosV1FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DaskalosV1FirebaseUser>(
      (user) {
        currentUser = DaskalosV1FirebaseUser(user);
        return currentUser!;
      },
    );
