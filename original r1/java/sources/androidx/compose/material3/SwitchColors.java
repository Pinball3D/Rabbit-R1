package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Switch.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001B\u008a\u0001\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u0006\u0010\u0010\u001a\u00020\u0003\u0012\u0006\u0010\u0011\u001a\u00020\u0003\u0012\u0006\u0010\u0012\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\u0013J(\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u0013\u0010\u001c\u001a\u00020\u00182\b\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u001e\u001a\u00020\u001fH\u0016J(\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0001ø\u0001\u0000¢\u0006\u0004\b!\u0010\u001bJ(\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0001ø\u0001\u0000¢\u0006\u0004\b#\u0010\u001bJ(\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00030\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0001ø\u0001\u0000¢\u0006\u0004\b%\u0010\u001bR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\r\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000e\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0011\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0012\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u000f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0010\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014R\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0014\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006&"}, d2 = {"Landroidx/compose/material3/SwitchColors;", "", "checkedThumbColor", "Landroidx/compose/ui/graphics/Color;", "checkedTrackColor", "checkedBorderColor", "checkedIconColor", "uncheckedThumbColor", "uncheckedTrackColor", "uncheckedBorderColor", "uncheckedIconColor", "disabledCheckedThumbColor", "disabledCheckedTrackColor", "disabledCheckedBorderColor", "disabledCheckedIconColor", "disabledUncheckedThumbColor", "disabledUncheckedTrackColor", "disabledUncheckedBorderColor", "disabledUncheckedIconColor", "(JJJJJJJJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "borderColor", "Landroidx/compose/runtime/State;", "enabled", "", "checked", "borderColor$material3_release", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "equals", "other", "hashCode", "", "iconColor", "iconColor$material3_release", "thumbColor", "thumbColor$material3_release", "trackColor", "trackColor$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SwitchColors {
    public static final int $stable = 0;
    private final long checkedBorderColor;
    private final long checkedIconColor;
    private final long checkedThumbColor;
    private final long checkedTrackColor;
    private final long disabledCheckedBorderColor;
    private final long disabledCheckedIconColor;
    private final long disabledCheckedThumbColor;
    private final long disabledCheckedTrackColor;
    private final long disabledUncheckedBorderColor;
    private final long disabledUncheckedIconColor;
    private final long disabledUncheckedThumbColor;
    private final long disabledUncheckedTrackColor;
    private final long uncheckedBorderColor;
    private final long uncheckedIconColor;
    private final long uncheckedThumbColor;
    private final long uncheckedTrackColor;

    public /* synthetic */ SwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10, j11, j12, j13, j14, j15, j16);
    }

    private SwitchColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16) {
        this.checkedThumbColor = j;
        this.checkedTrackColor = j2;
        this.checkedBorderColor = j3;
        this.checkedIconColor = j4;
        this.uncheckedThumbColor = j5;
        this.uncheckedTrackColor = j6;
        this.uncheckedBorderColor = j7;
        this.uncheckedIconColor = j8;
        this.disabledCheckedThumbColor = j9;
        this.disabledCheckedTrackColor = j10;
        this.disabledCheckedBorderColor = j11;
        this.disabledCheckedIconColor = j12;
        this.disabledUncheckedThumbColor = j13;
        this.disabledUncheckedTrackColor = j14;
        this.disabledUncheckedBorderColor = j15;
        this.disabledUncheckedIconColor = j16;
    }

    public final State<Color> thumbColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-1539933265);
        ComposerKt.sourceInformation(composer, "C(thumbColor)P(1)373@16263L253:Switch.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1539933265, i, -1, "androidx.compose.material3.SwitchColors.thumbColor (Switch.kt:372)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.checkedThumbColor : this.uncheckedThumbColor : z2 ? this.disabledCheckedThumbColor : this.disabledUncheckedThumbColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> trackColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(961511844);
        ComposerKt.sourceInformation(composer, "C(trackColor)P(1)390@16875L253:Switch.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(961511844, i, -1, "androidx.compose.material3.SwitchColors.trackColor (Switch.kt:389)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.checkedTrackColor : this.uncheckedTrackColor : z2 ? this.disabledCheckedTrackColor : this.disabledUncheckedTrackColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> borderColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(462653665);
        ComposerKt.sourceInformation(composer, "C(borderColor)P(1)407@17489L257:Switch.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(462653665, i, -1, "androidx.compose.material3.SwitchColors.borderColor (Switch.kt:406)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.checkedBorderColor : this.uncheckedBorderColor : z2 ? this.disabledCheckedBorderColor : this.disabledUncheckedBorderColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> iconColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(-153383122);
        ComposerKt.sourceInformation(composer, "C(iconColor)P(1)424@18072L249:Switch.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-153383122, i, -1, "androidx.compose.material3.SwitchColors.iconColor (Switch.kt:423)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.checkedIconColor : this.uncheckedIconColor : z2 ? this.disabledCheckedIconColor : this.disabledUncheckedIconColor), composer, 0);
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
        if (other == null || !(other instanceof SwitchColors)) {
            return false;
        }
        SwitchColors switchColors = (SwitchColors) other;
        return Color.m2640equalsimpl0(this.checkedThumbColor, switchColors.checkedThumbColor) && Color.m2640equalsimpl0(this.checkedTrackColor, switchColors.checkedTrackColor) && Color.m2640equalsimpl0(this.checkedBorderColor, switchColors.checkedBorderColor) && Color.m2640equalsimpl0(this.checkedIconColor, switchColors.checkedIconColor) && Color.m2640equalsimpl0(this.uncheckedThumbColor, switchColors.uncheckedThumbColor) && Color.m2640equalsimpl0(this.uncheckedTrackColor, switchColors.uncheckedTrackColor) && Color.m2640equalsimpl0(this.uncheckedBorderColor, switchColors.uncheckedBorderColor) && Color.m2640equalsimpl0(this.uncheckedIconColor, switchColors.uncheckedIconColor) && Color.m2640equalsimpl0(this.disabledCheckedThumbColor, switchColors.disabledCheckedThumbColor) && Color.m2640equalsimpl0(this.disabledCheckedTrackColor, switchColors.disabledCheckedTrackColor) && Color.m2640equalsimpl0(this.disabledCheckedBorderColor, switchColors.disabledCheckedBorderColor) && Color.m2640equalsimpl0(this.disabledCheckedIconColor, switchColors.disabledCheckedIconColor) && Color.m2640equalsimpl0(this.disabledUncheckedThumbColor, switchColors.disabledUncheckedThumbColor) && Color.m2640equalsimpl0(this.disabledUncheckedTrackColor, switchColors.disabledUncheckedTrackColor) && Color.m2640equalsimpl0(this.disabledUncheckedBorderColor, switchColors.disabledUncheckedBorderColor) && Color.m2640equalsimpl0(this.disabledUncheckedIconColor, switchColors.disabledUncheckedIconColor);
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((Color.m2646hashCodeimpl(this.checkedThumbColor) * 31) + Color.m2646hashCodeimpl(this.checkedTrackColor)) * 31) + Color.m2646hashCodeimpl(this.checkedBorderColor)) * 31) + Color.m2646hashCodeimpl(this.checkedIconColor)) * 31) + Color.m2646hashCodeimpl(this.uncheckedThumbColor)) * 31) + Color.m2646hashCodeimpl(this.uncheckedTrackColor)) * 31) + Color.m2646hashCodeimpl(this.uncheckedBorderColor)) * 31) + Color.m2646hashCodeimpl(this.uncheckedIconColor)) * 31) + Color.m2646hashCodeimpl(this.disabledCheckedThumbColor)) * 31) + Color.m2646hashCodeimpl(this.disabledCheckedTrackColor)) * 31) + Color.m2646hashCodeimpl(this.disabledCheckedBorderColor)) * 31) + Color.m2646hashCodeimpl(this.disabledCheckedIconColor)) * 31) + Color.m2646hashCodeimpl(this.disabledUncheckedThumbColor)) * 31) + Color.m2646hashCodeimpl(this.disabledUncheckedTrackColor)) * 31) + Color.m2646hashCodeimpl(this.disabledUncheckedBorderColor)) * 31) + Color.m2646hashCodeimpl(this.disabledUncheckedIconColor);
    }
}
