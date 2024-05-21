package androidx.core.os;

import android.content.res.Configuration;
import android.os.LocaleList;

/* loaded from: classes.dex */
public final class ConfigurationCompat {
    private ConfigurationCompat() {
    }

    public static LocaleListCompat getLocales(Configuration configuration) {
        return LocaleListCompat.wrap(Api24Impl.getLocales(configuration));
    }

    public static void setLocales(Configuration configuration, LocaleListCompat localeListCompat) {
        Api24Impl.setLocales(configuration, localeListCompat);
    }

    /* loaded from: classes.dex */
    static class Api17Impl {
        private Api17Impl() {
        }

        static void setLocale(Configuration configuration, LocaleListCompat localeListCompat) {
            if (localeListCompat.isEmpty()) {
                return;
            }
            configuration.setLocale(localeListCompat.get(0));
        }
    }

    /* loaded from: classes.dex */
    static class Api24Impl {
        private Api24Impl() {
        }

        static LocaleList getLocales(Configuration configuration) {
            return configuration.getLocales();
        }

        static void setLocales(Configuration configuration, LocaleListCompat localeListCompat) {
            configuration.setLocales((LocaleList) localeListCompat.unwrap());
        }
    }
}
