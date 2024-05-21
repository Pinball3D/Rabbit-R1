package androidx.compose.material3;

import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.BorderStrokeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\b\u0007\u0018\u00002\u00020\u0001B:\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\bø\u0001\u0000¢\u0006\u0002\u0010\nJ'\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0017\u001a\u00020\u0018H\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0007\u001a\u00020\bX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\t\u001a\u00020\bX\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0019"}, d2 = {"Landroidx/compose/material3/SelectableChipBorder;", "", "borderColor", "Landroidx/compose/ui/graphics/Color;", "selectedBorderColor", "disabledBorderColor", "disabledSelectedBorderColor", "borderWidth", "Landroidx/compose/ui/unit/Dp;", "selectedBorderWidth", "(JJJJFFLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "F", "borderStroke", "Landroidx/compose/runtime/State;", "Landroidx/compose/foundation/BorderStroke;", "enabled", "", "selected", "borderStroke$material3_release", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectableChipBorder {
    public static final int $stable = 0;
    private final long borderColor;
    private final float borderWidth;
    private final long disabledBorderColor;
    private final long disabledSelectedBorderColor;
    private final long selectedBorderColor;
    private final float selectedBorderWidth;

    public /* synthetic */ SelectableChipBorder(long j, long j2, long j3, long j4, float f, float f2, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, f, f2);
    }

    private SelectableChipBorder(long j, long j2, long j3, long j4, float f, float f2) {
        this.borderColor = j;
        this.selectedBorderColor = j2;
        this.disabledBorderColor = j3;
        this.disabledSelectedBorderColor = j4;
        this.borderWidth = f;
        this.selectedBorderWidth = f2;
    }

    public final State<BorderStroke> borderStroke$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(670222826);
        ComposerKt.sourceInformation(composer, "C(borderStroke)1999@92578L115:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(670222826, i, -1, "androidx.compose.material3.SelectableChipBorder.borderStroke (Chip.kt:1993)");
        }
        State<BorderStroke> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(BorderStrokeKt.m196BorderStrokecXLIe8U(z2 ? this.selectedBorderWidth : this.borderWidth, z ? z2 ? this.selectedBorderColor : this.borderColor : z2 ? this.disabledSelectedBorderColor : this.disabledBorderColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !(other instanceof SelectableChipBorder)) {
            return false;
        }
        SelectableChipBorder selectableChipBorder = (SelectableChipBorder) other;
        return Color.m2640equalsimpl0(this.borderColor, selectableChipBorder.borderColor) && Color.m2640equalsimpl0(this.selectedBorderColor, selectableChipBorder.selectedBorderColor) && Color.m2640equalsimpl0(this.disabledBorderColor, selectableChipBorder.disabledBorderColor) && Color.m2640equalsimpl0(this.disabledSelectedBorderColor, selectableChipBorder.disabledSelectedBorderColor) && Dp.m4888equalsimpl0(this.borderWidth, selectableChipBorder.borderWidth) && Dp.m4888equalsimpl0(this.selectedBorderWidth, selectableChipBorder.selectedBorderWidth);
    }

    public int hashCode() {
        return (((((((((Color.m2646hashCodeimpl(this.borderColor) * 31) + Color.m2646hashCodeimpl(this.selectedBorderColor)) * 31) + Color.m2646hashCodeimpl(this.disabledBorderColor)) * 31) + Color.m2646hashCodeimpl(this.disabledSelectedBorderColor)) * 31) + Dp.m4889hashCodeimpl(this.borderWidth)) * 31) + Dp.m4889hashCodeimpl(this.selectedBorderWidth);
    }
}
