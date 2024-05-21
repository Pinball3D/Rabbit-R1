package androidx.compose.material3;

import android.content.Context;
import android.text.format.DateFormat;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;

/* compiled from: TimeFormat.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\"\u0014\u0010\u0000\u001a\u00020\u00018AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0000\u0010\u0002¨\u0006\u0003"}, d2 = {"is24HourFormat", "", "(Landroidx/compose/runtime/Composer;I)Z", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TimeFormat_androidKt {
    public static final boolean is24HourFormat(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -972868615, "C25@970L7:TimeFormat.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-972868615, i, -1, "androidx.compose.material3.<get-is24HourFormat> (TimeFormat.android.kt:25)");
        }
        ProvidableCompositionLocal<Context> localContext = AndroidCompositionLocals_androidKt.getLocalContext();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localContext);
        ComposerKt.sourceInformationMarkerEnd(composer);
        boolean is24HourFormat = DateFormat.is24HourFormat((Context) consume);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return is24HourFormat;
    }
}
