package androidx.compose.material3;

import android.content.res.Configuration;
import android.text.format.DateFormat;
import androidx.compose.material3.CalendarModelImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.core.os.ConfigurationCompat;
import io.sentry.protocol.Device;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CalendarModel.android.kt */
@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0001\u001a\r\u0010\u0002\u001a\u00020\u0003H\u0001¢\u0006\u0002\u0010\u0004\u001a\"\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\n\u001a\u00020\u0003H\u0001¨\u0006\u000b"}, d2 = {"CalendarModel", "Landroidx/compose/material3/CalendarModel;", "defaultLocale", "Ljava/util/Locale;", "(Landroidx/compose/runtime/Composer;I)Ljava/util/Locale;", "formatWithSkeleton", "", "utcTimeMillis", "", "skeleton", Device.JsonKeys.LOCALE, "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CalendarModel_androidKt {
    public static final CalendarModel CalendarModel() {
        return new CalendarModelImpl();
    }

    public static /* synthetic */ String formatWithSkeleton$default(long j, String str, Locale locale, int i, Object obj) {
        if ((i & 4) != 0) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "m epoch)\n * ");
        }
        return formatWithSkeleton(j, str, locale);
    }

    public static final String formatWithSkeleton(long j, String skeleton, Locale locale) {
        Intrinsics.checkNotNullParameter(skeleton, "skeleton");
        Intrinsics.checkNotNullParameter(locale, "locale");
        String pattern = DateFormat.getBestDateTimePattern(locale, skeleton);
        CalendarModelImpl.Companion companion = CalendarModelImpl.INSTANCE;
        Intrinsics.checkNotNullExpressionValue(pattern, "pattern");
        return companion.formatWithPattern(j, pattern, locale);
    }

    public static final Locale defaultLocale(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, 895332416, "C(defaultLocale)73@2608L7:CalendarModel.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(895332416, i, -1, "androidx.compose.material3.defaultLocale (CalendarModel.android.kt:72)");
        }
        ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localConfiguration);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Locale locale = ConfigurationCompat.getLocales((Configuration) consume).get(0);
        if (locale == null) {
            locale = Locale.getDefault();
            Intrinsics.checkNotNullExpressionValue(locale, "getDefault()");
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return locale;
    }
}
