import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class UIIIProyectoFinalIOSPabloLEFirebaseUser {
  UIIIProyectoFinalIOSPabloLEFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

UIIIProyectoFinalIOSPabloLEFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<UIIIProyectoFinalIOSPabloLEFirebaseUser>
    uIIIProyectoFinalIOSPabloLEFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<UIIIProyectoFinalIOSPabloLEFirebaseUser>((user) =>
            currentUser = UIIIProyectoFinalIOSPabloLEFirebaseUser(user));
