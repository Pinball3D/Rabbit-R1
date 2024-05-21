package androidx.compose.ui.text.platform.extensions;

import androidx.compose.ui.text.intl.AndroidLocale;
import androidx.compose.ui.text.intl.PlatformLocale;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LocaleExtensions.android.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\f\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0000¨\u0006\u0003"}, d2 = {"toJavaLocale", "Ljava/util/Locale;", "Landroidx/compose/ui/text/intl/Locale;", "ui-text_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LocaleExtensions_androidKt {
    public static final Locale toJavaLocale(androidx.compose.ui.text.intl.Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "<this>");
        PlatformLocale platformLocale = locale.getPlatformLocale();
        Intrinsics.checkNotNull(platformLocale, "null cannot be cast to non-null type androidx.compose.ui.text.intl.AndroidLocale");
        return ((AndroidLocale) platformLocale).getJavaLocale();
    }
}
