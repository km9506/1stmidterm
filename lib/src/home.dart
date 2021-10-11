import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:gtk_flutter/src/draw_widget.dart';
import 'package:provider/provider.dart';
import 'authentication.dart';
import 'widgets.dart';
import 'log.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        drawer: NavigationDrawerWidget(),
        appBar: AppBar(
          title: const Text('Midterm'),
        ),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 8),
            const IconAndDetail(
                Icons.calendar_today, 'Sung Kim Midterm 10/10/2021'),
            Consumer<ApplicationState>(
              builder: (context, appState, _) => Authentication(
                email: appState.email,
                loginState: appState.loginState,
                startLoginFlow: appState.startLoginFlow,
                verifyEmail: appState.verifyEmail,
                signInWithEmailAndPassword: appState.signInWithEmailAndPassword,
                cancelRegistration: appState.cancelRegistration,
                registerAccount: appState.registerAccount,
                signOut: appState.signOut,
              ),
            ),
            const Divider(
              height: 8,
              thickness: 1,
              indent: 8,
              endIndent: 8,
              color: Colors.grey,
            ),
            Consumer<ApplicationState>(
              builder: (context, appState, _) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (appState.loginState ==
                      ApplicationLoginState.loggedIn) ...[
                    Header('Comments'),
                    GuestBook(
                      addMessage: (String message) =>
                          appState.addMessageToGuestBook(message),
                      messages: appState.guestBookMessages,
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      );
}
