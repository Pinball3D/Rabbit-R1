package androidx.compose.material3;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0013\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0019\u001a\u00020\u001aH\u0016R7\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u00038F@@X\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR+\u0010\u0010\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00068F@@X\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b\u0015\u0010\u000f\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u001b"}, d2 = {"Landroidx/compose/material3/SliderPositions;", "", "initialActiveRange", "Lkotlin/ranges/ClosedFloatingPointRange;", "", "initialTickFractions", "", "(Lkotlin/ranges/ClosedFloatingPointRange;[F)V", "<set-?>", "activeRange", "getActiveRange", "()Lkotlin/ranges/ClosedFloatingPointRange;", "setActiveRange$material3_release", "(Lkotlin/ranges/ClosedFloatingPointRange;)V", "activeRange$delegate", "Landroidx/compose/runtime/MutableState;", "tickFractions", "getTickFractions", "()[F", "setTickFractions$material3_release", "([F)V", "tickFractions$delegate", "equals", "", "other", "hashCode", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SliderPositions {
    public static final int $stable = 0;

    /* renamed from: activeRange$delegate, reason: from kotlin metadata */
    private final MutableState activeRange;

    /* renamed from: tickFractions$delegate, reason: from kotlin metadata */
    private final MutableState tickFractions;

    /* JADX WARN: Multi-variable type inference failed */
    public SliderPositions() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    public SliderPositions(ClosedFloatingPointRange<Float> initialActiveRange, float[] initialTickFractions) {
        MutableState mutableStateOf$default;
        MutableState mutableStateOf$default2;
        Intrinsics.checkNotNullParameter(initialActiveRange, "initialActiveRange");
        Intrinsics.checkNotNullParameter(initialTickFractions, "initialTickFractions");
        mutableStateOf$default = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(initialActiveRange, null, 2, null);
        this.activeRange = mutableStateOf$default;
        mutableStateOf$default2 = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(initialTickFractions, null, 2, null);
        this.tickFractions = mutableStateOf$default2;
    }

    public /* synthetic */ SliderPositions(ClosedFloatingPointRange closedFloatingPointRange, float[] fArr, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? RangesKt.rangeTo(0.0f, 1.0f) : closedFloatingPointRange, (i & 2) != 0 ? new float[0] : fArr);
    }

    public final ClosedFloatingPointRange<Float> getActiveRange() {
        return (ClosedFloatingPointRange) this.activeRange.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final float[] getTickFractions() {
        return (float[]) this.tickFractions.getValue();
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof SliderPositions)) {
            return false;
        }
        SliderPositions sliderPositions = (SliderPositions) other;
        return Intrinsics.areEqual(getActiveRange(), sliderPositions.getActiveRange()) && Arrays.equals(getTickFractions(), sliderPositions.getTickFractions());
    }

    public int hashCode() {
        return (getActiveRange().hashCode() * 31) + Arrays.hashCode(getTickFractions());
    }

    public final void setActiveRange$material3_release(ClosedFloatingPointRange<Float> closedFloatingPointRange) {
        Intrinsics.checkNotNullParameter(closedFloatingPointRange, "<set-?>");
        this.activeRange.setValue(closedFloatingPointRange);
    }

    public final void setTickFractions$material3_release(float[] fArr) {
        Intrinsics.checkNotNullParameter(fArr, "<set-?>");
        this.tickFractions.setValue(fArr);
    }
}
