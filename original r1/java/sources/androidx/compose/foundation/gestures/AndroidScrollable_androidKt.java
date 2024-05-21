package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;

/* compiled from: AndroidScrollable.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0001¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"platformScrollConfig", "Landroidx/compose/foundation/gestures/ScrollConfig;", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/gestures/ScrollConfig;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AndroidScrollable_androidKt {
    public static final ScrollConfig platformScrollConfig(Composer composer, int i) {
        composer.startReplaceableGroup(-1485272842);
        ComposerKt.sourceInformation(composer, "C(platformScrollConfig):AndroidScrollable.android.kt#8bwon0");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1485272842, i, -1, "androidx.compose.foundation.gestures.platformScrollConfig (AndroidScrollable.android.kt:27)");
        }
        AndroidConfig androidConfig = AndroidConfig.INSTANCE;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return androidConfig;
    }
}
