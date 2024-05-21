package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.material3.tokens.DatePickerModalTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* compiled from: DatePicker.kt */
@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J'\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\b\u0002\u0010\u001a\u001a\u00020\u001bH\u0007¢\u0006\u0002\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\b\b\u0002\u0010\u001a\u001a\u00020\u001bH\u0007¢\u0006\u0002\u0010\u001eJÓ\u0001\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020\"2\b\b\u0002\u0010$\u001a\u00020\"2\b\b\u0002\u0010%\u001a\u00020\"2\b\b\u0002\u0010&\u001a\u00020\"2\b\b\u0002\u0010'\u001a\u00020\"2\b\b\u0002\u0010(\u001a\u00020\"2\b\b\u0002\u0010)\u001a\u00020\"2\b\b\u0002\u0010*\u001a\u00020\"2\b\b\u0002\u0010+\u001a\u00020\"2\b\b\u0002\u0010,\u001a\u00020\"2\b\b\u0002\u0010-\u001a\u00020\"2\b\b\u0002\u0010.\u001a\u00020\"2\b\b\u0002\u0010/\u001a\u00020\"2\b\b\u0002\u00100\u001a\u00020\"2\b\b\u0002\u00101\u001a\u00020\"2\b\b\u0002\u00102\u001a\u00020\"2\b\b\u0002\u00103\u001a\u00020\"2\b\b\u0002\u00104\u001a\u00020\"H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b5\u00106J'\u00107\u001a\u0002082\u0006\u00109\u001a\u00020:2\u000e\b\u0002\u0010;\u001a\b\u0012\u0004\u0012\u00020=0<H\u0001¢\u0006\u0004\b>\u0010?R\u001c\u0010\u0003\u001a\u00020\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\n\n\u0002\u0010\u0007\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\tX\u0086T¢\u0006\u0002\n\u0000R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118G¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0013\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006@"}, d2 = {"Landroidx/compose/material3/DatePickerDefaults;", "", "()V", "TonalElevation", "Landroidx/compose/ui/unit/Dp;", "getTonalElevation-D9Ej5fM", "()F", "F", "YearAbbrMonthDaySkeleton", "", "YearMonthSkeleton", "YearMonthWeekdayDaySkeleton", "YearRange", "Lkotlin/ranges/IntRange;", "getYearRange", "()Lkotlin/ranges/IntRange;", "shape", "Landroidx/compose/ui/graphics/Shape;", "getShape", "(Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/Shape;", "DatePickerHeadline", "", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/DatePickerState;", "dateFormatter", "Landroidx/compose/material3/DatePickerFormatter;", "modifier", "Landroidx/compose/ui/Modifier;", "(Landroidx/compose/material3/DatePickerState;Landroidx/compose/material3/DatePickerFormatter;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "DatePickerTitle", "(Landroidx/compose/material3/DatePickerState;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V", "colors", "Landroidx/compose/material3/DatePickerColors;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "titleContentColor", "headlineContentColor", "weekdayContentColor", "subheadContentColor", "yearContentColor", "currentYearContentColor", "selectedYearContentColor", "selectedYearContainerColor", "dayContentColor", "disabledDayContentColor", "selectedDayContentColor", "disabledSelectedDayContentColor", "selectedDayContainerColor", "disabledSelectedDayContainerColor", "todayContentColor", "todayDateBorderColor", "dayInSelectionRangeContentColor", "dayInSelectionRangeContainerColor", "colors-1m2Cg-Y", "(JJJJJJJJJJJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material3/DatePickerColors;", "rememberSnapFlingBehavior", "Landroidx/compose/foundation/gestures/FlingBehavior;", "lazyListState", "Landroidx/compose/foundation/lazy/LazyListState;", "decayAnimationSpec", "Landroidx/compose/animation/core/DecayAnimationSpec;", "", "rememberSnapFlingBehavior$material3_release", "(Landroidx/compose/foundation/lazy/LazyListState;Landroidx/compose/animation/core/DecayAnimationSpec;Landroidx/compose/runtime/Composer;II)Landroidx/compose/foundation/gestures/FlingBehavior;", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DatePickerDefaults {
    public static final int $stable = 0;
    public static final String YearAbbrMonthDaySkeleton = "yMMMd";
    public static final String YearMonthSkeleton = "yMMMM";
    public static final String YearMonthWeekdayDaySkeleton = "yMMMMEEEEd";
    public static final DatePickerDefaults INSTANCE = new DatePickerDefaults();
    private static final IntRange YearRange = new IntRange(1900, 2100);
    private static final float TonalElevation = DatePickerModalTokens.INSTANCE.m1791getContainerElevationD9Ej5fM();

    /* renamed from: getTonalElevation-D9Ej5fM, reason: not valid java name */
    public final float m1152getTonalElevationD9Ej5fM() {
        return TonalElevation;
    }

    public final IntRange getYearRange() {
        return YearRange;
    }

    private DatePickerDefaults() {
    }

    /* renamed from: colors-1m2Cg-Y, reason: not valid java name */
    public final DatePickerColors m1151colors1m2CgY(long j, long j2, long j3, long j4, long j5, long j6, long j7, long j8, long j9, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, long j19, Composer composer, int i, int i2, int i3) {
        composer.startReplaceableGroup(543433842);
        ComposerKt.sourceInformation(composer, "C(colors)P(0:c#ui.graphics.Color,14:c#ui.graphics.Color,8:c#ui.graphics.Color,17:c#ui.graphics.Color,13:c#ui.graphics.Color,18:c#ui.graphics.Color,1:c#ui.graphics.Color,12:c#ui.graphics.Color,11:c#ui.graphics.Color,2:c#ui.graphics.Color,5:c#ui.graphics.Color,10:c#ui.graphics.Color,7:c#ui.graphics.Color,9:c#ui.graphics.Color,6:c#ui.graphics.Color,15:c#ui.graphics.Color,16:c#ui.graphics.Color,4:c#ui.graphics.Color,3:c#ui.graphics.Color)359@16109L9,360@16203L9,361@16294L9,362@16387L9,364@16501L9,366@16618L9,367@16716L9,369@16839L9,371@16964L9,372@17059L9,375@17301L9,379@17573L9,382@17826L9,384@17940L9,386@18069L9,388@18209L9:DatePicker.kt#uh7d8r");
        long color = (i3 & 1) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getContainerColor(), composer, 6) : j;
        long color2 = (i3 & 2) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getHeaderSupportingTextColor(), composer, 6) : j2;
        long color3 = (i3 & 4) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getHeaderHeadlineColor(), composer, 6) : j3;
        long color4 = (i3 & 8) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getWeekdaysLabelTextColor(), composer, 6) : j4;
        long color5 = (i3 & 16) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getRangeSelectionMonthSubheadColor(), composer, 6) : j5;
        long color6 = (i3 & 32) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getSelectionYearUnselectedLabelTextColor(), composer, 6) : j6;
        long color7 = (i3 & 64) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateTodayLabelTextColor(), composer, 6) : j7;
        long color8 = (i3 & 128) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getSelectionYearSelectedLabelTextColor(), composer, 6) : j8;
        long color9 = (i3 & 256) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getSelectionYearSelectedContainerColor(), composer, 6) : j9;
        long color10 = (i3 & 512) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateUnselectedLabelTextColor(), composer, 6) : j10;
        long m2638copywmQWz5c$default = (i3 & 1024) != 0 ? Color.m2638copywmQWz5c$default(color10, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        long color11 = (i3 & 2048) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateSelectedLabelTextColor(), composer, 6) : j12;
        long m2638copywmQWz5c$default2 = (i3 & 4096) != 0 ? Color.m2638copywmQWz5c$default(color11, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long color12 = (i3 & 8192) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateSelectedContainerColor(), composer, 6) : j14;
        long m2638copywmQWz5c$default3 = (i3 & 16384) != 0 ? Color.m2638copywmQWz5c$default(color12, 0.38f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        long color13 = (32768 & i3) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateTodayLabelTextColor(), composer, 6) : j16;
        long color14 = (65536 & i3) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getDateTodayContainerOutlineColor(), composer, 6) : j17;
        long color15 = (131072 & i3) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getSelectionDateInRangeLabelTextColor(), composer, 6) : j18;
        long color16 = (i3 & 262144) != 0 ? ColorSchemeKt.toColor(DatePickerModalTokens.INSTANCE.getRangeSelectionActiveIndicatorContainerColor(), composer, 6) : j19;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(543433842, i, i2, "androidx.compose.material3.DatePickerDefaults.colors (DatePicker.kt:358)");
        }
        DatePickerColors datePickerColors = new DatePickerColors(color, color2, color3, color4, color5, color6, color7, color8, color9, color10, m2638copywmQWz5c$default, color11, m2638copywmQWz5c$default2, color12, m2638copywmQWz5c$default3, color13, color14, color16, color15, null);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return datePickerColors;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DatePickerTitle(final androidx.compose.material3.DatePickerState r30, androidx.compose.ui.Modifier r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 327
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DatePickerDefaults.DatePickerTitle(androidx.compose.material3.DatePickerState, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x028c  */
    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void DatePickerHeadline(final androidx.compose.material3.DatePickerState r38, final androidx.compose.material3.DatePickerFormatter r39, androidx.compose.ui.Modifier r40, androidx.compose.runtime.Composer r41, final int r42, final int r43) {
        /*
            Method dump skipped, instructions count: 674
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.DatePickerDefaults.DatePickerHeadline(androidx.compose.material3.DatePickerState, androidx.compose.material3.DatePickerFormatter, androidx.compose.ui.Modifier, androidx.compose.runtime.Composer, int, int):void");
    }

    public final FlingBehavior rememberSnapFlingBehavior$material3_release(LazyListState lazyListState, DecayAnimationSpec<Float> decayAnimationSpec, Composer composer, int i, int i2) {
        Intrinsics.checkNotNullParameter(lazyListState, "lazyListState");
        composer.startReplaceableGroup(-2036003494);
        ComposerKt.sourceInformation(composer, "C(rememberSnapFlingBehavior)P(1)500@22875L7,501@22898L295:DatePicker.kt#uh7d8r");
        if ((i2 & 2) != 0) {
            decayAnimationSpec = DecayAnimationSpecKt.exponentialDecay$default(0.0f, 0.0f, 3, null);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-2036003494, i, -1, "androidx.compose.material3.DatePickerDefaults.rememberSnapFlingBehavior (DatePicker.kt:496)");
        }
        ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
        ComposerKt.sourceInformationMarkerStart(composer, 2023513938, "CC:CompositionLocal.kt#9igjgp");
        Object consume = composer.consume(localDensity);
        ComposerKt.sourceInformationMarkerEnd(composer);
        Density density = (Density) consume;
        composer.startReplaceableGroup(1157296644);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1):Composables.kt#9igjgp");
        boolean changed = composer.changed(density);
        Object rememberedValue = composer.rememberedValue();
        if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
            rememberedValue = new SnapFlingBehavior(lazyListState, decayAnimationSpec, AnimationSpecKt.spring$default(0.0f, 400.0f, null, 5, null), density);
            composer.updateRememberedValue(rememberedValue);
        }
        composer.endReplaceableGroup();
        SnapFlingBehavior snapFlingBehavior = (SnapFlingBehavior) rememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return snapFlingBehavior;
    }

    public final Shape getShape(Composer composer, int i) {
        composer.startReplaceableGroup(700927667);
        ComposerKt.sourceInformation(composer, "C518@23583L9:DatePicker.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(700927667, i, -1, "androidx.compose.material3.DatePickerDefaults.<get-shape> (DatePicker.kt:518)");
        }
        Shape shape = ShapesKt.toShape(DatePickerModalTokens.INSTANCE.getContainerShape(), composer, 6);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return shape;
    }
}
