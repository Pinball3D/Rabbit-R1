package androidx.compose.foundation;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;

/* compiled from: DarkTheme.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u001a\r\u0010\u0000\u001a\u00020\u0001H\u0007¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, d2 = {"isSystemInDarkTheme", "", "(Landroidx/compose/runtime/Composer;I)Z", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DarkThemeKt {
    public static final boolean isSystemInDarkTheme(Composer composer, int i) {
        ComposerKt.sourceInformationMarkerStart(composer, -1100791446, "C(isSystemInDarkTheme)40@1721L22:DarkTheme.kt#71ulvw");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1100791446, i, -1, "androidx.compose.foundation.isSystemInDarkTheme (DarkTheme.kt:40)");
        }
        boolean _isSystemInDarkTheme = DarkTheme_androidKt._isSystemInDarkTheme(composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ComposerKt.sourceInformationMarkerEnd(composer);
        return _isSystemInDarkTheme;
    }
}
