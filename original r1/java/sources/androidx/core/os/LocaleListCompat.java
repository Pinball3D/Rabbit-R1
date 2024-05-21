package androidx.core.os;

import android.os.Build;
import android.os.LocaleList;
import androidx.core.text.ICUCompat;
import java.util.Locale;

/* loaded from: classes.dex */
public final class LocaleListCompat {
    private static final LocaleListCompat sEmptyLocaleList = create(new Locale[0]);
    private final LocaleListInterface mImpl;

    public static LocaleListCompat getEmptyLocaleList() {
        return sEmptyLocaleList;
    }

    private LocaleListCompat(LocaleListInterface localeListInterface) {
        this.mImpl = localeListInterface;
    }

    @Deprecated
    public static LocaleListCompat wrap(Object obj) {
        return wrap((LocaleList) obj);
    }

    public static LocaleListCompat wrap(LocaleList localeList) {
        return new LocaleListCompat(new LocaleListPlatformWrapper(localeList));
    }

    public Object unwrap() {
        return this.mImpl.getLocaleList();
    }

    public static LocaleListCompat create(Locale... localeArr) {
        return wrap(Api24Impl.createLocaleList(localeArr));
    }

    public Locale get(int i) {
        return this.mImpl.get(i);
    }

    public boolean isEmpty() {
        return this.mImpl.isEmpty();
    }

    public int size() {
        return this.mImpl.size();
    }

    public int indexOf(Locale locale) {
        return this.mImpl.indexOf(locale);
    }

    public String toLanguageTags() {
        return this.mImpl.toLanguageTags();
    }

    public Locale getFirstMatch(String[] strArr) {
        return this.mImpl.getFirstMatch(strArr);
    }

    public static LocaleListCompat forLanguageTags(String str) {
        if (str == null || str.isEmpty()) {
            return getEmptyLocaleList();
        }
        String[] split = str.split(",", -1);
        int length = split.length;
        Locale[] localeArr = new Locale[length];
        for (int i = 0; i < length; i++) {
            localeArr[i] = Api21Impl.forLanguageTag(split[i]);
        }
        return create(localeArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Locale forLanguageTagCompat(String str) {
        if (str.contains("-")) {
            String[] split = str.split("-", -1);
            if (split.length > 2) {
                return new Locale(split[0], split[1], split[2]);
            }
            if (split.length > 1) {
                return new Locale(split[0], split[1]);
            }
            if (split.length == 1) {
                return new Locale(split[0]);
            }
        } else if (str.contains("_")) {
            String[] split2 = str.split("_", -1);
            if (split2.length > 2) {
                return new Locale(split2[0], split2[1], split2[2]);
            }
            if (split2.length > 1) {
                return new Locale(split2[0], split2[1]);
            }
            if (split2.length == 1) {
                return new Locale(split2[0]);
            }
        } else {
            return new Locale(str);
        }
        throw new IllegalArgumentException("Can not parse language tag: [" + str + "]");
    }

    public static LocaleListCompat getAdjustedDefault() {
        return wrap(Api24Impl.getAdjustedDefault());
    }

    public static LocaleListCompat getDefault() {
        return wrap(Api24Impl.getDefault());
    }

    public static boolean matchesLanguageAndScript(Locale locale, Locale locale2) {
        if (Build.VERSION.SDK_INT >= 33) {
            return LocaleList.matchesLanguageAndScript(locale, locale2);
        }
        return Api21Impl.matchesLanguageAndScript(locale, locale2);
    }

    /* loaded from: classes.dex */
    static class Api21Impl {
        private static final Locale[] PSEUDO_LOCALE = {new Locale("en", "XA"), new Locale("ar", "XB")};

        private Api21Impl() {
        }

        static boolean matchesLanguageAndScript(Locale locale, Locale locale2) {
            if (locale.equals(locale2)) {
                return true;
            }
            if (!locale.getLanguage().equals(locale2.getLanguage()) || isPseudoLocale(locale) || isPseudoLocale(locale2)) {
                return false;
            }
            String maximizeAndGetScript = ICUCompat.maximizeAndGetScript(locale);
            if (maximizeAndGetScript.isEmpty()) {
                String country = locale.getCountry();
                return country.isEmpty() || country.equals(locale2.getCountry());
            }
            return maximizeAndGetScript.equals(ICUCompat.maximizeAndGetScript(locale2));
        }

        private static boolean isPseudoLocale(Locale locale) {
            for (Locale locale2 : PSEUDO_LOCALE) {
                if (locale2.equals(locale)) {
                    return true;
                }
            }
            return false;
        }

        static Locale forLanguageTag(String str) {
            return Locale.forLanguageTag(str);
        }
    }

    public boolean equals(Object obj) {
        return (obj instanceof LocaleListCompat) && this.mImpl.equals(((LocaleListCompat) obj).mImpl);
    }

    public int hashCode() {
        return this.mImpl.hashCode();
    }

    public String toString() {
        return this.mImpl.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        static LocaleList createLocaleList(Locale... localeArr) {
            return new LocaleList(localeArr);
        }

        static LocaleList getAdjustedDefault() {
            return LocaleList.getAdjustedDefault();
        }

        static LocaleList getDefault() {
            return LocaleList.getDefault();
        }
    }
}
