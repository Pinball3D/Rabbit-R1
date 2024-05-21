package androidx.compose.ui.unit;

import kotlin.Metadata;

/* compiled from: Density.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\u001a\u001a\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003H\u0007¨\u0006\u0005"}, d2 = {"Density", "Landroidx/compose/ui/unit/Density;", "density", "", "fontScale", "ui-unit_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DensityKt {
    public static /* synthetic */ Density Density$default(float f, float f2, int i, Object obj) {
        if ((i & 2) != 0) {
            f2 = 1.0f;
        }
        return Density(f, f2);
    }

    public static final Density Density(float f, float f2) {
        return new DensityImpl(f, f2);
    }
}
