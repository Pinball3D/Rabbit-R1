package androidx.compose.material3;

import androidx.compose.foundation.layout.AlignmentLineKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.material3.tokens.SnackbarTokens;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: Snackbar.kt */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\u001ah\u0010\n\u001a\u00020\u000b2\u0011\u0010\f\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000e2\u0011\u0010\u000f\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000e2\u0013\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u0016\u0010\u0017\u001aj\u0010\u0018\u001a\u00020\u000b2\u0011\u0010\f\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000e2\u0013\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u000e2\u0013\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u000e2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u0014H\u0003ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b\u001b\u0010\u0017\u001am\u0010\u001c\u001a\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u001e2\b\b\u0002\u0010\u001f\u001a\u00020 2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020\u00142\b\b\u0002\u0010&\u001a\u00020\u00142\b\b\u0002\u0010'\u001a\u00020\u00142\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u0014H\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b(\u0010)\u001a\u009c\u0001\u0010\u001c\u001a\u00020\u000b2\b\b\u0002\u0010\u001f\u001a\u00020 2\u0015\b\u0002\u0010\u000f\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u000e2\u0015\b\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u000b\u0018\u00010\r¢\u0006\u0002\b\u000e2\b\b\u0002\u0010!\u001a\u00020\"2\b\b\u0002\u0010#\u001a\u00020$2\b\b\u0002\u0010%\u001a\u00020\u00142\b\b\u0002\u0010&\u001a\u00020\u00142\b\b\u0002\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\u00142\u0011\u0010*\u001a\r\u0012\u0004\u0012\u00020\u000b0\r¢\u0006\u0002\b\u000eH\u0007ø\u0001\u0001ø\u0001\u0000¢\u0006\u0004\b+\u0010,\"\u0013\u0010\u0000\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0003\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0004\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0005\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0006\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\u0007\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\b\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\"\u0013\u0010\t\u001a\u00020\u0001X\u0082\u0004ø\u0001\u0000¢\u0006\u0004\n\u0002\u0010\u0002\u0082\u0002\u000b\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001¨\u0006-"}, d2 = {"ContainerMaxWidth", "Landroidx/compose/ui/unit/Dp;", "F", "HeightToFirstLine", "HorizontalSpacing", "HorizontalSpacingButtonSide", "LongButtonVerticalOffset", "SeparateButtonExtraY", "SnackbarVerticalPadding", "TextEndExtraSpacing", "NewLineButtonSnackbar", "", "text", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "action", "dismissAction", "actionTextStyle", "Landroidx/compose/ui/text/TextStyle;", "actionContentColor", "Landroidx/compose/ui/graphics/Color;", "dismissActionContentColor", "NewLineButtonSnackbar-kKq0p4A", "(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/TextStyle;JJLandroidx/compose/runtime/Composer;I)V", "OneRowSnackbar", "actionTextColor", "dismissActionColor", "OneRowSnackbar-kKq0p4A", "Snackbar", "snackbarData", "Landroidx/compose/material3/SnackbarData;", "modifier", "Landroidx/compose/ui/Modifier;", "actionOnNewLine", "", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "contentColor", "actionColor", "Snackbar-sDKtq54", "(Landroidx/compose/material3/SnackbarData;Landroidx/compose/ui/Modifier;ZLandroidx/compose/ui/graphics/Shape;JJJJJLandroidx/compose/runtime/Composer;II)V", "content", "Snackbar-eQBnUkQ", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZLandroidx/compose/ui/graphics/Shape;JJJJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SnackbarKt {
    private static final float HorizontalSpacingButtonSide;
    private static final float TextEndExtraSpacing;
    private static final float ContainerMaxWidth = Dp.m4883constructorimpl(600);
    private static final float HeightToFirstLine = Dp.m4883constructorimpl(30);
    private static final float HorizontalSpacing = Dp.m4883constructorimpl(16);
    private static final float SeparateButtonExtraY = Dp.m4883constructorimpl(2);
    private static final float SnackbarVerticalPadding = Dp.m4883constructorimpl(6);
    private static final float LongButtonVerticalOffset = Dp.m4883constructorimpl(12);

    /* JADX WARN: Removed duplicated region for block: B:102:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01a7  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0197  */
    /* renamed from: Snackbar-eQBnUkQ, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1399SnackbareQBnUkQ(androidx.compose.ui.Modifier r24, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r25, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r26, boolean r27, androidx.compose.ui.graphics.Shape r28, long r29, long r31, long r33, long r35, final kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r37, androidx.compose.runtime.Composer r38, final int r39, final int r40) {
        /*
            Method dump skipped, instructions count: 658
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarKt.m1399SnackbareQBnUkQ(androidx.compose.ui.Modifier, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function2, boolean, androidx.compose.ui.graphics.Shape, long, long, long, long, kotlin.jvm.functions.Function2, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0238  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0185  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x018d  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01aa  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x01df  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00f3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02a3  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0200  */
    /* renamed from: Snackbar-sDKtq54, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1400SnackbarsDKtq54(final androidx.compose.material3.SnackbarData r38, androidx.compose.ui.Modifier r39, boolean r40, androidx.compose.ui.graphics.Shape r41, long r42, long r44, long r46, long r48, long r50, androidx.compose.runtime.Composer r52, final int r53, final int r54) {
        /*
            Method dump skipped, instructions count: 708
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.SnackbarKt.m1400SnackbarsDKtq54(androidx.compose.material3.SnackbarData, androidx.compose.ui.Modifier, boolean, androidx.compose.ui.graphics.Shape, long, long, long, long, long, androidx.compose.runtime.Composer, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: NewLineButtonSnackbar-kKq0p4A, reason: not valid java name */
    public static final void m1397NewLineButtonSnackbarkKq0p4A(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final TextStyle textStyle, final long j, final long j2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-1332496681);
        ComposerKt.sourceInformation(startRestartGroup, "C(NewLineButtonSnackbar)P(5!1,3,2,1:c#ui.graphics.Color,4:c#ui.graphics.Color)259@11505L1173:Snackbar.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(textStyle) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(j) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(j2) ? 131072 : 65536;
        }
        if ((374491 & i2) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1332496681, i2, -1, "androidx.compose.material3.NewLineButtonSnackbar (Snackbar.kt:251)");
            }
            Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(SizeKt.fillMaxWidth$default(SizeKt.m544widthInVpY3zN4$default(Modifier.INSTANCE, 0.0f, ContainerMaxWidth, 1, null), 0.0f, 1, null), HorizontalSpacing, 0.0f, 0.0f, SeparateButtonExtraY, 6, null);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -916592099, "C269@11812L171,274@11993L679:Snackbar.kt#uh7d8r");
            Modifier m375paddingFromBaselineVpY3zN4 = AlignmentLineKt.m375paddingFromBaselineVpY3zN4(Modifier.INSTANCE, HeightToFirstLine, LongButtonVerticalOffset);
            float f = HorizontalSpacingButtonSide;
            Modifier m494paddingqDBjuR0$default2 = PaddingKt.m494paddingqDBjuR0$default(m375paddingFromBaselineVpY3zN4, 0.0f, 0.0f, f, 0.0f, 11, null);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m494paddingqDBjuR0$default2);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 302366561, "C272@11975L6:Snackbar.kt#uh7d8r");
            function2.invoke(startRestartGroup, Integer.valueOf(i2 & 14));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            Modifier m494paddingqDBjuR0$default3 = PaddingKt.m494paddingqDBjuR0$default(columnScopeInstance.align(Modifier.INSTANCE, Alignment.INSTANCE.getEnd()), 0.0f, 0.0f, function23 == null ? f : Dp.m4883constructorimpl(0), 0.0f, 11, null);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(m494paddingqDBjuR0$default3);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 302366747, "C278@12161L501:Snackbar.kt#uh7d8r");
            startRestartGroup.startReplaceableGroup(693286680);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Row)P(2,1,3)78@3913L58,79@3976L130:Row.kt#2w3rfo");
            Modifier.Companion companion = Modifier.INSTANCE;
            MeasurePolicy rowMeasurePolicy = RowKt.rowMeasurePolicy(Arrangement.INSTANCE.getStart(), Alignment.INSTANCE.getTop(), startRestartGroup, 0);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(companion);
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
            Updater.m2280setimpl(m2273constructorimpl4, rowMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl4, density4, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl4, layoutDirection4, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl4, viewConfiguration4, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            startRestartGroup.enableReusing();
            materializerOf4.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -326682283, "C80@4021L9:Row.kt#2w3rfo");
            RowScopeInstance rowScopeInstance = RowScopeInstance.INSTANCE;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 435596114, "C279@12183L208:Snackbar.kt#uh7d8r");
            CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j)), TextKt.getLocalTextStyle().provides(textStyle)}, function22, startRestartGroup, (i2 & 112) | 8);
            startRestartGroup.startReplaceableGroup(302366994);
            ComposerKt.sourceInformation(startRestartGroup, "285@12457L173");
            if (function23 != null) {
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j2))}, function23, startRestartGroup, ((i2 >> 3) & 112) | 8);
            }
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$NewLineButtonSnackbar$2
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
                SnackbarKt.m1397NewLineButtonSnackbarkKq0p4A(function2, function22, function23, textStyle, j, j2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: OneRowSnackbar-kKq0p4A, reason: not valid java name */
    public static final void m1398OneRowSnackbarkKq0p4A(final Function2<? super Composer, ? super Integer, Unit> function2, final Function2<? super Composer, ? super Integer, Unit> function22, final Function2<? super Composer, ? super Integer, Unit> function23, final TextStyle textStyle, final long j, final long j2, Composer composer, final int i) {
        int i2;
        Composer startRestartGroup = composer.startRestartGroup(-903235475);
        ComposerKt.sourceInformation(startRestartGroup, "C(OneRowSnackbar)P(5!1,3,2,1:c#ui.graphics.Color,4:c#ui.graphics.Color)307@13036L4435:Snackbar.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(function2) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function23) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changed(textStyle) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changed(j) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(j2) ? 131072 : 65536;
        }
        if ((374491 & i2) != 74898 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-903235475, i2, -1, "androidx.compose.material3.OneRowSnackbar (Snackbar.kt:296)");
            }
            Modifier m494paddingqDBjuR0$default = PaddingKt.m494paddingqDBjuR0$default(Modifier.INSTANCE, HorizontalSpacing, 0.0f, function23 == null ? HorizontalSpacingButtonSide : Dp.m4883constructorimpl(0), 0.0f, 10, null);
            final String str = "action";
            final String str2 = "dismissAction";
            final String str3 = "text";
            MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.material3.SnackbarKt$OneRowSnackbar$2
                @Override // androidx.compose.ui.layout.MeasurePolicy
                /* renamed from: measure-3p2s80s */
                public final MeasureResult mo21measure3p2s80s(MeasureScope Layout, List<? extends Measurable> measurables, long j3) {
                    float f;
                    Object obj;
                    Object obj2;
                    int i3;
                    float f2;
                    int max;
                    final int i4;
                    final int height;
                    int i5;
                    float f3;
                    Intrinsics.checkNotNullParameter(Layout, "$this$Layout");
                    Intrinsics.checkNotNullParameter(measurables, "measurables");
                    int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j3);
                    f = SnackbarKt.ContainerMaxWidth;
                    int min = Math.min(m4839getMaxWidthimpl, Layout.mo329roundToPx0680j_4(f));
                    List<? extends Measurable> list = measurables;
                    String str4 = str;
                    Iterator<T> it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            obj = null;
                            break;
                        }
                        obj = it.next();
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj), str4)) {
                            break;
                        }
                    }
                    Measurable measurable = (Measurable) obj;
                    Placeable mo3876measureBRTryo0 = measurable != null ? measurable.mo3876measureBRTryo0(j3) : null;
                    String str5 = str2;
                    Iterator<T> it2 = list.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            obj2 = null;
                            break;
                        }
                        obj2 = it2.next();
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId((Measurable) obj2), str5)) {
                            break;
                        }
                    }
                    Measurable measurable2 = (Measurable) obj2;
                    final Placeable mo3876measureBRTryo02 = measurable2 != null ? measurable2.mo3876measureBRTryo0(j3) : null;
                    int width = mo3876measureBRTryo0 != null ? mo3876measureBRTryo0.getWidth() : 0;
                    int height2 = mo3876measureBRTryo0 != null ? mo3876measureBRTryo0.getHeight() : 0;
                    int width2 = mo3876measureBRTryo02 != null ? mo3876measureBRTryo02.getWidth() : 0;
                    int height3 = mo3876measureBRTryo02 != null ? mo3876measureBRTryo02.getHeight() : 0;
                    if (width2 == 0) {
                        f3 = SnackbarKt.TextEndExtraSpacing;
                        i3 = Layout.mo329roundToPx0680j_4(f3);
                    } else {
                        i3 = 0;
                    }
                    int coerceAtLeast = RangesKt.coerceAtLeast(((min - width) - width2) - i3, Constraints.m4841getMinWidthimpl(j3));
                    String str6 = str3;
                    for (Measurable measurable3 : list) {
                        if (Intrinsics.areEqual(LayoutIdKt.getLayoutId(measurable3), str6)) {
                            int i6 = height3;
                            final Placeable mo3876measureBRTryo03 = measurable3.mo3876measureBRTryo0(Constraints.m4830copyZbe2FdA$default(j3, 0, coerceAtLeast, 0, 0, 9, null));
                            int i7 = mo3876measureBRTryo03.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline());
                            if (i7 == Integer.MIN_VALUE) {
                                throw new IllegalArgumentException("No baselines for text".toString());
                            }
                            int i8 = mo3876measureBRTryo03.get(androidx.compose.ui.layout.AlignmentLineKt.getLastBaseline());
                            if (i8 == Integer.MIN_VALUE) {
                                throw new IllegalArgumentException("No baselines for text".toString());
                            }
                            boolean z = i7 == i8;
                            final int i9 = min - width2;
                            final int i10 = i9 - width;
                            if (z) {
                                int max2 = Math.max(Layout.mo329roundToPx0680j_4(SnackbarTokens.INSTANCE.m2135getSingleLineContainerHeightD9Ej5fM()), Math.max(height2, i6));
                                int height4 = (max2 - mo3876measureBRTryo03.getHeight()) / 2;
                                height = (mo3876measureBRTryo0 == null || (i5 = mo3876measureBRTryo0.get(androidx.compose.ui.layout.AlignmentLineKt.getFirstBaseline())) == Integer.MIN_VALUE) ? 0 : (i7 + height4) - i5;
                                max = max2;
                                i4 = height4;
                            } else {
                                f2 = SnackbarKt.HeightToFirstLine;
                                int i11 = Layout.mo329roundToPx0680j_4(f2) - i7;
                                max = Math.max(Layout.mo329roundToPx0680j_4(SnackbarTokens.INSTANCE.m2136getTwoLinesContainerHeightD9Ej5fM()), mo3876measureBRTryo03.getHeight() + i11);
                                i4 = i11;
                                height = mo3876measureBRTryo0 != null ? (max - mo3876measureBRTryo0.getHeight()) / 2 : 0;
                            }
                            final int height5 = mo3876measureBRTryo02 != null ? (max - mo3876measureBRTryo02.getHeight()) / 2 : 0;
                            final Placeable placeable = mo3876measureBRTryo0;
                            return MeasureScope.layout$default(Layout, min, max, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.SnackbarKt$OneRowSnackbar$2$measure$4
                                /* JADX INFO: Access modifiers changed from: package-private */
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(Placeable.PlacementScope placementScope) {
                                    invoke2(placementScope);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(Placeable.PlacementScope layout) {
                                    Intrinsics.checkNotNullParameter(layout, "$this$layout");
                                    Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, i4, 0.0f, 4, null);
                                    Placeable placeable2 = mo3876measureBRTryo02;
                                    if (placeable2 != null) {
                                        Placeable.PlacementScope.placeRelative$default(layout, placeable2, i9, height5, 0.0f, 4, null);
                                    }
                                    Placeable placeable3 = placeable;
                                    if (placeable3 != null) {
                                        Placeable.PlacementScope.placeRelative$default(layout, placeable3, i10, height, 0.0f, 4, null);
                                    }
                                }
                            }, 4, null);
                        }
                    }
                    throw new NoSuchElementException("Collection contains no element matching the predicate.");
                }
            };
            startRestartGroup.startReplaceableGroup(-1323940314);
            ComposerKt.sourceInformation(startRestartGroup, "CC(Layout)P(!1,2)73@2855L7,74@2910L7,75@2969L7,76@2981L460:Layout.kt#80mrfh");
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            Density density = (Density) consume;
            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume2 = startRestartGroup.consume(localLayoutDirection);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            LayoutDirection layoutDirection = (LayoutDirection) consume2;
            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume3 = startRestartGroup.consume(localViewConfiguration);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ViewConfiguration viewConfiguration = (ViewConfiguration) consume3;
            Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(m494paddingqDBjuR0$default);
            if (!(startRestartGroup.getApplier() instanceof Applier)) {
                ComposablesKt.invalidApplier();
            }
            startRestartGroup.startReusableNode();
            if (startRestartGroup.getInserting()) {
                startRestartGroup.createNode(constructor);
            } else {
                startRestartGroup.useNode();
            }
            Composer m2273constructorimpl = Updater.m2273constructorimpl(startRestartGroup);
            Updater.m2280setimpl(m2273constructorimpl, measurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, 0);
            startRestartGroup.startReplaceableGroup(2058660585);
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, -167734449, "C309@13066L86:Snackbar.kt#uh7d8r");
            Modifier m492paddingVpY3zN4$default = PaddingKt.m492paddingVpY3zN4$default(LayoutIdKt.layoutId(Modifier.INSTANCE, "text"), 0.0f, SnackbarVerticalPadding, 1, null);
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
            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(m492paddingVpY3zN4$default);
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
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 448288318, "C309@13144L6:Snackbar.kt#uh7d8r");
            function2.invoke(startRestartGroup, Integer.valueOf(i2 & 14));
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(-167734350);
            ComposerKt.sourceInformation(startRestartGroup, "311@13203L295");
            if (function22 != null) {
                Modifier layoutId = LayoutIdKt.layoutId(Modifier.INSTANCE, "action");
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
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf3 = LayoutKt.materializerOf(layoutId);
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 448288433, "C312@13259L221:Snackbar.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j)), TextKt.getLocalTextStyle().provides(textStyle)}, function22, startRestartGroup, (i2 & 112) | 8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.startReplaceableGroup(44738809);
            ComposerKt.sourceInformation(startRestartGroup, "320@13570L247");
            if (function23 != null) {
                Modifier layoutId2 = LayoutIdKt.layoutId(Modifier.INSTANCE, "dismissAction");
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
                Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf4 = LayoutKt.materializerOf(layoutId2);
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
                ComposerKt.sourceInformationMarkerStart(startRestartGroup, 448288807, "C321@13633L166:Snackbar.kt#uh7d8r");
                CompositionLocalKt.CompositionLocalProvider((ProvidedValue<?>[]) new ProvidedValue[]{ContentColorKt.getLocalContentColor().provides(Color.m2629boximpl(j2))}, function23, startRestartGroup, ((i2 >> 3) & 112) | 8);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endNode();
                startRestartGroup.endReplaceableGroup();
                startRestartGroup.endReplaceableGroup();
            }
            startRestartGroup.endReplaceableGroup();
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            startRestartGroup.endReplaceableGroup();
            startRestartGroup.endNode();
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.SnackbarKt$OneRowSnackbar$3
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
                SnackbarKt.m1398OneRowSnackbarkKq0p4A(function2, function22, function23, textStyle, j, j2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    static {
        float f = 8;
        HorizontalSpacingButtonSide = Dp.m4883constructorimpl(f);
        TextEndExtraSpacing = Dp.m4883constructorimpl(f);
    }
}
