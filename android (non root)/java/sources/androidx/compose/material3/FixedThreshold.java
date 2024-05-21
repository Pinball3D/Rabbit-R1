package androidx.compose.material3;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: Swipeable.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0081\b\u0018\u00002\u00020\u0001B\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0004J\u0019\u0010\u0006\u001a\u00020\u0003HÂ\u0003ø\u0001\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0007\u0010\bJ \u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fHÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\u001c\u0010\u0014\u001a\u00020\u0015*\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0005\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0019"}, d2 = {"Landroidx/compose/material3/FixedThreshold;", "Landroidx/compose/material3/ThresholdConfig;", "offset", "Landroidx/compose/ui/unit/Dp;", "(FLkotlin/jvm/internal/DefaultConstructorMarker;)V", "F", "component1", "component1-D9Ej5fM", "()F", "copy", "copy-0680j_4", "(F)Landroidx/compose/material3/FixedThreshold;", "equals", "", "other", "", "hashCode", "", "toString", "", "computeThreshold", "", "Landroidx/compose/ui/unit/Density;", "fromValue", "toValue", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final /* data */ class FixedThreshold implements ThresholdConfig {
    private final float offset;

    public /* synthetic */ FixedThreshold(float f, DefaultConstructorMarker defaultConstructorMarker) {
        this(f);
    }

    /* renamed from: component1-D9Ej5fM, reason: not valid java name and from getter */
    private final float getOffset() {
        return this.offset;
    }

    /* renamed from: copy-0680j_4$default, reason: not valid java name */
    public static /* synthetic */ FixedThreshold m1224copy0680j_4$default(FixedThreshold fixedThreshold, float f, int i, Object obj) {
        if ((i & 1) != 0) {
            f = fixedThreshold.offset;
        }
        return fixedThreshold.m1225copy0680j_4(f);
    }

    /* renamed from: copy-0680j_4, reason: not valid java name */
    public final FixedThreshold m1225copy0680j_4(float offset) {
        return new FixedThreshold(offset, null);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof FixedThreshold) && Dp.m4888equalsimpl0(this.offset, ((FixedThreshold) other).offset);
    }

    public int hashCode() {
        return Dp.m4889hashCodeimpl(this.offset);
    }

    public String toString() {
        return "FixedThreshold(offset=" + ((Object) Dp.m4894toStringimpl(this.offset)) + ')';
    }

    private FixedThreshold(float f) {
        this.offset = f;
    }

    @Override // androidx.compose.material3.ThresholdConfig
    public float computeThreshold(Density density, float f, float f2) {
        Intrinsics.checkNotNullParameter(density, "<this>");
        return f + (density.mo335toPx0680j_4(this.offset) * Math.signum(f2 - f));
    }
}
