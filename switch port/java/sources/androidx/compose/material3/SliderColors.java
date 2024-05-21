package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* compiled from: Slider.kt */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001BZ\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\f\u001a\u00020\u0003ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0016J \u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017J(\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ(\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\u0010H\u0001ø\u0001\u0000¢\u0006\u0004\b\u001d\u0010\u001bR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\n\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\f\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u000b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000eR\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u000e\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u001e"}, d2 = {"Landroidx/compose/material3/SliderColors;", "", "thumbColor", "Landroidx/compose/ui/graphics/Color;", "activeTrackColor", "activeTickColor", "inactiveTrackColor", "inactiveTickColor", "disabledThumbColor", "disabledActiveTrackColor", "disabledActiveTickColor", "disabledInactiveTrackColor", "disabledInactiveTickColor", "(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V", "J", "equals", "", "other", "hashCode", "", "Landroidx/compose/runtime/State;", "enabled", "thumbColor$material3_release", "(ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "tickColor", "active", "tickColor$material3_release", "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;", "trackColor", "trackColor$material3_release", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SliderColors {
    public static final int $stable = 0;
    private final long activeTickColor;
    private final long activeTrackColor;
    private final long disabledActiveTickColor;
    private final long disabledActiveTrackColor;
    private final long disabledInactiveTickColor;
    private final long disabledInactiveTrackColor;
    private final long disabledThumbColor;
    private final long inactiveTickColor;
    private final long inactiveTrackColor;
    private final long thumbColor;

    public /* synthetic */ SliderColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, j2, j3, j4, j5, j6, j7, j8, j9, j10);
    }

    private SliderColors(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10) {
        this.thumbColor = j;
        this.activeTrackColor = j2;
        this.activeTickColor = j3;
        this.inactiveTrackColor = j4;
        this.inactiveTickColor = j5;
        this.disabledThumbColor = j6;
        this.disabledActiveTrackColor = j7;
        this.disabledActiveTickColor = j8;
        this.disabledInactiveTrackColor = j9;
        this.disabledInactiveTickColor = j10;
    }

    public final State<Color> thumbColor$material3_release(boolean z, Composer composer, int i) {
        composer.startReplaceableGroup(-1917959445);
        ComposerKt.sourceInformation(composer, "C(thumbColor)1353@55639L69:Slider.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1917959445, i, -1, "androidx.compose.material3.SliderColors.thumbColor (Slider.kt:1352)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? this.thumbColor : this.disabledThumbColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> trackColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(760609284);
        ComposerKt.sourceInformation(composer, "C(trackColor)P(1)1358@55826L247:Slider.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(760609284, i, -1, "androidx.compose.material3.SliderColors.trackColor (Slider.kt:1357)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.activeTrackColor : this.inactiveTrackColor : z2 ? this.disabledActiveTrackColor : this.disabledInactiveTrackColor), composer, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberUpdatedState;
    }

    public final State<Color> tickColor$material3_release(boolean z, boolean z2, Composer composer, int i) {
        composer.startReplaceableGroup(337026738);
        ComposerKt.sourceInformation(composer, "C(tickColor)P(1)1369@56190L243:Slider.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(337026738, i, -1, "androidx.compose.material3.SliderColors.tickColor (Slider.kt:1368)");
        }
        State<Color> rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(Color.m2629boximpl(z ? z2 ? this.activeTickColor : this.inactiveTickColor : z2 ? this.disabledActiveTickColor : this.disabledInactiveTickColor), composer, 0);
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
        if (other == null || !(other instanceof SliderColors)) {
            return false;
        }
        SliderColors sliderColors = (SliderColors) other;
        return Color.m2640equalsimpl0(this.thumbColor, sliderColors.thumbColor) && Color.m2640equalsimpl0(this.activeTrackColor, sliderColors.activeTrackColor) && Color.m2640equalsimpl0(this.activeTickColor, sliderColors.activeTickColor) && Color.m2640equalsimpl0(this.inactiveTrackColor, sliderColors.inactiveTrackColor) && Color.m2640equalsimpl0(this.inactiveTickColor, sliderColors.inactiveTickColor) && Color.m2640equalsimpl0(this.disabledThumbColor, sliderColors.disabledThumbColor) && Color.m2640equalsimpl0(this.disabledActiveTrackColor, sliderColors.disabledActiveTrackColor) && Color.m2640equalsimpl0(this.disabledActiveTickColor, sliderColors.disabledActiveTickColor) && Color.m2640equalsimpl0(this.disabledInactiveTrackColor, sliderColors.disabledInactiveTrackColor) && Color.m2640equalsimpl0(this.disabledInactiveTickColor, sliderColors.disabledInactiveTickColor);
    }

    public int hashCode() {
        return (((((((((((((((((Color.m2646hashCodeimpl(this.thumbColor) * 31) + Color.m2646hashCodeimpl(this.activeTrackColor)) * 31) + Color.m2646hashCodeimpl(this.activeTickColor)) * 31) + Color.m2646hashCodeimpl(this.inactiveTrackColor)) * 31) + Color.m2646hashCodeimpl(this.inactiveTickColor)) * 31) + Color.m2646hashCodeimpl(this.disabledThumbColor)) * 31) + Color.m2646hashCodeimpl(this.disabledActiveTrackColor)) * 31) + Color.m2646hashCodeimpl(this.disabledActiveTickColor)) * 31) + Color.m2646hashCodeimpl(this.disabledInactiveTrackColor)) * 31) + Color.m2646hashCodeimpl(this.disabledInactiveTickColor);
    }
}
