package androidx.compose.material3;

import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.material3.tokens.CircularProgressIndicatorTokens;
import androidx.compose.material3.tokens.LinearProgressIndicatorTokens;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.OffsetKt;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import androidx.compose.ui.graphics.StrokeCap;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.drawscope.Stroke;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: ProgressIndicator.kt */
@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0013\u001a3\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020\u0005H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b)\u0010*\u001aG\u0010\"\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020\u00052\b\b\u0002\u0010+\u001a\u00020'2\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b.\u0010/\u001a;\u0010\"\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020\u0005H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b1\u00102\u001aO\u0010\"\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010(\u001a\u00020\u00052\b\b\u0002\u0010+\u001a\u00020'2\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b3\u00104\u001a3\u00105\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010+\u001a\u00020'H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b6\u00107\u001a=\u00105\u001a\u00020#2\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010+\u001a\u00020'2\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b8\u00109\u001a;\u00105\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010+\u001a\u00020'H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b:\u0010;\u001aE\u00105\u001a\u00020#2\u0006\u00100\u001a\u00020\u00012\b\b\u0002\u0010$\u001a\u00020%2\b\b\u0002\u0010&\u001a\u00020'2\b\b\u0002\u0010+\u001a\u00020'2\b\b\u0002\u0010,\u001a\u00020-H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b<\u0010=\u001a9\u0010>\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\u0006\u0010B\u001a\u00020CH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bD\u0010E\u001a)\u0010F\u001a\u00020#*\u00020?2\u0006\u0010&\u001a\u00020'2\u0006\u0010B\u001a\u00020CH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bG\u0010H\u001a9\u0010I\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\u0006\u0010B\u001a\u00020CH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bJ\u0010E\u001aA\u0010K\u001a\u00020#*\u00020?2\u0006\u0010@\u001a\u00020\u00012\u0006\u0010(\u001a\u00020\u00052\u0006\u0010A\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\u0006\u0010B\u001a\u00020CH\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bL\u0010M\u001aA\u0010N\u001a\u00020#*\u00020?2\u0006\u0010O\u001a\u00020\u00012\u0006\u0010P\u001a\u00020\u00012\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bQ\u0010R\u001a1\u0010S\u001a\u00020#*\u00020?2\u0006\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00012\u0006\u0010,\u001a\u00020-H\u0002ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bT\u0010U\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0019\u0010\u0004\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007\"\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\r\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000e\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u000f\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u0010\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0011\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0012\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u0019\u0010\u0014\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0015\u0010\u0007\"\u0019\u0010\u0016\u001a\u00020\u0005X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0017\u0010\u0007\"\u000e\u0010\u0018\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0019\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001a\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001b\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001c\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001d\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\"\u000e\u0010!\u001a\u00020\u0001X\u0082T¢\u0006\u0002\n\u0000\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006V"}, d2 = {"BaseRotationAngle", "", "CircularEasing", "Landroidx/compose/animation/core/CubicBezierEasing;", "CircularIndicatorDiameter", "Landroidx/compose/ui/unit/Dp;", "getCircularIndicatorDiameter", "()F", "F", "FirstLineHeadDelay", "", "FirstLineHeadDuration", "FirstLineHeadEasing", "FirstLineTailDelay", "FirstLineTailDuration", "FirstLineTailEasing", "HeadAndTailAnimationDuration", "HeadAndTailDelayDuration", "JumpRotationAngle", "LinearAnimationDuration", "LinearIndicatorHeight", "getLinearIndicatorHeight", "LinearIndicatorWidth", "getLinearIndicatorWidth", "RotationAngleOffset", "RotationDuration", "RotationsPerCycle", "SecondLineHeadDelay", "SecondLineHeadDuration", "SecondLineHeadEasing", "SecondLineTailDelay", "SecondLineTailDuration", "SecondLineTailEasing", "StartAngleOffset", "CircularProgressIndicator", "", "modifier", "Landroidx/compose/ui/Modifier;", "color", "Landroidx/compose/ui/graphics/Color;", "strokeWidth", "CircularProgressIndicator-aM-cp0Q", "(Landroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "trackColor", "strokeCap", "Landroidx/compose/ui/graphics/StrokeCap;", "CircularProgressIndicator-LxG7B9w", "(Landroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", NotificationCompat.CATEGORY_PROGRESS, "CircularProgressIndicator-MBs18nI", "(FLandroidx/compose/ui/Modifier;JFLandroidx/compose/runtime/Composer;II)V", "CircularProgressIndicator-DUhRLBM", "(FLandroidx/compose/ui/Modifier;JFJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator", "LinearProgressIndicator-RIQooxk", "(Landroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-2cYBFYY", "(Landroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-eaDK9VM", "(FLandroidx/compose/ui/Modifier;JJLandroidx/compose/runtime/Composer;II)V", "LinearProgressIndicator-_5eSR-E", "(FLandroidx/compose/ui/Modifier;JJILandroidx/compose/runtime/Composer;II)V", "drawCircularIndicator", "Landroidx/compose/ui/graphics/drawscope/DrawScope;", "startAngle", "sweep", "stroke", "Landroidx/compose/ui/graphics/drawscope/Stroke;", "drawCircularIndicator-42QJj7c", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawCircularIndicatorTrack", "drawCircularIndicatorTrack-bw27NRU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawDeterminateCircularIndicator", "drawDeterminateCircularIndicator-42QJj7c", "drawIndeterminateCircularIndicator", "drawIndeterminateCircularIndicator-hrjfTZI", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFFJLandroidx/compose/ui/graphics/drawscope/Stroke;)V", "drawLinearIndicator", "startFraction", "endFraction", "drawLinearIndicator-qYKTg0g", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;FFJFI)V", "drawLinearIndicatorTrack", "drawLinearIndicatorTrack-AZGd3zU", "(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFI)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ProgressIndicatorKt {
    private static final float BaseRotationAngle = 286.0f;
    private static final int FirstLineHeadDelay = 0;
    private static final int FirstLineHeadDuration = 750;
    private static final int FirstLineTailDelay = 333;
    private static final int FirstLineTailDuration = 850;
    private static final int HeadAndTailAnimationDuration = 666;
    private static final int HeadAndTailDelayDuration = 666;
    private static final float JumpRotationAngle = 290.0f;
    private static final int LinearAnimationDuration = 1800;
    private static final float RotationAngleOffset = 216.0f;
    private static final int RotationDuration = 1332;
    private static final int RotationsPerCycle = 5;
    private static final int SecondLineHeadDelay = 1000;
    private static final int SecondLineHeadDuration = 567;
    private static final int SecondLineTailDelay = 1267;
    private static final int SecondLineTailDuration = 533;
    private static final float StartAngleOffset = -90.0f;
    private static final float LinearIndicatorWidth = Dp.m4883constructorimpl(240);
    private static final float LinearIndicatorHeight = LinearProgressIndicatorTokens.INSTANCE.m1955getTrackHeightD9Ej5fM();
    private static final float CircularIndicatorDiameter = Dp.m4883constructorimpl(CircularProgressIndicatorTokens.INSTANCE.m1727getSizeD9Ej5fM() - Dp.m4883constructorimpl(CircularProgressIndicatorTokens.INSTANCE.m1726getActiveIndicatorWidthD9Ej5fM() * 2));
    private static final CubicBezierEasing FirstLineHeadEasing = new CubicBezierEasing(0.2f, 0.0f, 0.8f, 1.0f);
    private static final CubicBezierEasing FirstLineTailEasing = new CubicBezierEasing(0.4f, 0.0f, 1.0f, 1.0f);
    private static final CubicBezierEasing SecondLineHeadEasing = new CubicBezierEasing(0.0f, 0.0f, 0.65f, 1.0f);
    private static final CubicBezierEasing SecondLineTailEasing = new CubicBezierEasing(0.1f, 0.0f, 0.45f, 1.0f);
    private static final CubicBezierEasing CircularEasing = new CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f);

    public static final float getCircularIndicatorDiameter() {
        return CircularIndicatorDiameter;
    }

    public static final float getLinearIndicatorHeight() {
        return LinearIndicatorHeight;
    }

    public static final float getLinearIndicatorWidth() {
        return LinearIndicatorWidth;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0139 A[LOOP:0: B:49:0x0137->B:50:0x0139, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x005d  */
    /* renamed from: LinearProgressIndicator-_5eSR-E, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1348LinearProgressIndicator_5eSRE(final float r16, androidx.compose.ui.Modifier r17, long r18, long r20, int r22, androidx.compose.runtime.Composer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1348LinearProgressIndicator_5eSRE(float, androidx.compose.ui.Modifier, long, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x023f  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01e8 A[LOOP:0: B:45:0x01e5->B:47:0x01e8, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00af  */
    /* renamed from: LinearProgressIndicator-2cYBFYY, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1346LinearProgressIndicator2cYBFYY(androidx.compose.ui.Modifier r21, long r22, long r24, int r26, androidx.compose.runtime.Composer r27, final int r28, final int r29) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1346LinearProgressIndicator2cYBFYY(androidx.compose.ui.Modifier, long, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0061  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: LinearProgressIndicator-eaDK9VM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1349LinearProgressIndicatoreaDK9VM(final float r20, androidx.compose.ui.Modifier r21, long r22, long r24, androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1349LinearProgressIndicatoreaDK9VM(float, androidx.compose.ui.Modifier, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: LinearProgressIndicator-RIQooxk, reason: not valid java name */
    public static final /* synthetic */ void m1347LinearProgressIndicatorRIQooxk(Modifier modifier, long j, long j2, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        long j3;
        long j4;
        Modifier.Companion companion;
        long j5;
        Composer startRestartGroup = composer.startRestartGroup(585576195);
        ComposerKt.sourceInformation(startRestartGroup, "C(LinearProgressIndicator)P(1,0:c#ui.graphics.Color,2:c#ui.graphics.Color)208@8403L11,209@8466L16,210@8488L126:ProgressIndicator.kt#uh7d8r");
        int i4 = i2 & 1;
        if (i4 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 14) == 0) {
            modifier2 = modifier;
            i3 = (startRestartGroup.changed(modifier2) ? 4 : 2) | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 112) == 0) {
            j3 = j;
            i3 |= ((i2 & 2) == 0 && startRestartGroup.changed(j3)) ? 32 : 16;
        } else {
            j3 = j;
        }
        if ((i & 896) == 0) {
            j4 = j2;
            i3 |= ((i2 & 4) == 0 && startRestartGroup.changed(j4)) ? 256 : 128;
        } else {
            j4 = j2;
        }
        if ((i3 & 731) == 146 && startRestartGroup.getSkipping()) {
            startRestartGroup.skipToGroupEnd();
            companion = modifier2;
            j5 = j3;
        } else {
            startRestartGroup.startDefaults();
            if ((i & 1) == 0 || startRestartGroup.getDefaultsInvalid()) {
                companion = i4 != 0 ? Modifier.INSTANCE : modifier2;
                if ((i2 & 2) != 0) {
                    j3 = ProgressIndicatorDefaults.INSTANCE.getLinearColor(startRestartGroup, 6);
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    j4 = ProgressIndicatorDefaults.INSTANCE.getLinearTrackColor(startRestartGroup, 6);
                    i3 &= -897;
                }
            } else {
                startRestartGroup.skipToGroupEnd();
                if ((i2 & 2) != 0) {
                    i3 &= -113;
                }
                if ((i2 & 4) != 0) {
                    i3 &= -897;
                }
                companion = modifier2;
            }
            int i5 = i3;
            j5 = j3;
            long j6 = j4;
            startRestartGroup.endDefaults();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(585576195, i5, -1, "androidx.compose.material3.LinearProgressIndicator (ProgressIndicator.kt:206)");
            }
            m1346LinearProgressIndicator2cYBFYY(companion, j5, j6, ProgressIndicatorDefaults.INSTANCE.m1341getLinearStrokeCapKaPHkGw(), startRestartGroup, (i5 & 14) | 3072 | (i5 & 112) | (i5 & 896), 0);
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
            j4 = j6;
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        final Modifier modifier3 = companion;
        final long j7 = j5;
        final long j8 = j4;
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ProgressIndicatorKt$LinearProgressIndicator$6
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i6) {
                ProgressIndicatorKt.m1347LinearProgressIndicatorRIQooxk(Modifier.this, j7, j8, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), i2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicator-qYKTg0g, reason: not valid java name */
    public static final void m1359drawLinearIndicatorqYKTg0g(DrawScope drawScope, float f, float f2, long j, float f3, int i) {
        float m2469getWidthimpl = Size.m2469getWidthimpl(drawScope.mo3182getSizeNHjbRc());
        float m2466getHeightimpl = Size.m2466getHeightimpl(drawScope.mo3182getSizeNHjbRc());
        float f4 = 2;
        float f5 = m2466getHeightimpl / f4;
        boolean z = drawScope.getLayoutDirection() == LayoutDirection.Ltr;
        float f6 = (z ? f : 1.0f - f2) * m2469getWidthimpl;
        float f7 = (z ? f2 : 1.0f - f) * m2469getWidthimpl;
        if (StrokeCap.m2981equalsimpl0(i, StrokeCap.INSTANCE.m2985getButtKaPHkGw()) || m2466getHeightimpl > m2469getWidthimpl) {
            DrawScope.m3169drawLineNGM6Ib0$default(drawScope, j, OffsetKt.Offset(f6, f5), OffsetKt.Offset(f7, f5), f3, 0, null, 0.0f, null, 0, 496, null);
            return;
        }
        float f8 = f3 / f4;
        ClosedFloatingPointRange<Float> rangeTo = RangesKt.rangeTo(f8, m2469getWidthimpl - f8);
        float floatValue = ((Number) RangesKt.coerceIn(Float.valueOf(f6), rangeTo)).floatValue();
        float floatValue2 = ((Number) RangesKt.coerceIn(Float.valueOf(f7), rangeTo)).floatValue();
        if (Math.abs(f2 - f) > 0.0f) {
            DrawScope.m3169drawLineNGM6Ib0$default(drawScope, j, OffsetKt.Offset(floatValue, f5), OffsetKt.Offset(floatValue2, f5), f3, i, null, 0.0f, null, 0, 480, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawLinearIndicatorTrack-AZGd3zU, reason: not valid java name */
    public static final void m1360drawLinearIndicatorTrackAZGd3zU(DrawScope drawScope, long j, float f, int i) {
        m1359drawLinearIndicatorqYKTg0g(drawScope, 0.0f, 1.0f, j, f, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x005e  */
    /* renamed from: CircularProgressIndicator-DUhRLBM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1342CircularProgressIndicatorDUhRLBM(final float r18, androidx.compose.ui.Modifier r19, long r20, float r22, long r23, int r25, androidx.compose.runtime.Composer r26, final int r27, final int r28) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1342CircularProgressIndicatorDUhRLBM(float, androidx.compose.ui.Modifier, long, float, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0287  */
    /* JADX WARN: Removed duplicated region for block: B:38:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0276  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x007f  */
    /* renamed from: CircularProgressIndicator-LxG7B9w, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1343CircularProgressIndicatorLxG7B9w(androidx.compose.ui.Modifier r23, long r24, float r26, long r27, int r29, androidx.compose.runtime.Composer r30, final int r31, final int r32) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1343CircularProgressIndicatorLxG7B9w(androidx.compose.ui.Modifier, long, float, long, int, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0063  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: CircularProgressIndicator-MBs18nI, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1344CircularProgressIndicatorMBs18nI(final float r20, androidx.compose.ui.Modifier r21, long r22, float r24, androidx.compose.runtime.Composer r25, final int r26, final int r27) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1344CircularProgressIndicatorMBs18nI(float, androidx.compose.ui.Modifier, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00a1  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Maintained for binary compatibility")
    /* renamed from: CircularProgressIndicator-aM-cp0Q, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1345CircularProgressIndicatoraMcp0Q(androidx.compose.ui.Modifier r19, long r20, float r22, androidx.compose.runtime.Composer r23, final int r24, final int r25) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ProgressIndicatorKt.m1345CircularProgressIndicatoraMcp0Q(androidx.compose.ui.Modifier, long, float, androidx.compose.runtime.Composer, int, int):void");
    }

    /* renamed from: drawCircularIndicator-42QJj7c, reason: not valid java name */
    private static final void m1355drawCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        float f3 = 2;
        float width = stroke.getWidth() / f3;
        float m2469getWidthimpl = Size.m2469getWidthimpl(drawScope.mo3182getSizeNHjbRc()) - (f3 * width);
        DrawScope.m3162drawArcyD3GUKo$default(drawScope, j, f, f2, false, OffsetKt.Offset(width, width), SizeKt.Size(m2469getWidthimpl, m2469getWidthimpl), 0.0f, stroke, null, 0, 832, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawCircularIndicatorTrack-bw27NRU, reason: not valid java name */
    public static final void m1356drawCircularIndicatorTrackbw27NRU(DrawScope drawScope, long j, Stroke stroke) {
        m1355drawCircularIndicator42QJj7c(drawScope, 0.0f, 360.0f, j, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawDeterminateCircularIndicator-42QJj7c, reason: not valid java name */
    public static final void m1357drawDeterminateCircularIndicator42QJj7c(DrawScope drawScope, float f, float f2, long j, Stroke stroke) {
        m1355drawCircularIndicator42QJj7c(drawScope, f, f2, j, stroke);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: drawIndeterminateCircularIndicator-hrjfTZI, reason: not valid java name */
    public static final void m1358drawIndeterminateCircularIndicatorhrjfTZI(DrawScope drawScope, float f, float f2, float f3, long j, Stroke stroke) {
        m1355drawCircularIndicator42QJj7c(drawScope, f + (StrokeCap.m2981equalsimpl0(stroke.getCap(), StrokeCap.INSTANCE.m2985getButtKaPHkGw()) ? 0.0f : ((f2 / Dp.m4883constructorimpl(CircularIndicatorDiameter / 2)) * 57.29578f) / 2.0f), Math.max(f3, 0.1f), j, stroke);
    }
}
