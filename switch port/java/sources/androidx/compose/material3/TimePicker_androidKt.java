package androidx.compose.material3;

import android.content.res.Configuration;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import kotlin.Metadata;

/* compiled from: TimePicker.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\"\u001d\u0010\u0000\u001a\u00020\u00018AX\u0080\u0004ø\u0001\u0000¢\u0006\f\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006"}, d2 = {"defaultTimePickerLayoutType", "Landroidx/compose/material3/TimePickerLayoutType;", "getDefaultTimePickerLayoutType$annotations", "()V", "getDefaultTimePickerLayoutType", "(Landroidx/compose/runtime/Composer;I)I", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TimePicker_androidKt {
    public static /* synthetic */ void getDefaultTimePickerLayoutType$annotations() {
    }

    public static final int getDefaultTimePickerLayoutType(Composer composer, int i) {
        int m1600getVerticalQJTpgSE;
        ComposerKt.sourceInformationMarkerStart(composer, -1979410629, "C*25@985L7:TimePicker.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1979410629, i, -1, "androidx.compose.material3.<get-defaultTimePickerLayoutType> (TimePicker.android.kt:25)");
        }
        ProvidableCompositionLocal<Configuration> localConfiguration = AndroidCompositionLocals_androidKt.getLocalConfiguration();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localConfiguration);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Configuration configuration = (Configuration) consume;
        if (configuration.screenHeightDp < configuration.screenWidthDp) {
            m1600getVerticalQJTpgSE = TimePickerLayoutType.INSTANCE.m1599getHorizontalQJTpgSE();
        } else {
            m1600getVerticalQJTpgSE = TimePickerLayoutType.INSTANCE.m1600getVerticalQJTpgSE();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return m1600getVerticalQJTpgSE;
    }
}
