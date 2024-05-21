package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.PlainTooltipTokens;
import androidx.compose.material3.tokens.RichTooltipTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.InspectableValueKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.profileinstaller.ProfileVerifier;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FloatCompanionObject;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;

/* compiled from: Tooltip.kt */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\u001ax\u0010\u001a\u001a\u00020\u001b2\u0011\u0010\u001c\u001a\r\u0012\u0004\u0012\u00020\u001b0\u001d¢\u0006\u0002\b\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020&2\b\b\u0002\u0010'\u001a\u00020&2\u001c\u0010(\u001a\u0018\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u001b0)¢\u0006\u0002\b\u001e¢\u0006\u0002\b+H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b,\u0010-\u001a0\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020&2\u0011\u0010(\u001a\r\u0012\u0004\u0012\u00020\u001b0\u001d¢\u0006\u0002\b\u001eH\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b0\u00101\u001a\u0094\u0001\u00102\u001a\u00020\u001b2\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u001b0\u001d¢\u0006\u0002\b\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u0002042\u0015\b\u0002\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001d¢\u0006\u0002\b\u001e2\u0015\b\u0002\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001d¢\u0006\u0002\b\u001e2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u00107\u001a\u0002082\u001c\u0010(\u001a\u0018\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u001b0)¢\u0006\u0002\b\u001e¢\u0006\u0002\b+H\u0007¢\u0006\u0002\u00109\u001aR\u0010:\u001a\u00020\u001b2\u0006\u00107\u001a\u0002082\u0011\u00103\u001a\r\u0012\u0004\u0012\u00020\u001b0\u001d¢\u0006\u0002\b\u001e2\u0013\u00105\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001d¢\u0006\u0002\b\u001e2\u0013\u00106\u001a\u000f\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001d¢\u0006\u0002\b\u001eH\u0003¢\u0006\u0002\u0010;\u001a~\u0010<\u001a\u00020\u001b2\u0011\u0010=\u001a\r\u0012\u0004\u0012\u00020\u001b0\u001d¢\u0006\u0002\b\u001e2\u0006\u0010>\u001a\u00020?2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010#\u001a\u00020$2\u0006\u0010!\u001a\u00020@2\u0006\u0010%\u001a\u00020&2\u0006\u0010A\u001a\u00020\u00012\u0006\u0010B\u001a\u00020\u00012\u001c\u0010(\u001a\u0018\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u001b0)¢\u0006\u0002\b\u001e¢\u0006\u0002\b+H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\bC\u0010D\u001a\u001a\u0010E\u001a\u00020 *\u00020 2\f\u0010F\u001a\b\u0012\u0004\u0012\u00020H0GH\u0002\u001a\u001c\u0010I\u001a\u00020 *\u00020 2\u0006\u0010J\u001a\u00020H2\u0006\u0010K\u001a\u00020HH\u0002\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\"\u0013\u0010\b\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\t\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\n\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0019\u0010\u000b\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\f\u0010\r\"\u0013\u0010\u000e\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u000f\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0010\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u000e\u0010\u0011\u001a\u00020\u0012X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0013\u001a\u00020\u0014X\u0080T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0015\u001a\u00020\u0014X\u0082T¢\u0006\u0002\n\u0000\"\u0019\u0010\u0016\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0017\u0010\r\"\u0019\u0010\u0018\u001a\u00020\u0001X\u0080\u0004ø\u0001\u0000¢\u0006\n\n\u0002\u0010\u0002\u001a\u0004\b\u0019\u0010\r\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006L"}, d2 = {"ActionLabelBottomPadding", "Landroidx/compose/ui/unit/Dp;", "F", "ActionLabelMinHeight", "HeightFromSubheadToTextFirstLine", "HeightToSubheadFirstLine", "PlainTooltipContentPadding", "Landroidx/compose/foundation/layout/PaddingValues;", "PlainTooltipHorizontalPadding", "PlainTooltipMaxWidth", "PlainTooltipVerticalPadding", "RichTooltipHorizontalPadding", "getRichTooltipHorizontalPadding", "()F", "RichTooltipMaxWidth", "TextBottomPadding", "TooltipAnchorPadding", "TooltipDuration", "", "TooltipFadeInDuration", "", "TooltipFadeOutDuration", "TooltipMinHeight", "getTooltipMinHeight", "TooltipMinWidth", "getTooltipMinWidth", "PlainTooltipBox", "", "tooltip", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "modifier", "Landroidx/compose/ui/Modifier;", "tooltipState", "Landroidx/compose/material3/PlainTooltipState;", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "content", "Lkotlin/Function1;", "Landroidx/compose/material3/TooltipBoxScope;", "Lkotlin/ExtensionFunctionType;", "PlainTooltipBox-nBX6wN0", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/PlainTooltipState;Landroidx/compose/ui/graphics/Shape;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "PlainTooltipImpl", "textColor", "PlainTooltipImpl-Iv8Zu3U", "(JLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "RichTooltipBox", "text", "Landroidx/compose/material3/RichTooltipState;", "title", "action", "colors", "Landroidx/compose/material3/RichTooltipColors;", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/RichTooltipState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/RichTooltipColors;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "RichTooltipImpl", "(Landroidx/compose/material3/RichTooltipColors;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "TooltipBox", "tooltipContent", "tooltipPositionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "Landroidx/compose/material3/TooltipState;", "elevation", "maxWidth", "TooltipBox-XDn_Kpo", "(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/window/PopupPositionProvider;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/TooltipState;JFFLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V", "animateTooltip", "transition", "Landroidx/compose/animation/core/Transition;", "", "textVerticalPadding", "subheadExists", "actionExists", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TooltipKt {
    private static final float ActionLabelBottomPadding;
    private static final float ActionLabelMinHeight;
    private static final float HeightFromSubheadToTextFirstLine;
    private static final float HeightToSubheadFirstLine;
    private static final PaddingValues PlainTooltipContentPadding;
    private static final float PlainTooltipHorizontalPadding;
    private static final float PlainTooltipVerticalPadding;
    private static final float RichTooltipHorizontalPadding;
    private static final float RichTooltipMaxWidth;
    private static final float TextBottomPadding;
    private static final float TooltipAnchorPadding;
    public static final long TooltipDuration = 1500;
    public static final int TooltipFadeInDuration = 150;
    private static final int TooltipFadeOutDuration = 75;
    private static final float TooltipMinHeight;
    private static final float TooltipMinWidth = Dp.m4883constructorimpl(40);
    private static final float PlainTooltipMaxWidth = Dp.m4883constructorimpl(200);

    public static final float getRichTooltipHorizontalPadding() {
        return RichTooltipHorizontalPadding;
    }

    public static final float getTooltipMinHeight() {
        return TooltipMinHeight;
    }

    public static final float getTooltipMinWidth() {
        return TooltipMinWidth;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00ce  */
    /* renamed from: PlainTooltipBox-nBX6wN0, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1673PlainTooltipBoxnBX6wN0(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r23, androidx.compose.ui.Modifier r24, androidx.compose.material3.PlainTooltipState r25, androidx.compose.ui.graphics.Shape r26, long r27, long r29, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.TooltipBoxScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, androidx.compose.runtime.Composer r32, final int r33, final int r34) {
        /*
            Method dump skipped, instructions count: 590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipKt.m1673PlainTooltipBoxnBX6wN0(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, androidx.compose.material3.PlainTooltipState, androidx.compose.ui.graphics.Shape, long, long, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:50:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01b5  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x01f0  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0295  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void RichTooltipBox(final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r28, androidx.compose.ui.Modifier r29, androidx.compose.material3.RichTooltipState r30, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r31, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r32, androidx.compose.ui.graphics.Shape r33, androidx.compose.material3.RichTooltipColors r34, final kotlin.jvm.functions.Function3<? super androidx.compose.material3.TooltipBoxScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r35, androidx.compose.runtime.Composer r36, final int r37, final int r38) {
        /*
            Method dump skipped, instructions count: 701
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.TooltipKt.RichTooltipBox(kotlin.jvm.functions.Function2, androidx.compose.ui.Modifier, androidx.compose.material3.RichTooltipState, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, androidx.compose.ui.graphics.Shape, androidx.compose.material3.RichTooltipColors, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: TooltipBox-XDn_Kpo, reason: not valid java name */
    public static final void m1675TooltipBoxXDn_Kpo(final Function2<? super Composer, ? super Integer, Unit> function2, final PopupPositionProvider popupPositionProvider, final Modifier modifier, final Shape shape, final TooltipState tooltipState, final long j, final float f, final float f2, final Function3<? super TooltipBoxScope, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1415647894);
        ComposerKt.sourceInformation(startRestartGroup, "C(TooltipBox)P(6,7,4,5,8,0:c#ui.graphics.Color,2:c#ui.unit.Dp,3:c#ui.unit.Dp)199@8111L24,200@8161L49,202@8228L1804,245@10038L1263:Tooltip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(popupPositionProvider) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(modifier) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(shape) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(tooltipState) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(j) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changed(f2) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function3) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((191739611 & i2) != 38347922 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1415647894, i2, -1, "androidx.compose.material3.TooltipBox (Tooltip.kt:188)");
            }
            startRestartGroup.startReplaceableGroup(773894976);
            ComposerKt.sourceInformation(startRestartGroup, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, startRestartGroup));
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
            startRestartGroup.endReplaceableGroup();
            final String m1475getStringNWtq28 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1473getTooltipLongPressLabeladMyvUU(), startRestartGroup, 6);
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = new TooltipBoxScope() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1
                    @Override // androidx.compose.material3.TooltipBoxScope
                    public Modifier tooltipAnchor(Modifier modifier2) {
                        Intrinsics.checkNotNullParameter(modifier2, "<this>");
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        final TooltipState tooltipState2 = TooltipState.this;
                        final Function0<Job> function0 = new Function0<Job>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Job invoke() {
                                Job launch$default;
                                launch$default = BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(tooltipState2, null), 3, null);
                                return launch$default;
                            }

                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* compiled from: Tooltip.kt */
                            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                            @DebugMetadata(c = "androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1$1", f = "Tooltip.kt", i = {}, l = {208}, m = "invokeSuspend", n = {}, s = {})
                            /* renamed from: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$onLongPress$1$1, reason: invalid class name */
                            /* loaded from: classes.dex */
                            public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                final /* synthetic */ TooltipState $tooltipState;
                                int label;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                AnonymousClass1(TooltipState tooltipState, Continuation<? super AnonymousClass1> continuation) {
                                    super(2, continuation);
                                    this.$tooltipState = tooltipState;
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                    return new AnonymousClass1(this.$tooltipState, continuation);
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                                    return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Object invokeSuspend(Object obj) {
                                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                                    int i = this.label;
                                    if (i == 0) {
                                        ResultKt.throwOnFailure(obj);
                                        this.label = 1;
                                        if (this.$tooltipState.show(this) == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                    } else {
                                        if (i != 1) {
                                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                        }
                                        ResultKt.throwOnFailure(obj);
                                    }
                                    return Unit.INSTANCE;
                                }
                            }
                        };
                        Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(modifier2, TooltipState.this, new TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$1(function0, null));
                        final String str = m1475getStringNWtq28;
                        return SemanticsModifierKt.semantics(pointerInput, true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            /* JADX WARN: Multi-variable type inference failed */
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                invoke2(semanticsPropertyReceiver);
                                return Unit.INSTANCE;
                            }

                            /* renamed from: invoke, reason: avoid collision after fix types in other method */
                            public final void invoke2(SemanticsPropertyReceiver semantics) {
                                Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                String str2 = str;
                                final Function0<Job> function02 = function0;
                                SemanticsPropertiesKt.onLongClick(semantics, str2, new Function0<Boolean>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$scope$1$1$tooltipAnchor$2.1
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    /* JADX WARN: Multi-variable type inference failed */
                                    {
                                        super(0);
                                    }

                                    /* JADX WARN: Can't rename method to resolve collision */
                                    @Override // kotlin.jvm.functions.Function0
                                    public final Boolean invoke() {
                                        function02.invoke();
                                        return true;
                                    }
                                });
                            }
                        });
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            TooltipKt$TooltipBox$scope$1$1 tooltipKt$TooltipBox$scope$1$1 = (TooltipKt$TooltipBox$scope$1$1) rememberedValue2;
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            Modifier.Companion companion = Modifier.INSTANCE;
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(companion);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1995827622, "C246@10069L70,275@11286L9:Tooltip.kt#uh7d8r");
            final Transition updateTransition = TransitionKt.updateTransition(Boolean.valueOf(tooltipState.isVisible()), "Tooltip transition", startRestartGroup, 48, 0);
            startRestartGroup.startReplaceableGroup(-1995827526);
            ComposerKt.sourceInformation(startRestartGroup, "248@10246L41,249@10300L960");
            if (((Boolean) updateTransition.getCurrentState()).booleanValue() || ((Boolean) updateTransition.getTargetState()).booleanValue()) {
                final String m1475getStringNWtq282 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1474getTooltipPaneDescriptionadMyvUU(), startRestartGroup, 6);
                final int i3 = i2;
                TooltipPopup_androidKt.TooltipPopup(popupPositionProvider, new Function0<Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        if (TooltipState.this.isVisible()) {
                            BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass1(TooltipState.this, null), 3, null);
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: Tooltip.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.TooltipKt$TooltipBox$1$1$1", f = "Tooltip.kt", i = {}, l = {254}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.TooltipKt$TooltipBox$1$1$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ TooltipState $tooltipState;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(TooltipState tooltipState, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$tooltipState = tooltipState;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$tooltipState, continuation);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                            int i = this.label;
                            if (i == 0) {
                                ResultKt.throwOnFailure(obj);
                                this.label = 1;
                                if (this.$tooltipState.dismiss(this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            } else {
                                if (i != 1) {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                                ResultKt.throwOnFailure(obj);
                            }
                            return Unit.INSTANCE;
                        }
                    }
                }, ComposableLambdaKt.composableLambda(startRestartGroup, -442150991, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                        invoke(composer2, num.intValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(Composer composer2, int i4) {
                        Modifier animateTooltip;
                        ComposerKt.sourceInformation(composer2, "C265@10968L38,257@10611L635:Tooltip.kt#uh7d8r");
                        if ((i4 & 11) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(-442150991, i4, -1, "androidx.compose.material3.TooltipBox.<anonymous>.<anonymous> (Tooltip.kt:256)");
                            }
                            animateTooltip = TooltipKt.animateTooltip(SizeKt.m541sizeInqDBjuR0$default(Modifier.this, TooltipKt.getTooltipMinWidth(), TooltipKt.getTooltipMinHeight(), f2, 0.0f, 8, null), updateTransition);
                            final String str = m1475getStringNWtq282;
                            composer2.startReplaceableGroup(1157296644);
                            ComposerKt.sourceInformation(composer2, "CC(remember)P(1):Composables.kt#9igjgp");
                            boolean changed = composer2.changed(str);
                            Object rememberedValue3 = composer2.rememberedValue();
                            if (changed || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                                rememberedValue3 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$1$2$1$1
                                    /* JADX INFO: Access modifiers changed from: package-private */
                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                        invoke2(semanticsPropertyReceiver);
                                        return Unit.INSTANCE;
                                    }

                                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                    public final void invoke2(SemanticsPropertyReceiver semantics) {
                                        Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                        SemanticsPropertiesKt.setPaneTitle(semantics, str);
                                    }
                                };
                                composer2.updateRememberedValue(rememberedValue3);
                            }
                            composer2.endReplaceableGroup();
                            Modifier semantics$default = SemanticsModifierKt.semantics$default(animateTooltip, false, (Function1) rememberedValue3, 1, null);
                            Shape shape2 = shape;
                            long j2 = j;
                            float f3 = f;
                            Function2<Composer, Integer, Unit> function22 = function2;
                            int i5 = i3;
                            SurfaceKt.m1484SurfaceT9BRK9s(semantics$default, shape2, j2, 0L, f3, f3, null, function22, composer2, ((i5 >> 6) & 112) | ((i5 >> 9) & 896) | (57344 & (i5 >> 6)) | ((i5 >> 3) & 458752) | ((i5 << 21) & 29360128), 72);
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventEnd();
                                return;
                            }
                            return;
                        }
                        composer2.skipToGroupEnd();
                    }
                }), startRestartGroup, ((i2 >> 3) & 14) | 384);
            }
            startRestartGroup.endReplaceableGroup();
            function3.invoke(tooltipKt$TooltipBox$scope$1$1, startRestartGroup, Integer.valueOf(((i2 >> 21) & 112) | 6));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$TooltipBox$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                TooltipKt.m1675TooltipBoxXDn_Kpo(function2, popupPositionProvider, modifier, shape, tooltipState, j, f, f2, function3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: PlainTooltipImpl-Iv8Zu3U, reason: not valid java name */
    public static final void m1674PlainTooltipImplIv8Zu3U(final long j, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(893340370);
        ComposerKt.sourceInformation(startRestartGroup, "C(PlainTooltipImpl)P(1:c#ui.graphics.Color)284@11413L337:Tooltip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i2 & 91) != 18 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(893340370, i2, -1, "androidx.compose.material3.PlainTooltipImpl (Tooltip.kt:280)");
            }
            Modifier padding = PaddingKt.padding(Modifier.INSTANCE, PlainTooltipContentPadding);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(padding);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1000468479, "C285@11514L10,286@11582L162:Tooltip.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j)), TextKt.getLocalTextStyle().provides(TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), PlainTooltipTokens.INSTANCE.getSupportingTextFont()))}, function2, startRestartGroup, (i2 & 112) | 8);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$PlainTooltipImpl$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i3) {
                TooltipKt.m1674PlainTooltipImplIv8Zu3U(j, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void RichTooltipImpl(final RichTooltipColors richTooltipColors, final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, Composer composer, final int i) {
        int i2;
        int i3;
        Composer startRestartGroup = composer.startRestartGroup(-878950288);
        ComposerKt.sourceInformation(startRestartGroup, "C(RichTooltipImpl)P(1,2,3)303@12033L10,305@12142L10,307@12246L10,308@12309L1298:Tooltip.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(richTooltipColors) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 2048 : 1024;
        }
        if ((i2 & 5851) != 1170 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-878950288, i2, -1, "androidx.compose.material3.RichTooltipImpl (Tooltip.kt:296)");
            }
            TextStyle fromToken = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), RichTooltipTokens.INSTANCE.getActionLabelTextFont());
            TextStyle fromToken2 = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), RichTooltipTokens.INSTANCE.getSubheadFont());
            TextStyle fromToken3 = TypographyKt.fromToken(MaterialTheme.INSTANCE.getTypography(startRestartGroup, 6), RichTooltipTokens.INSTANCE.getSupportingTextFont());
            Modifier m492paddingVpY3zN4$default = PaddingKt.m492paddingVpY3zN4$default(Modifier.INSTANCE, RichTooltipHorizontalPadding, 0.0f, 2, null);
            startRestartGroup.startReplaceableGroup(-483455358);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
            MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m492paddingVpY3zN4$default);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 276693704, "C79@4027L9:Column.kt#2w3rfo");
            ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 51873561, "C322@12806L317:Tooltip.kt#uh7d8r");
            startRestartGroup.startReplaceableGroup(51873568);
            ComposerKt.sourceInformation(startRestartGroup, "*312@12437L350");
            if (function22 == null) {
                i3 = i2;
            } else {
                Modifier m376paddingFromBaselineVpY3zN4$default = AlignmentLineKt.m376paddingFromBaselineVpY3zN4$default(Modifier.INSTANCE, HeightToSubheadFirstLine, 0.0f, 2, null);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume4 = startRestartGroup.consume(localDensity2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density2 = (Density) consume4;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume5 = startRestartGroup.consume(localLayoutDirection2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection2 = (LayoutDirection) consume5;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume6 = startRestartGroup.consume(localViewConfiguration2);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume6;
                Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m376paddingFromBaselineVpY3zN4$default);
                i3 = i2;
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor2);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl2 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1242326159, "C315@12562L211:Tooltip.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(richTooltipColors.getTitleContentColor())), TextKt.getLocalTextStyle().provides(fromToken2)}, function22, startRestartGroup, 8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                Unit unit = Unit.INSTANCE;
                Unit unit2 = Unit.INSTANCE;
            }
            startRestartGroup.endReplaceableGroup();
            Modifier textVerticalPadding = textVerticalPadding(Modifier.INSTANCE, function22 != null, function23 != null);
            startRestartGroup.startReplaceableGroup(733328855);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
            MeasurePolicy rememberBoxMeasurePolicy2 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume7 = startRestartGroup.consume(localDensity3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density3 = (Density) consume7;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection3 = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume8 = startRestartGroup.consume(localLayoutDirection3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection3 = (LayoutDirection) consume8;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration3 = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
            Object consume9 = startRestartGroup.consume(localViewConfiguration3);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration3 = (ViewConfiguration) consume9;
            Function0<ComposeUiNode> constructor3 = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(textVerticalPadding);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor3);
            } else {
                startRestartGroup.useNode();
            }
            startRestartGroup.disableReusing();
            Composer m2273constructorimpl3 = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl3, rememberBoxMeasurePolicy2, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl3, density3, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl3, layoutDirection3, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl3, viewConfiguration3, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf3.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
            BoxScopeInstance boxScopeInstance2 = BoxScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 471369652, "C325@12918L195:Tooltip.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(richTooltipColors.getContentColor())), TextKt.getLocalTextStyle().provides(fromToken3)}, function2, startRestartGroup, (i3 & 112) | 8);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(75391440);
            ComposerKt.sourceInformation(startRestartGroup, "*332@13158L433");
            if (function23 != null) {
                Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(SizeKt.m528requiredHeightInVpY3zN4$default(Modifier.INSTANCE, ActionLabelMinHeight, 0.0f, 2, null), 0.0f, 0.0f, 0.0f, ActionLabelBottomPadding, 7, null);
                startRestartGroup.startReplaceableGroup(733328855);
                ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                MeasurePolicy rememberBoxMeasurePolicy3 = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(-1323940314);
                ComposerKt.sourceInformation(startRestartGroup, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                ProvidableCompositionLocal<Density> localDensity4 = CompositionLocalsKt.getLocalDensity();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume10 = startRestartGroup.consume(localDensity4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                Density density4 = (Density) consume10;
                ProvidableCompositionLocal<LayoutDirection> localLayoutDirection4 = CompositionLocalsKt.getLocalLayoutDirection();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume11 = startRestartGroup.consume(localLayoutDirection4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                LayoutDirection layoutDirection4 = (LayoutDirection) consume11;
                ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration4 = CompositionLocalsKt.getLocalViewConfiguration();
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "C:CompositionLocal.kt#9igjgp");
                Object consume12 = startRestartGroup.consume(localViewConfiguration4);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ViewConfiguration viewConfiguration4 = (ViewConfiguration) consume12;
                Function0<ComposeUiNode> constructor4 = ComposeUiNode.INSTANCE.getConstructor();
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
                if (!(startRestartGroup.getApplier() instanceof Applier)) {
                    ComposablesKt.invalidApplier();
                }
                startRestartGroup.startReusableNode();
                if (startRestartGroup.getInserting()) {
                    startRestartGroup.createNode(constructor4);
                } else {
                    startRestartGroup.useNode();
                }
                startRestartGroup.disableReusing();
                Composer m2273constructorimpl4 = Updater.m2273constructorimpl(startRestartGroup);
                Updater.m2280setimpl(m2273constructorimpl4, rememberBoxMeasurePolicy3, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
                Updater.m2280setimpl(m2273constructorimpl4, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                startRestartGroup.enableReusing();
                materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
                startRestartGroup.startReplaceableGroup(2058660585);
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                BoxScopeInstance boxScopeInstance3 = BoxScopeInstance.INSTANCE;
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1242325360, "C337@13361L216:Tooltip.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(richTooltipColors.getActionContentColor())), TextKt.getLocalTextStyle().provides(fromToken)}, function23, startRestartGroup, 8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
                Unit unit3 = Unit.INSTANCE;
                Unit unit4 = Unit.INSTANCE;
            }
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            startRestartGroup.skipToGroupEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.TooltipKt$RichTooltipImpl$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(Composer composer2, Integer num) {
                invoke(composer2, num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(Composer composer2, int i4) {
                TooltipKt.RichTooltipImpl(RichTooltipColors.this, function2, function22, function23, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    private static final Modifier textVerticalPadding(Modifier modifier, boolean z, boolean z2) {
        if (!z && !z2) {
            return PaddingKt.m492paddingVpY3zN4$default(modifier, 0.0f, PlainTooltipVerticalPadding, 1, null);
        }
        return PaddingKt.m494paddingqDBjuR0$default(AlignmentLineKt.m376paddingFromBaselineVpY3zN4$default(modifier, HeightFromSubheadToTextFirstLine, 0.0f, 2, null), 0.0f, 0.0f, 0.0f, TextBottomPadding, 7, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier animateTooltip(Modifier modifier, final Transition<Boolean> transition) {
        return ComposedModifierKt.composed(modifier, InspectableValueKt.isDebugInspectorInfoEnabled() ? new Function1<InspectorInfo, Unit>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$$inlined$debugInspectorInfo$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(InspectorInfo inspectorInfo) {
                invoke2(inspectorInfo);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(InspectorInfo inspectorInfo) {
                Intrinsics.checkNotNullParameter(inspectorInfo, "$this$null");
                inspectorInfo.setName("animateTooltip");
                inspectorInfo.getProperties().set("transition", Transition.this);
            }
        } : InspectableValueKt.getNoInspectorInfo(), new Function3<Modifier, Composer, Integer, Modifier>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Modifier invoke(Modifier modifier2, Composer composer, Integer num) {
                return invoke(modifier2, composer, num.intValue());
            }

            public final Modifier invoke(Modifier composed, Composer composer, int i) {
                Intrinsics.checkNotNullParameter(composed, "$this$composed");
                composer.startReplaceableGroup(-1498516085);
                ComposerKt.sourceInformation(composer, "C700@25010L583,719@25623L561:Tooltip.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1498516085, i, -1, "androidx.compose.material3.animateTooltip.<anonymous> (Tooltip.kt:699)");
                }
                Transition<Boolean> transition2 = transition;
                TooltipKt$animateTooltip$2$scale$2 tooltipKt$animateTooltip$2$scale$2 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2$scale$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<Boolean> segment, Composer composer2, Integer num) {
                        return invoke(segment, composer2, num.intValue());
                    }

                    public final FiniteAnimationSpec<Float> invoke(Transition.Segment<Boolean> animateFloat, Composer composer2, int i2) {
                        TweenSpec tween$default;
                        Intrinsics.checkNotNullParameter(animateFloat, "$this$animateFloat");
                        composer2.startReplaceableGroup(386845748);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(386845748, i2, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:701)");
                        }
                        if (animateFloat.isTransitioningTo(false, true)) {
                            tween$default = AnimationSpecKt.tween$default(150, 0, EasingKt.getLinearOutSlowInEasing(), 2, null);
                        } else {
                            tween$default = AnimationSpecKt.tween$default(75, 0, EasingKt.getLinearOutSlowInEasing(), 2, null);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer2.endReplaceableGroup();
                        return tween$default;
                    }
                };
                composer.startReplaceableGroup(-1338768149);
                ComposerKt.sourceInformation(composer, "CC(animateFloat)P(2)938@37489L78:Transition.kt#pdpnli");
                TwoWayConverter<Float, AnimationVector1D> vectorConverter = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                composer.startReplaceableGroup(-142660079);
                ComposerKt.sourceInformation(composer, "CC(animateValue)P(3,2)856@34079L32,857@34134L31,858@34190L23,860@34226L89:Transition.kt#pdpnli");
                boolean booleanValue = transition2.getCurrentState().booleanValue();
                composer.startReplaceableGroup(-1553362193);
                ComposerKt.sourceInformation(composer, "C:Tooltip.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1553362193, 0, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:717)");
                }
                float f = booleanValue ? 1.0f : 0.8f;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                Float valueOf = Float.valueOf(f);
                boolean booleanValue2 = transition2.getTargetState().booleanValue();
                composer.startReplaceableGroup(-1553362193);
                ComposerKt.sourceInformation(composer, "C:Tooltip.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(-1553362193, 0, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:717)");
                }
                float f2 = booleanValue2 ? 1.0f : 0.8f;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                State createTransitionAnimation = TransitionKt.createTransitionAnimation(transition2, valueOf, Float.valueOf(f2), tooltipKt$animateTooltip$2$scale$2.invoke((TooltipKt$animateTooltip$2$scale$2) transition2.getSegment(), (Transition.Segment<Boolean>) composer, (Composer) 0), vectorConverter, "tooltip transition: scaling", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                composer.endReplaceableGroup();
                composer.endReplaceableGroup();
                Transition<Boolean> transition3 = transition;
                TooltipKt$animateTooltip$2$alpha$2 tooltipKt$animateTooltip$2$alpha$2 = new Function3<Transition.Segment<Boolean>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.material3.TooltipKt$animateTooltip$2$alpha$2
                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ FiniteAnimationSpec<Float> invoke(Transition.Segment<Boolean> segment, Composer composer2, Integer num) {
                        return invoke(segment, composer2, num.intValue());
                    }

                    public final FiniteAnimationSpec<Float> invoke(Transition.Segment<Boolean> animateFloat, Composer composer2, int i2) {
                        TweenSpec tween$default;
                        Intrinsics.checkNotNullParameter(animateFloat, "$this$animateFloat");
                        composer2.startReplaceableGroup(-281714272);
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-281714272, i2, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:720)");
                        }
                        if (animateFloat.isTransitioningTo(false, true)) {
                            tween$default = AnimationSpecKt.tween$default(150, 0, EasingKt.getLinearEasing(), 2, null);
                        } else {
                            tween$default = AnimationSpecKt.tween$default(75, 0, EasingKt.getLinearEasing(), 2, null);
                        }
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                        }
                        composer2.endReplaceableGroup();
                        return tween$default;
                    }
                };
                composer.startReplaceableGroup(-1338768149);
                ComposerKt.sourceInformation(composer, "CC(animateFloat)P(2)938@37489L78:Transition.kt#pdpnli");
                TwoWayConverter<Float, AnimationVector1D> vectorConverter2 = VectorConvertersKt.getVectorConverter(FloatCompanionObject.INSTANCE);
                composer.startReplaceableGroup(-142660079);
                ComposerKt.sourceInformation(composer, "CC(animateValue)P(3,2)856@34079L32,857@34134L31,858@34190L23,860@34226L89:Transition.kt#pdpnli");
                boolean booleanValue3 = transition3.getCurrentState().booleanValue();
                composer.startReplaceableGroup(2073045083);
                ComposerKt.sourceInformation(composer, "C:Tooltip.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2073045083, 0, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:736)");
                }
                float f3 = booleanValue3 ? 1.0f : 0.0f;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                Float valueOf2 = Float.valueOf(f3);
                boolean booleanValue4 = transition3.getTargetState().booleanValue();
                composer.startReplaceableGroup(2073045083);
                ComposerKt.sourceInformation(composer, "C:Tooltip.kt#uh7d8r");
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventStart(2073045083, 0, -1, "androidx.compose.material3.animateTooltip.<anonymous>.<anonymous> (Tooltip.kt:736)");
                }
                float f4 = booleanValue4 ? 1.0f : 0.0f;
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                State createTransitionAnimation2 = TransitionKt.createTransitionAnimation(transition3, valueOf2, Float.valueOf(f4), tooltipKt$animateTooltip$2$alpha$2.invoke((TooltipKt$animateTooltip$2$alpha$2) transition3.getSegment(), (Transition.Segment<Boolean>) composer, (Composer) 0), vectorConverter2, "tooltip transition: alpha", composer, ProfileVerifier.CompilationStatus.RESULT_CODE_ERROR_CANT_WRITE_PROFILE_VERIFICATION_RESULT_CACHE_FILE);
                composer.endReplaceableGroup();
                composer.endReplaceableGroup();
                Modifier m2796graphicsLayerAp8cVGQ$default = GraphicsLayerModifierKt.m2796graphicsLayerAp8cVGQ$default(composed, invoke$lambda$1(createTransitionAnimation), invoke$lambda$1(createTransitionAnimation), invoke$lambda$3(createTransitionAnimation2), 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0L, null, false, null, 0L, 0L, 0, 131064, null);
                if (ComposerKt.isTraceInProgress()) {
                    ComposerKt.traceEventEnd();
                }
                composer.endReplaceableGroup();
                return m2796graphicsLayerAp8cVGQ$default;
            }

            private static final float invoke$lambda$1(State<Float> state) {
                return state.getValue().floatValue();
            }

            private static final float invoke$lambda$3(State<Float> state) {
                return state.getValue().floatValue();
            }
        });
    }

    static {
        float f = 4;
        TooltipAnchorPadding = Dp.m4883constructorimpl(f);
        float f2 = 24;
        TooltipMinHeight = Dp.m4883constructorimpl(f2);
        float m4883constructorimpl = Dp.m4883constructorimpl(f);
        PlainTooltipVerticalPadding = m4883constructorimpl;
        float f3 = 8;
        float m4883constructorimpl2 = Dp.m4883constructorimpl(f3);
        PlainTooltipHorizontalPadding = m4883constructorimpl2;
        PlainTooltipContentPadding = PaddingKt.m484PaddingValuesYgX7TsA(m4883constructorimpl2, m4883constructorimpl);
        RichTooltipMaxWidth = Dp.m4883constructorimpl(320);
        float f4 = 16;
        RichTooltipHorizontalPadding = Dp.m4883constructorimpl(f4);
        HeightToSubheadFirstLine = Dp.m4883constructorimpl(28);
        HeightFromSubheadToTextFirstLine = Dp.m4883constructorimpl(f2);
        TextBottomPadding = Dp.m4883constructorimpl(f4);
        ActionLabelMinHeight = Dp.m4883constructorimpl(36);
        ActionLabelBottomPadding = Dp.m4883constructorimpl(f3);
    }
}
