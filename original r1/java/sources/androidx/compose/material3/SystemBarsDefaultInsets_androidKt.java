package androidx.compose.material3;

import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsets_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: SystemBarsDefaultInsets.android.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028AX\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"systemBarsForVisualComponents", "Landroidx/compose/foundation/layout/WindowInsets;", "Landroidx/compose/foundation/layout/WindowInsets$Companion;", "getSystemBarsForVisualComponents", "(Landroidx/compose/foundation/layout/WindowInsets$Companion;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/WindowInsets;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SystemBarsDefaultInsets_androidKt {
    public static final WindowInsets getSystemBarsForVisualComponents(WindowInsets.Companion companion, Composer composer, int i) {
        Intrinsics.checkNotNullParameter(companion, "<this>");
        composer.startReplaceableGroup(1816710665);
        ComposerKt.sourceInformation(composer, "C24@920L10:SystemBarsDefaultInsets.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1816710665, i, -1, "androidx.compose.material3.<get-systemBarsForVisualComponents> (SystemBarsDefaultInsets.android.kt:24)");
        }
        WindowInsets systemBars = WindowInsets_androidKt.getSystemBars(companion, composer, 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return systemBars;
    }
}
