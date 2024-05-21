package io.sentry.transport;

import java.net.Authenticator;

/* loaded from: classes3.dex */
final class AuthenticatorWrapper {
    private static final AuthenticatorWrapper instance = new AuthenticatorWrapper();

    public static AuthenticatorWrapper getInstance() {
        return instance;
    }

    private AuthenticatorWrapper() {
    }

    public void setDefault(Authenticator authenticator) {
        Authenticator.setDefault(authenticator);
    }
}
