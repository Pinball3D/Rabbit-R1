package androidx.compose.material3;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* compiled from: ContentColor.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001ø\u0001\u0000¢\u0006\b\n\u0000\u001a\u0004\b\u0003\u0010\u0004\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0005"}, d2 = {"LocalContentColor", "Landroidx/compose/runtime/ProvidableCompositionLocal;", "Landroidx/compose/ui/graphics/Color;", "getLocalContentColor", "()Landroidx/compose/runtime/ProvidableCompositionLocal;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ContentColorKt {
    private static final ProvidableCompositionLocal<Color> LocalContentColor = CompositionLocalKt.compositionLocalOf$default(null, new Function0<Color>() { // from class: androidx.compose.material3.ContentColorKt$LocalContentColor$1
        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Color invoke() {
            return Color.m2629boximpl(m1141invoke0d7_KjU());
        }

        /* renamed from: invoke-0d7_KjU, reason: not valid java name */
        public final long m1141invoke0d7_KjU() {
            return Color.INSTANCE.m2665getBlack0d7_KjU();
        }
    }, 1, null);

    public static final ProvidableCompositionLocal<Color> getLocalContentColor() {
        return LocalContentColor;
    }
}
