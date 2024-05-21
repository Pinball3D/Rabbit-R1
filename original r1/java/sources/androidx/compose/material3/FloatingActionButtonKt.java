package androidx.compose.material3;

import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.material3.tokens.MotionTokens;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.Dp;
import io.sentry.HttpStatusCodeRange;
import kotlin.Metadata;

/* compiled from: FloatingActionButton.kt */
@Metadata(d1 = {"\u0000`\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\u001a}\u0010\n\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u001c\u0010\u0019\u001a\u0018\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u000b0\u001a¢\u0006\u0002\b\u001c¢\u0006\u0002\b\u001dH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001e\u0010\u001f\u001a\u008f\u0001\u0010\n\u001a\u00020\u000b2\u0011\u0010 \u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u001c2\u0011\u0010!\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u001c2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\"\u001a\u00020#2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b$\u0010%\u001ar\u0010&\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u001cH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b'\u0010(\u001ar\u0010)\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u001cH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b*\u0010(\u001ar\u0010+\u001a\u00020\u000b2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\r2\b\b\u0002\u0010\u000e\u001a\u00020\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u0015\u001a\u00020\u00162\b\b\u0002\u0010\u0017\u001a\u00020\u00182\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u001cH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010(\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\u0002\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\u0007\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\b\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\"\u0013\u0010\t\u001a\u00020\u0003X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0004\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006-"}, d2 = {"ExtendedFabCollapseAnimation", "Landroidx/compose/animation/ExitTransition;", "ExtendedFabEndIconPadding", "Landroidx/compose/ui/unit/Dp;", "F", "ExtendedFabExpandAnimation", "Landroidx/compose/animation/EnterTransition;", "ExtendedFabMinimumWidth", "ExtendedFabStartIconPadding", "ExtendedFabTextPadding", "ExtendedFloatingActionButton", "", "onClick", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "elevation", "Landroidx/compose/material3/FloatingActionButtonElevation;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/RowScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "ExtendedFloatingActionButton-X-z6DiA", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "text", "icon", "expanded", "", "ExtendedFloatingActionButton-ElI5-7k", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/Composer;II)V", "FloatingActionButton", "FloatingActionButton-X-z6DiA", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/material3/FloatingActionButtonElevation;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "LargeFloatingActionButton", "LargeFloatingActionButton-X-z6DiA", "SmallFloatingActionButton", "SmallFloatingActionButton-X-z6DiA", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FloatingActionButtonKt {
    private static final float ExtendedFabStartIconPadding = Dp.m4883constructorimpl(16);
    private static final float ExtendedFabEndIconPadding = Dp.m4883constructorimpl(12);
    private static final float ExtendedFabTextPadding = Dp.m4883constructorimpl(20);
    private static final float ExtendedFabMinimumWidth = Dp.m4883constructorimpl(80);
    private static final ExitTransition ExtendedFabCollapseAnimation = EnterExitTransitionKt.fadeOut$default(AnimationSpecKt.tween$default(100, 0, MotionTokens.INSTANCE.getEasingLinearCubicBezier(), 2, null), 0.0f, 2, null).plus(EnterExitTransitionKt.shrinkHorizontally$default(AnimationSpecKt.tween$default(HttpStatusCodeRange.DEFAULT_MIN, 0, MotionTokens.INSTANCE.getEasingEmphasizedCubicBezier(), 2, null), Alignment.INSTANCE.getStart(), false, null, 12, null));
    private static final EnterTransition ExtendedFabExpandAnimation = EnterExitTransitionKt.fadeIn$default(AnimationSpecKt.tween(200, 100, MotionTokens.INSTANCE.getEasingLinearCubicBezier()), 0.0f, 2, null).plus(EnterExitTransitionKt.expandHorizontally$default(AnimationSpecKt.tween$default(HttpStatusCodeRange.DEFAULT_MIN, 0, MotionTokens.INSTANCE.getEasingEmphasizedCubicBezier(), 2, null), Alignment.INSTANCE.getStart(), false, null, 12, null));

    /* JADX WARN: Removed duplicated region for block: B:102:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01e4  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01a5  */
    /* renamed from: FloatingActionButton-X-z6DiA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1233FloatingActionButtonXz6DiA(final kotlin.jvm.functions.Function0<kotlin.Unit> r26, androidx.compose.ui.Modifier r27, androidx.compose.ui.graphics.Shape r28, long r29, long r31, androidx.compose.material3.FloatingActionButtonElevation r33, androidx.compose.foundation.interaction.MutableInteractionSource r34, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r35, androidx.compose.runtime.Composer r36, final int r37, final int r38) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.FloatingActionButtonKt.m1233FloatingActionButtonXz6DiA(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.material3.FloatingActionButtonElevation, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ba  */
    /* renamed from: SmallFloatingActionButton-X-z6DiA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1235SmallFloatingActionButtonXz6DiA(final kotlin.jvm.functions.Function0<kotlin.Unit> r28, androidx.compose.ui.Modifier r29, androidx.compose.ui.graphics.Shape r30, long r31, long r33, androidx.compose.material3.FloatingActionButtonElevation r35, androidx.compose.foundation.interaction.MutableInteractionSource r36, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.FloatingActionButtonKt.m1235SmallFloatingActionButtonXz6DiA(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.material3.FloatingActionButtonElevation, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01ba  */
    /* renamed from: LargeFloatingActionButton-X-z6DiA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1234LargeFloatingActionButtonXz6DiA(final kotlin.jvm.functions.Function0<kotlin.Unit> r28, androidx.compose.ui.Modifier r29, androidx.compose.ui.graphics.Shape r30, long r31, long r33, androidx.compose.material3.FloatingActionButtonElevation r35, androidx.compose.foundation.interaction.MutableInteractionSource r36, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 643
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.FloatingActionButtonKt.m1234LargeFloatingActionButtonXz6DiA(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.material3.FloatingActionButtonElevation, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0243  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ba  */
    /* renamed from: ExtendedFloatingActionButton-X-z6DiA, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1232ExtendedFloatingActionButtonXz6DiA(final kotlin.jvm.functions.Function0<kotlin.Unit> r28, androidx.compose.ui.Modifier r29, androidx.compose.ui.graphics.Shape r30, long r31, long r33, androidx.compose.material3.FloatingActionButtonElevation r35, androidx.compose.foundation.interaction.MutableInteractionSource r36, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.RowScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 625
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.FloatingActionButtonKt.m1232ExtendedFloatingActionButtonXz6DiA(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.material3.FloatingActionButtonElevation, androidx.compose.foundation.interaction.MutableInteractionSource, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01c5  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00e7  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02bb  */
    /* JADX WARN: Removed duplicated region for block: B:63:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x01cb  */
    /* renamed from: ExtendedFloatingActionButton-ElI5-7k, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1231ExtendedFloatingActionButtonElI57k(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, final kotlin.jvm.functions.Function0<kotlin.Unit> r32, androidx.compose.ui.Modifier r33, boolean r34, androidx.compose.ui.graphics.Shape r35, long r36, long r38, androidx.compose.material3.FloatingActionButtonElevation r40, androidx.compose.foundation.interaction.MutableInteractionSource r41, androidx.compose.runtime.Composer r42, final int r43, final int r44) {
        /*
            Method dump skipped, instructions count: 724
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.FloatingActionButtonKt.m1231ExtendedFloatingActionButtonElI57k(kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, androidx.compose.material3.FloatingActionButtonElevation, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.runtime.Composer, int, int):void");
    }
}
