package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001Br\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0010J(\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J\u0013\u0010\u0018\u001a\u00020\u00142\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001a\u001a\u00020\u001bH\u0016J(\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001c\u0010\u0017J(\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u0017J(\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00030\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0001ø\u0001\u0000¢\u0006\u0004\b \u0010\u0017R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\r\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u000e\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u000f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011R\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0011\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006!"}, d2 = {"Landroidx/compose/material3/SelectableChipColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "labelColor", "leadingIconColor", "trailingIconColor", "disabledContainerColor", "disabledLabelColor", "disabledLeadingIconColor", "disabledTrailingIconColor", "selectedContainerColor", "disabledSelectedContainerColor", "selectedLabelColor", "selectedLeadingIconColor", "selectedTrailingIconColor", "(JJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "Landroidx/compose/runtime/State;", "enabled", "", "selected", "containerColor$material3_release", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "labelColor$material3_release", "leadingIconContentColor", "leadingIconContentColor$material3_release", "trailingIconContentColor", "trailingIconContentColor$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SelectableChipColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long disabledContainerColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconColor;
    private final long disabledSelectedContainerColor;
    private final long disabledTrailingIconColor;
    private final long labelColor;
    private final long leadingIconColor;
    private final long selectedContainerColor;
    private final long selectedLabelColor;
    private final long selectedLeadingIconColor;
    private final long selectedTrailingIconColor;
    private final long trailingIconColor;

    public /* synthetic */ SelectableChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13);
    }

    private SelectableChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconColor = j3;
        this.trailingIconColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconColor = j7;
        this.disabledTrailingIconColor = j8;
        this.selectedContainerColor = j9;
        this.disabledSelectedContainerColor = j10;
        this.selectedLabelColor = j11;
        this.selectedLeadingIconColor = j12;
        this.selectedTrailingIconColor = j13;
    }

    public final State<Color> containerColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-2126903408);
        ComposerKt.sourceInformation(composer, "C(containerColor)1881@87835L28:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2126903408, i, -1, "androidx.compose.material3.SelectableChipColors.containerColor (Chip.kt:1875)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(!z ? z2 ? this.disabledSelectedContainerColor : this.disabledContainerColor : !z2 ? this.containerColor : this.selectedContainerColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> labelColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-829231549);
        ComposerKt.sourceInformation(composer, "C(labelColor)1897@88352L28:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-829231549, i, -1, "androidx.compose.material3.SelectableChipColors.labelColor (Chip.kt:1891)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(!z ? this.disabledLabelColor : !z2 ? this.labelColor : this.selectedLabelColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> leadingIconContentColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-1112029563);
        ComposerKt.sourceInformation(composer, "C(leadingIconContentColor)1913@88907L28:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1112029563, i, -1, "androidx.compose.material3.SelectableChipColors.leadingIconContentColor (Chip.kt:1907)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(!z ? this.disabledLeadingIconColor : !z2 ? this.leadingIconColor : this.selectedLeadingIconColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> trailingIconContentColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(963620819);
        ComposerKt.sourceInformation(composer, "C(trailingIconContentColor)1929@89467L28:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(963620819, i, -1, "androidx.compose.material3.SelectableChipColors.trailingIconContentColor (Chip.kt:1923)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(!z ? this.disabledTrailingIconColor : !z2 ? this.trailingIconColor : this.selectedTrailingIconColor), composer, 0);
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
        if (other == null || !(other instanceof SelectableChipColors)) {
            return false;
        }
        SelectableChipColors selectableChipColors = (SelectableChipColors) other;
        return Color.m2640equalsimpl0(this.containerColor, selectableChipColors.containerColor) && Color.m2640equalsimpl0(this.labelColor, selectableChipColors.labelColor) && Color.m2640equalsimpl0(this.leadingIconColor, selectableChipColors.leadingIconColor) && Color.m2640equalsimpl0(this.trailingIconColor, selectableChipColors.trailingIconColor) && Color.m2640equalsimpl0(this.disabledContainerColor, selectableChipColors.disabledContainerColor) && Color.m2640equalsimpl0(this.disabledLabelColor, selectableChipColors.disabledLabelColor) && Color.m2640equalsimpl0(this.disabledLeadingIconColor, selectableChipColors.disabledLeadingIconColor) && Color.m2640equalsimpl0(this.disabledTrailingIconColor, selectableChipColors.disabledTrailingIconColor) && Color.m2640equalsimpl0(this.selectedContainerColor, selectableChipColors.selectedContainerColor) && Color.m2640equalsimpl0(this.disabledSelectedContainerColor, selectableChipColors.disabledSelectedContainerColor) && Color.m2640equalsimpl0(this.selectedLabelColor, selectableChipColors.selectedLabelColor) && Color.m2640equalsimpl0(this.selectedLeadingIconColor, selectableChipColors.selectedLeadingIconColor) && Color.m2640equalsimpl0(this.selectedTrailingIconColor, selectableChipColors.selectedTrailingIconColor);
    }

    public int hashCode() {
        return (((((((((((((((((((((((Color.m2646hashCodeimpl(this.containerColor) * 31) + Color.m2646hashCodeimpl(this.labelColor)) * 31) + Color.m2646hashCodeimpl(this.leadingIconColor)) * 31) + Color.m2646hashCodeimpl(this.trailingIconColor)) * 31) + Color.m2646hashCodeimpl(this.disabledContainerColor)) * 31) + Color.m2646hashCodeimpl(this.disabledLabelColor)) * 31) + Color.m2646hashCodeimpl(this.disabledLeadingIconColor)) * 31) + Color.m2646hashCodeimpl(this.disabledTrailingIconColor)) * 31) + Color.m2646hashCodeimpl(this.selectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.disabledSelectedContainerColor)) * 31) + Color.m2646hashCodeimpl(this.selectedLabelColor)) * 31) + Color.m2646hashCodeimpl(this.selectedLeadingIconColor)) * 31) + Color.m2646hashCodeimpl(this.selectedTrailingIconColor);
    }
}
