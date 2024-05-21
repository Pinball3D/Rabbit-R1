package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Chip.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001BJ\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u000bJ \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0011J \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0001ø\u0001\u0000¢\u0006\u0004\b\u0018\u0010\u0011R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\fR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\f\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0019"}, d2 = {"Landroidx/compose/material3/ChipColors;", "", "containerColor", "Landroidx/compose/ui/graphics/Color;", "labelColor", "leadingIconContentColor", "trailingIconContentColor", "disabledContainerColor", "disabledLabelColor", "disabledLeadingIconContentColor", "disabledTrailingIconContentColor", "(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "Landroidx/compose/runtime/State;", "enabled", "", "containerColor$material3_release", "(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "labelColor$material3_release", "leadingIconContentColor$material3_release", "trailingIconContentColor$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ChipColors {
    public static final int $stable = 0;
    private final long containerColor;
    private final long disabledContainerColor;
    private final long disabledLabelColor;
    private final long disabledLeadingIconContentColor;
    private final long disabledTrailingIconContentColor;
    private final long labelColor;
    private final long leadingIconContentColor;
    private final long trailingIconContentColor;

    public /* synthetic */ ChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8);
    }

    private ChipColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8) {
        this.containerColor = j;
        this.labelColor = j2;
        this.leadingIconContentColor = j3;
        this.trailingIconContentColor = j4;
        this.disabledContainerColor = j5;
        this.disabledLabelColor = j6;
        this.disabledLeadingIconContentColor = j7;
        this.disabledTrailingIconContentColor = j8;
    }

    public final State<Color> containerColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(-136683658);
        ComposerKt.sourceInformation(composer, "C(containerColor)1777@83697L77:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-136683658, i, -1, "androidx.compose.material3.ChipColors.containerColor (Chip.kt:1776)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.containerColor : this.disabledContainerColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> labelColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(559848681);
        ComposerKt.sourceInformation(composer, "C(labelColor)1787@84021L69:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(559848681, i, -1, "androidx.compose.material3.ChipColors.labelColor (Chip.kt:1786)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.labelColor : this.disabledLabelColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> leadingIconContentColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(5136811);
        ComposerKt.sourceInformation(composer, "C(leadingIconContentColor)1797@84367L117:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(5136811, i, -1, "androidx.compose.material3.ChipColors.leadingIconContentColor (Chip.kt:1796)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.leadingIconContentColor : this.disabledLeadingIconContentColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> trailingIconContentColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(96182905);
        ComposerKt.sourceInformation(composer, "C(trailingIconContentColor)1809@84763L119:Chip.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(96182905, i, -1, "androidx.compose.material3.ChipColors.trailingIconContentColor (Chip.kt:1808)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.trailingIconContentColor : this.disabledTrailingIconContentColor), composer, 0);
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
        if (other == null || !(other instanceof ChipColors)) {
            return false;
        }
        ChipColors chipColors = (ChipColors) other;
        return Color.m2640equalsimpl0(this.containerColor, chipColors.containerColor) && Color.m2640equalsimpl0(this.labelColor, chipColors.labelColor) && Color.m2640equalsimpl0(this.leadingIconContentColor, chipColors.leadingIconContentColor) && Color.m2640equalsimpl0(this.trailingIconContentColor, chipColors.trailingIconContentColor) && Color.m2640equalsimpl0(this.disabledContainerColor, chipColors.disabledContainerColor) && Color.m2640equalsimpl0(this.disabledLabelColor, chipColors.disabledLabelColor) && Color.m2640equalsimpl0(this.disabledLeadingIconContentColor, chipColors.disabledLeadingIconContentColor) && Color.m2640equalsimpl0(this.disabledTrailingIconContentColor, chipColors.disabledTrailingIconContentColor);
    }

    public int hashCode() {
        return (((((((((((((Color.m2646hashCodeimpl(this.containerColor) * 31) + Color.m2646hashCodeimpl(this.labelColor)) * 31) + Color.m2646hashCodeimpl(this.leadingIconContentColor)) * 31) + Color.m2646hashCodeimpl(this.trailingIconContentColor)) * 31) + Color.m2646hashCodeimpl(this.disabledContainerColor)) * 31) + Color.m2646hashCodeimpl(this.disabledLabelColor)) * 31) + Color.m2646hashCodeimpl(this.disabledLeadingIconContentColor)) * 31) + Color.m2646hashCodeimpl(this.disabledTrailingIconContentColor);
    }
}
