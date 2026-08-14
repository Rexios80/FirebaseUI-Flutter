// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

export 'package:firebase_auth/firebase_auth.dart' show OAuthCredential;
export './src/desktop_oauth_exports.dart'
    if (dart.library.js_interop) './src/desktop_oauth_exports_web.dart';

export './src/oauth_provider.dart';
export './src/oauth_provider_button_base.dart';
export './src/oauth_provider_button_style.dart';

export 'package:firebase_ui_auth/firebase_ui_auth.dart'
    show AuthAction, AuthCancelledException;

export 'package:firebase_ui_shared/firebase_ui_shared.dart'
    show ThemedColor, ThemedIconSrc;
