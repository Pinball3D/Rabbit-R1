package androidx.compose.ui.text.platform;

import androidx.compose.ui.text.PlatformStringDelegate;
import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.PlatformLocale;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;

/* compiled from: AndroidStringDelegate.android.kt */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0016¨\u0006\u000b"}, d2 = {"Landroidx/compose/ui/text/platform/AndroidStringDelegate;", "Landroidx/compose/ui/text/PlatformStringDelegate;", "()V", "capitalize", "", "string", Device.JsonKeys.LOCALE, "Landroidx/compose/ui/text/intl/PlatformLocale;", "decapitalize", "toLowerCase", "toUpperCase", "ui-text_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidStringDelegate implements PlatformStringDelegate {
    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String toUpperCase(String string, PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String upperCase = string.toUpperCase(((AndroidLocale) locale).getJavaLocale());
        Intrinsics.checkNotNullExpressionValue(upperCase, "this as java.lang.String).toUpperCase(locale)");
        return upperCase;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String toLowerCase(String string, PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String lowerCase = string.toLowerCase(((AndroidLocale) locale).getJavaLocale());
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        return lowerCase;
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String capitalize(String string, PlatformLocale locale) {
        String valueOf;
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (string.length() <= 0) {
            return string;
        }
        StringBuilder sb = new StringBuilder();
        char charAt = string.charAt(0);
        if (Character.isLowerCase(charAt)) {
            valueOf = CharsKt.titlecase(charAt, ((AndroidLocale) locale).getJavaLocale());
        } else {
            valueOf = String.valueOf(charAt);
        }
        StringBuilder append = sb.append((Object) valueOf);
        String substring = string.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return append.append(substring).toString();
    }

    @Override // androidx.compose.ui.text.PlatformStringDelegate
    public String decapitalize(String string, PlatformLocale locale) {
        Intrinsics.checkNotNullParameter(string, "string");
        Intrinsics.checkNotNullParameter(locale, "locale");
        if (string.length() <= 0) {
            return string;
        }
        StringBuilder append = new StringBuilder().append((Object) CharsKt.lowercase(string.charAt(0), ((AndroidLocale) locale).getJavaLocale()));
        String substring = string.substring(1);
        Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String).substring(startIndex)");
        return append.append(substring).toString();
    }
}
