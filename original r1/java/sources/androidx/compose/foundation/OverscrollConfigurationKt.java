package androidx.compose.foundation;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: OverscrollConfiguration.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\"$\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00018GX\u0087\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"LocalOverscrollConfiguration", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/foundation/OverscrollConfiguration;", "getLocalOverscrollConfiguration$annotations", "()V", "getLocalOverscrollConfiguration", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class OverscrollConfigurationKt {
    private static final ProvidableCompositionLocal<OverscrollConfiguration> LocalOverscrollConfiguration = CompositionLocalKt.compositionLocalOf$default(null, new Function0<OverscrollConfiguration>() { // from class: androidx.compose.foundation.OverscrollConfigurationKt$LocalOverscrollConfiguration$1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // kotlin.jvm.functions.Function0
        public final OverscrollConfiguration invoke() {
            return new OverscrollConfiguration(0L, null, 3, null);
        }
    }, 1, null);

    public static final ProvidableCompositionLocal<OverscrollConfiguration> getLocalOverscrollConfiguration() {
        return LocalOverscrollConfiguration;
    }

    public static /* synthetic */ void getLocalOverscrollConfiguration$annotations() {
    }
}
