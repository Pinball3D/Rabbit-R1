package io.sentry;

import java.util.Locale;

/* loaded from: classes3.dex */
public final class DsnUtil {
    public static boolean urlContainsDsnHost(SentryOptions sentryOptions, String str) {
        String dsn;
        String host;
        if (sentryOptions == null || str == null || (dsn = sentryOptions.getDsn()) == null || (host = new Dsn(dsn).getSentryUri().getHost()) == null) {
            return false;
        }
        return str.toLowerCase(Locale.ROOT).contains(host.toLowerCase(Locale.ROOT));
    }
}
