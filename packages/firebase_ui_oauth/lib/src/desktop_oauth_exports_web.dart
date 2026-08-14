// Copyright 2026, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Desktop OAuth types without importing `desktop_webview_auth`.
// That package's public library imports `dart:io`. If this library re-exported
// it unconditionally, pana's Wasm import graph would include `dart:io` and
// the package would lose the Wasm-ready platform points.

/// Result of a desktop OAuth webview sign-in.
class AuthResult {
  final String? accessToken;
  final String? idToken;
  final String? tokenSecret;

  const AuthResult({this.accessToken, this.idToken, this.tokenSecret});
}

/// Arguments used to start a desktop OAuth webview sign-in.
abstract class ProviderArgs {
  String get redirectUri;
}

/// Google desktop OAuth arguments.
class GoogleSignInArgs implements ProviderArgs {
  final String clientId;
  @override
  final String redirectUri;
  final String scope;
  final bool immediate;
  final String responseType;

  GoogleSignInArgs({
    required this.clientId,
    required this.redirectUri,
    this.scope = 'https://www.googleapis.com/auth/plus.login',
    this.immediate = false,
    this.responseType = 'token id_token',
  });
}

/// Facebook desktop OAuth arguments.
class FacebookSignInArgs implements ProviderArgs {
  final String clientId;
  @override
  final String redirectUri;

  FacebookSignInArgs({required this.clientId, required this.redirectUri});
}

/// Twitter desktop OAuth arguments.
class TwitterSignInArgs implements ProviderArgs {
  final String apiKey;
  final String apiSecretKey;
  @override
  final String redirectUri;

  TwitterSignInArgs({
    required this.apiKey,
    required this.apiSecretKey,
    required this.redirectUri,
  });
}
