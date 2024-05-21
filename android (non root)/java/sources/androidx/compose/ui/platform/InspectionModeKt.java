package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: InspectionMode.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\"\u0017\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"LocalInspectionMode", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "", "getLocalInspectionMode", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class InspectionModeKt {
    private static final ProvidableCompositionLocal<Boolean> LocalInspectionMode = CompositionLocalKt.staticCompositionLocalOf(new Function0<Boolean>() { // from class: androidx.compose.ui.platform.InspectionModeKt$LocalInspectionMode$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final Boolean invoke() {
            return false;
        }
    });

    public static final ProvidableCompositionLocal<Boolean> getLocalInspectionMode() {
        return LocalInspectionMode;
    }
}
