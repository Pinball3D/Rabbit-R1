package androidx.compose.material3;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnScope;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionScopedCoroutineScopeCanceller;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambda;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.input.nestedscroll.NestedScrollModifierKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import io.sentry.protocol.SentryThread;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: BottomSheetScaffold.kt */
@Metadata(d1 = {"\u0000\u0084\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0017\u001a\u0083\u0002\u0010\u0000\u001a\u00020\u00012\u001c\u0010\u0002\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u00102\b\b\u0002\u0010\u0011\u001a\u00020\u00102\b\b\u0002\u0010\u0012\u001a\u00020\f2\b\b\u0002\u0010\u0013\u001a\u00020\f2\u0015\b\u0002\u0010\u0014\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015¢\u0006\u0002\b\u00052\b\b\u0002\u0010\u0016\u001a\u00020\u00172\u0015\b\u0002\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015¢\u0006\u0002\b\u00052\u0019\b\u0002\u0010\u0019\u001a\u0013\u0012\u0004\u0012\u00020\u001a\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u00052\b\b\u0002\u0010\u001b\u001a\u00020\u00102\b\b\u0002\u0010\u001c\u001a\u00020\u00102\u0017\u0010\u001d\u001a\u0013\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001f\u0010 \u001aq\u0010!\u001a\b\u0012\u0004\u0012\u00020#0\"2\u0006\u0010$\u001a\u00020%26\u0010&\u001a2\u0012\u0013\u0012\u00110#¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0013\u0012\u00110+¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(,\u0012\u0004\u0012\u00020\u00010'2!\u0010-\u001a\u001d\u0012\u0013\u0012\u00110#¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(*\u0012\u0004\u0012\u00020\u00010\u0003H\u0003\u001aÃ\u0001\u0010.\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\b2\u0013\u0010\u0018\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015¢\u0006\u0002\b\u00052&\u0010/\u001a\"\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(0\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u00052&\u00101\u001a\"\u0012\u0013\u0012\u001102¢\u0006\f\b(\u0012\b\b)\u0012\u0004\b\b(3\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u00052\u0011\u0010\u0019\u001a\r\u0012\u0004\u0012\u00020\u00010\u0015¢\u0006\u0002\b\u00052\u0006\u0010\u000b\u001a\u00020\f2\f\u00104\u001a\b\u0012\u0004\u0012\u00020+0\u00152\u0006\u00105\u001a\u00020%2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u0010H\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b6\u00107\u001a\u0090\u0001\u00108\u001a\u00020\u00012\u0006\u0010$\u001a\u00020%2\u0006\u00109\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00103\u001a\u00020+2\u0006\u0010:\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u00102\u0006\u0010;\u001a\u00020\f2\u0006\u0010<\u001a\u00020\f2\u0013\u0010=\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0015¢\u0006\u0002\b\u00052\u001c\u0010\u001d\u001a\u0018\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0005¢\u0006\u0002\b\u0006H\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b>\u0010?\u001a!\u0010@\u001a\u00020\n2\b\b\u0002\u0010A\u001a\u00020%2\b\b\u0002\u0010B\u001a\u00020\u001aH\u0007¢\u0006\u0002\u0010C\u001a7\u0010D\u001a\u00020%2\b\b\u0002\u0010E\u001a\u00020#2\u0014\b\u0002\u0010F\u001a\u000e\u0012\u0004\u0012\u00020#\u0012\u0004\u0012\u00020\u00170\u00032\b\b\u0002\u0010G\u001a\u00020\u0017H\u0007¢\u0006\u0002\u0010H\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u0006I"}, d2 = {"BottomSheetScaffold", "", "sheetContent", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ExtensionFunctionType;", "modifier", "Landroidx/compose/ui/Modifier;", "scaffoldState", "Landroidx/compose/material3/BottomSheetScaffoldState;", "sheetPeekHeight", "Landroidx/compose/ui/unit/Dp;", "sheetShape", "Landroidx/compose/ui/graphics/Shape;", "sheetContainerColor", "Landroidx/compose/ui/graphics/Color;", "sheetContentColor", "sheetTonalElevation", "sheetShadowElevation", "sheetDragHandle", "Lkotlin/Function0;", "sheetSwipeEnabled", "", "topBar", "snackbarHost", "Landroidx/compose/material3/SnackbarHostState;", "containerColor", "contentColor", "content", "Landroidx/compose/foundation/layout/PaddingValues;", "BottomSheetScaffold-6cEcpDs", "(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "BottomSheetScaffoldAnchorChangeHandler", "Landroidx/compose/material3/AnchorChangeHandler;", "Landroidx/compose/material3/SheetValue;", SentryThread.JsonKeys.STATE, "Landroidx/compose/material3/SheetState;", "animateTo", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "target", "", "velocity", "snapTo", "BottomSheetScaffoldLayout", "body", "innerPadding", "bottomSheet", "", "layoutHeight", "sheetOffset", "sheetState", "BottomSheetScaffoldLayout-PxNyym8", "(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;FLkotlin/jvm/functions/Function0;Landroidx/compose/material3/SheetState;JJLandroidx/compose/runtime/Composer;I)V", "StandardBottomSheet", "peekHeight", "shape", "tonalElevation", "shadowElevation", "dragHandle", "StandardBottomSheet-8oydGBM", "(Landroidx/compose/material3/SheetState;FZFLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "rememberBottomSheetScaffoldState", "bottomSheetState", "snackbarHostState", "(Landroidx/compose/material3/SheetState;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/BottomSheetScaffoldState;", "rememberStandardBottomSheetState", "initialValue", "confirmValueChange", "skipHiddenState", "(Landroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class BottomSheetScaffoldKt {
    /* JADX WARN: Code restructure failed: missing block: B:68:0x01b5, code lost:
    
        if (r2.changed(r45) == false) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01d2, code lost:
    
        if (r2.changed(r47) == false) goto L157;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x02b1  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02d8  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0300  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0321  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0327  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0375  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0307  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02fc  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02cd  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02ab  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:211:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0111  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0460  */
    /* JADX WARN: Removed duplicated region for block: B:95:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x023c  */
    /* renamed from: BottomSheetScaffold-6cEcpDs, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1005BottomSheetScaffold6cEcpDs(final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r30, androidx.compose.ui.Modifier r31, androidx.compose.material3.BottomSheetScaffoldState r32, float r33, androidx.compose.ui.graphics.Shape r34, long r35, long r37, float r39, float r40, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r41, boolean r42, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r43, kotlin.jvm.functions.Function3<? super androidx.compose.material3.SnackbarHostState, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r44, long r45, long r47, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.PaddingValues, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r49, androidx.compose.runtime.Composer r50, final int r51, final int r52, final int r53) {
        /*
            Method dump skipped, instructions count: 1167
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.BottomSheetScaffoldKt.m1005BottomSheetScaffold6cEcpDs(kotlin.jvm.functions.Function3, androidx.compose.ui.Modifier, androidx.compose.material3.BottomSheetScaffoldState, float, androidx.compose.ui.graphics.Shape, long, long, float, float, kotlin.jvm.functions.Function2, boolean, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, long, long, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }

    public static final BottomSheetScaffoldState rememberBottomSheetScaffoldState(SheetState sheetState, SnackbarHostState snackbarHostState, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1474606134);
        ComposerKt.sourceInformation(composer, "C(rememberBottomSheetScaffoldState)167@7874L34,168@7953L32,170@8027L196:BottomSheetScaffold.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            sheetState = rememberStandardBottomSheetState(null, null, false, composer, 0, 7);
        }
        if ((i2 & 2) != 0) {
            composer.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(composer, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = composer.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = new SnackbarHostState();
                composer.updateRememberedValue(rememberedValue);
            }
            composer.endReplaceableGroup();
            snackbarHostState = (SnackbarHostState) rememberedValue;
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1474606134, i, -1, "androidx.compose.material3.rememberBottomSheetScaffoldState (BottomSheetScaffold.kt:166)");
        }
        composer.startReplaceableGroup(511388516);
        ComposerKt.sourceInformation(composer, "CC(remember)P(1,2):Composables.kt#9igjgp");
        boolean changed = composer.changed(sheetState) | composer.changed(snackbarHostState);
        Object rememberedValue2 = composer.rememberedValue();
        if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
            rememberedValue2 = new BottomSheetScaffoldState(sheetState, snackbarHostState);
            composer.updateRememberedValue(rememberedValue2);
        }
        composer.endReplaceableGroup();
        BottomSheetScaffoldState bottomSheetScaffoldState = (BottomSheetScaffoldState) rememberedValue2;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return bottomSheetScaffoldState;
    }

    public static final SheetState rememberStandardBottomSheetState(SheetValue sheetValue, Function1<? super SheetValue, Boolean> function1, boolean z, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(678511581);
        ComposerKt.sourceInformation(composer, "C(rememberStandardBottomSheetState)P(1)192@8853L76:BottomSheetScaffold.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            sheetValue = SheetValue.PartiallyExpanded;
        }
        SheetValue sheetValue2 = sheetValue;
        if ((i2 & 2) != 0) {
            function1 = new Function1<SheetValue, Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$rememberStandardBottomSheetState$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }
            };
        }
        Function1<? super SheetValue, Boolean> function12 = function1;
        if ((i2 & 4) != 0) {
            z = true;
        }
        boolean z2 = z;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(678511581, i, -1, "androidx.compose.material3.rememberStandardBottomSheetState (BottomSheetScaffold.kt:188)");
        }
        SheetState rememberSheetState = SheetDefaultsKt.rememberSheetState(false, function12, sheetValue2, z2, composer, (i & 112) | 6 | ((i << 6) & 896) | ((i << 3) & 7168), 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberSheetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: StandardBottomSheet-8oydGBM, reason: not valid java name */
    public static final void m1007StandardBottomSheet8oydGBM(final SheetState sheetState, final float f, final boolean z, final float f2, final Shape shape, final long j, final long j2, final float f3, final float f4, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super ColumnScope, ? super Composer, ? super Integer, Unit> function3, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        Composer startRestartGroup = composer.startRestartGroup(-763942484);
        ComposerKt.sourceInformation(startRestartGroup, "C(StandardBottomSheet)P(9,5:c#ui.unit.Dp,8,4,7,0:c#ui.graphics.Color,2:c#ui.graphics.Color,10:c#ui.unit.Dp,6:c#ui.unit.Dp,3)209@9346L24,*210@9412L7,214@9580L467,235@10256L318,252@10976L530,229@10052L3768:BottomSheetScaffold.kt#uh7d8r");
        if ((i & 14) == 0) {
            i3 = (startRestartGroup.changed(sheetState) ? 4 : 2) | i;
        } else {
            i3 = i;
        }
        if ((i & 112) == 0) {
            i3 |= startRestartGroup.changed(f) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i3 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i3 |= startRestartGroup.changed(f2) ? 2048 : 1024;
        }
        if ((i & 57344) == 0) {
            i3 |= startRestartGroup.changed(shape) ? 16384 : 8192;
        }
        if ((i & 458752) == 0) {
            i3 |= startRestartGroup.changed(j) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i3 |= startRestartGroup.changed(j2) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i3 |= startRestartGroup.changed(f3) ? 8388608 : 4194304;
        }
        if ((i & 234881024) == 0) {
            i3 |= startRestartGroup.changed(f4) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((i & 1879048192) == 0) {
            i3 |= startRestartGroup.changedInstance(function2) ? 536870912 : 268435456;
        }
        if ((i2 & 14) == 0) {
            i4 = i2 | (startRestartGroup.changedInstance(function3) ? 4 : 2);
        } else {
            i4 = i2;
        }
        if ((i3 & 1533916891) != 306783378 || (i4 & 11) != 2 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-763942484, i3, i4, "androidx.compose.material3.StandardBottomSheet (BottomSheetScaffold.kt:196)");
            }
            startRestartGroup.startReplaceableGroup(773894976);
            ComposerKt.sourceInformation(startRestartGroup, "CC(rememberCoroutineScope)476@19869L144:Effects.kt#9igjgp");
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                CompositionScopedCoroutineScopeCanceller compositionScopedCoroutineScopeCanceller = new CompositionScopedCoroutineScopeCanceller(EffectsKt.createCompositionCoroutineScope(EmptyCoroutineContext.INSTANCE, startRestartGroup));
                startRestartGroup.updateRememberedValue(compositionScopedCoroutineScopeCanceller);
                rememberedValue = compositionScopedCoroutineScopeCanceller;
            }
            startRestartGroup.endReplaceableGroup();
            final CoroutineScope coroutineScope = ((CompositionScopedCoroutineScopeCanceller) rememberedValue).getCoroutineScope();
            startRestartGroup.endReplaceableGroup();
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            final int i5 = i3;
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            final float mo335toPx0680j_4 = ((Density) consume).mo335toPx0680j_4(f);
            Orientation orientation = Orientation.Vertical;
            startRestartGroup.startReplaceableGroup(511388516);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(sheetState) | startRestartGroup.changed(coroutineScope);
            final int i6 = i4;
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = BottomSheetScaffoldAnchorChangeHandler(sheetState, new Function2<SheetValue, Float, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Unit invoke(SheetValue sheetValue, Float f5) {
                        invoke(sheetValue, f5.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(SheetValue target, float f5) {
                        Intrinsics.checkNotNullParameter(target, "target");
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState, target, f5, null), 3, null);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {220}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$1$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ SheetState $state;
                        final /* synthetic */ SheetValue $target;
                        final /* synthetic */ float $velocity;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(SheetState sheetState, SheetValue sheetValue, float f, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$state = sheetState;
                            this.$target = sheetValue;
                            this.$velocity = f;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$state, this.$target, this.$velocity, continuation);
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
                                if (this.$state.getSwipeableState$material3_release().animateTo(this.$target, this.$velocity, this) == coroutine_suspended) {
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
                }, new Function1<SheetValue, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$2
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(SheetValue sheetValue) {
                        invoke2(sheetValue);
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(SheetValue target) {
                        Intrinsics.checkNotNullParameter(target, "target");
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState, target, null), 3, null);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$2$1", f = "BottomSheetScaffold.kt", i = {}, l = {226}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$anchorChangeHandler$1$2$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ SheetState $state;
                        final /* synthetic */ SheetValue $target;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(SheetState sheetState, SheetValue sheetValue, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$state = sheetState;
                            this.$target = sheetValue;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$state, this.$target, continuation);
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
                                if (this.$state.getSwipeableState$material3_release().snapTo(this.$target, this) == coroutine_suspended) {
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
                });
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            AnchorChangeHandler anchorChangeHandler = (AnchorChangeHandler) rememberedValue2;
            Modifier m528requiredHeightInVpY3zN4$default = SizeKt.m528requiredHeightInVpY3zN4$default(SizeKt.fillMaxWidth$default(SizeKt.m544widthInVpY3zN4$default(Modifier.INSTANCE, 0.0f, SheetDefaultsKt.getBottomSheetMaxWidth(), 1, null), 0.0f, 1, null), f, 0.0f, 2, null);
            SwipeableV2State<SheetValue> swipeableState$material3_release = sheetState.getSwipeableState$material3_release();
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(swipeableState$material3_release);
            Object rememberedValue3 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue3 == Composer.INSTANCE.getEmpty()) {
                rememberedValue3 = SheetDefaultsKt.ConsumeSwipeWithinBottomSheetBoundsNestedScrollConnection(sheetState, orientation, new Function1<Float, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$1$1
                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f5) {
                        invoke(f5.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f5) {
                        BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState, f5, null), 3, null);
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {240}, m = "invokeSuspend", n = {}, s = {})
                    /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$1$1$1, reason: invalid class name */
                    /* loaded from: classes.dex */
                    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                        final /* synthetic */ float $it;
                        final /* synthetic */ SheetState $state;
                        int label;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        AnonymousClass1(SheetState sheetState, float f, Continuation<? super AnonymousClass1> continuation) {
                            super(2, continuation);
                            this.$state = sheetState;
                            this.$it = f;
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                            return new AnonymousClass1(this.$state, this.$it, continuation);
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
                                if (this.$state.settle$material3_release(this.$it, this) == coroutine_suspended) {
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
                });
                startRestartGroup.updateRememberedValue(rememberedValue3);
            }
            startRestartGroup.endReplaceableGroup();
            Modifier swipeableV2$default = SwipeableV2Kt.swipeableV2$default(NestedScrollModifierKt.nestedScroll$default(m528requiredHeightInVpY3zN4$default, (NestedScrollConnection) rememberedValue3, null, 2, null), sheetState.getSwipeableState$material3_release(), orientation, z, false, null, 24, null);
            SwipeableV2State<SheetValue> swipeableState$material3_release2 = sheetState.getSwipeableState$material3_release();
            Set of = SetsKt.setOf((Object[]) new SheetValue[]{SheetValue.Hidden, SheetValue.PartiallyExpanded, SheetValue.Expanded});
            Float valueOf = Float.valueOf(f2);
            Float valueOf2 = Float.valueOf(mo335toPx0680j_4);
            startRestartGroup.startReplaceableGroup(1618982084);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2,3):Composables.kt#9igjgp");
            boolean changed3 = startRestartGroup.changed(valueOf) | startRestartGroup.changed(sheetState) | startRestartGroup.changed(valueOf2);
            Object rememberedValue4 = startRestartGroup.rememberedValue();
            if (changed3 || rememberedValue4 == Composer.INSTANCE.getEmpty()) {
                rememberedValue4 = (Function2) new Function2<SheetValue, IntSize, Float>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$2$1

                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    /* loaded from: classes.dex */
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[SheetValue.values().length];
                            try {
                                iArr[SheetValue.PartiallyExpanded.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[SheetValue.Expanded.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[SheetValue.Hidden.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ Float invoke(SheetValue sheetValue, IntSize intSize) {
                        return m1011invokeO0kMr_c(sheetValue, intSize.getPackedValue());
                    }

                    /* renamed from: invoke-O0kMr_c, reason: not valid java name */
                    public final Float m1011invokeO0kMr_c(SheetValue value, long j3) {
                        Intrinsics.checkNotNullParameter(value, "value");
                        int i7 = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
                        if (i7 == 1) {
                            if (SheetState.this.getSkipPartiallyExpanded()) {
                                return null;
                            }
                            return Float.valueOf(f2 - mo335toPx0680j_4);
                        }
                        if (i7 == 2) {
                            if (IntSize.m5042getHeightimpl(j3) == MathKt.roundToInt(mo335toPx0680j_4)) {
                                return null;
                            }
                            return Float.valueOf(Float.max(0.0f, f2 - IntSize.m5042getHeightimpl(j3)));
                        }
                        if (i7 != 3) {
                            throw new NoWhenBranchMatchedException();
                        }
                        if (SheetState.this.getSkipHiddenState()) {
                            return null;
                        }
                        return Float.valueOf(f2);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue4);
            }
            startRestartGroup.endReplaceableGroup();
            int i7 = i5 >> 9;
            SurfaceKt.m1484SurfaceT9BRK9s(SwipeableV2Kt.swipeAnchors(swipeableV2$default, swipeableState$material3_release2, of, anchorChangeHandler, (Function2) rememberedValue4), shape, j, j2, f3, f4, null, ComposableLambdaKt.composableLambda(startRestartGroup, -1381492089, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3
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

                public final void invoke(Composer composer2, int i8) {
                    ComposerKt.sourceInformation(composer2, "C270@11700L2114:BottomSheetScaffold.kt#uh7d8r");
                    if ((i8 & 11) != 2 || !composer2.getSkipping()) {
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventStart(-1381492089, i8, -1, "androidx.compose.material3.StandardBottomSheet.<anonymous> (BottomSheetScaffold.kt:269)");
                        }
                        Modifier fillMaxWidth$default = SizeKt.fillMaxWidth$default(Modifier.INSTANCE, 0.0f, 1, null);
                        Function2<Composer, Integer, Unit> function22 = function2;
                        Function3<ColumnScope, Composer, Integer, Unit> function32 = function3;
                        int i9 = i6;
                        final SheetState sheetState2 = sheetState;
                        final boolean z2 = z;
                        final CoroutineScope coroutineScope2 = coroutineScope;
                        int i10 = i5;
                        composer2.startReplaceableGroup(-483455358);
                        ComposerKt.sourceInformation(composer2, "CC(Column)P(2,3,1)77@3913L61,78@3979L133:Column.kt#2w3rfo");
                        MeasurePolicy columnMeasurePolicy = ColumnKt.columnMeasurePolicy(Arrangement.INSTANCE.getTop(), Alignment.INSTANCE.getStart(), composer2, 0);
                        composer2.startReplaceableGroup(-1323940314);
                        ComposerKt.sourceInformation(composer2, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                        ProvidableCompositionLocal<Density> localDensity2 = CompositionLocalsKt.getLocalDensity();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume2 = composer2.consume(localDensity2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        Density density = (Density) consume2;
                        ProvidableCompositionLocal<LayoutDirection> localLayoutDirection = CompositionLocalsKt.getLocalLayoutDirection();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume3 = composer2.consume(localLayoutDirection);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        LayoutDirection layoutDirection = (LayoutDirection) consume3;
                        ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration = CompositionLocalsKt.getLocalViewConfiguration();
                        ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                        Object consume4 = composer2.consume(localViewConfiguration);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ViewConfiguration viewConfiguration = (ViewConfiguration) consume4;
                        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
                        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(fillMaxWidth$default);
                        if (!(composer2.getApplier() instanceof Applier)) {
                            ComposablesKt.invalidApplier();
                        }
                        composer2.startReusableNode();
                        if (composer2.getInserting()) {
                            composer2.createNode(constructor);
                        } else {
                            composer2.useNode();
                        }
                        composer2.disableReusing();
                        Composer m2273constructorimpl = Updater.m2273constructorimpl(composer2);
                        Updater.m2280setimpl(m2273constructorimpl, columnMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                        Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                        Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                        Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                        composer2.enableReusing();
                        materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer2)), composer2, 0);
                        composer2.startReplaceableGroup(2058660585);
                        ComposerKt.sourceInformationMarkerStart(composer2, 276693704, "C79@4027L9:Column.kt#2w3rfo");
                        ColumnScopeInstance columnScopeInstance = ColumnScopeInstance.INSTANCE;
                        ComposerKt.sourceInformationMarkerStart(composer2, -176229648, "C309@13795L9:BottomSheetScaffold.kt#uh7d8r");
                        composer2.startReplaceableGroup(-176229648);
                        ComposerKt.sourceInformation(composer2, "273@11839L54,274@11935L48,275@12024L47,276@12088L1680");
                        if (function22 != null) {
                            final String m1475getStringNWtq28 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1416getBottomSheetPartialExpandDescriptionadMyvUU(), composer2, 6);
                            final String m1475getStringNWtq282 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1412getBottomSheetDismissDescriptionadMyvUU(), composer2, 6);
                            final String m1475getStringNWtq283 = Strings_androidKt.m1475getStringNWtq28(Strings.INSTANCE.m1414getBottomSheetExpandDescriptionadMyvUU(), composer2, 6);
                            Modifier semantics = SemanticsModifierKt.semantics(columnScopeInstance.align(Modifier.INSTANCE, Alignment.INSTANCE.getCenterHorizontally()), true, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1
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
                                public final void invoke2(SemanticsPropertyReceiver semantics2) {
                                    Intrinsics.checkNotNullParameter(semantics2, "$this$semantics");
                                    final SheetState sheetState3 = SheetState.this;
                                    boolean z3 = z2;
                                    String str = m1475getStringNWtq283;
                                    String str2 = m1475getStringNWtq28;
                                    String str3 = m1475getStringNWtq282;
                                    final CoroutineScope coroutineScope3 = coroutineScope2;
                                    if (sheetState3.getSwipeableState$material3_release().getAnchors$material3_release().size() <= 1 || !z3) {
                                        return;
                                    }
                                    if (sheetState3.getCurrentValue() == SheetValue.PartiallyExpanded) {
                                        if (sheetState3.getSwipeableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.Expanded).booleanValue()) {
                                            SemanticsPropertiesKt.expand(semantics2, str, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1
                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                {
                                                    super(0);
                                                }

                                                /* JADX WARN: Can't rename method to resolve collision */
                                                @Override // kotlin.jvm.functions.Function0
                                                public final Boolean invoke() {
                                                    BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState3, null), 3, null);
                                                    return true;
                                                }

                                                /* JADX INFO: Access modifiers changed from: package-private */
                                                /* compiled from: BottomSheetScaffold.kt */
                                                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                                                @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1", f = "BottomSheetScaffold.kt", i = {}, l = {287}, m = "invokeSuspend", n = {}, s = {})
                                                /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$1$1, reason: invalid class name */
                                                /* loaded from: classes.dex */
                                                public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                    final /* synthetic */ SheetState $this_with;
                                                    int label;

                                                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                    AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                        super(2, continuation);
                                                        this.$this_with = sheetState;
                                                    }

                                                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                        return new AnonymousClass1(this.$this_with, continuation);
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
                                                            if (this.$this_with.expand(this) == coroutine_suspended) {
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
                                            });
                                        }
                                    } else if (sheetState3.getSwipeableState$material3_release().getConfirmValueChange$material3_release().invoke(SheetValue.PartiallyExpanded).booleanValue()) {
                                        SemanticsPropertiesKt.collapse(semantics2, str2, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$2
                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(0);
                                            }

                                            /* JADX WARN: Can't rename method to resolve collision */
                                            @Override // kotlin.jvm.functions.Function0
                                            public final Boolean invoke() {
                                                BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState3, null), 3, null);
                                                return true;
                                            }

                                            /* JADX INFO: Access modifiers changed from: package-private */
                                            /* compiled from: BottomSheetScaffold.kt */
                                            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                                            @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$2$1", f = "BottomSheetScaffold.kt", i = {}, l = {293}, m = "invokeSuspend", n = {}, s = {})
                                            /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$2$1, reason: invalid class name */
                                            /* loaded from: classes.dex */
                                            public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                                final /* synthetic */ SheetState $this_with;
                                                int label;

                                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                                AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                    super(2, continuation);
                                                    this.$this_with = sheetState;
                                                }

                                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                                public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                    return new AnonymousClass1(this.$this_with, continuation);
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
                                                        if (this.$this_with.partialExpand(this) == coroutine_suspended) {
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
                                        });
                                    }
                                    if (sheetState3.getSkipHiddenState()) {
                                        return;
                                    }
                                    SemanticsPropertiesKt.dismiss(semantics2, str3, new Function0<Boolean>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$3
                                        /* JADX INFO: Access modifiers changed from: package-private */
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(0);
                                        }

                                        /* JADX WARN: Can't rename method to resolve collision */
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Boolean invoke() {
                                            BuildersKt__Builders_commonKt.launch$default(CoroutineScope.this, null, null, new AnonymousClass1(sheetState3, null), 3, null);
                                            return true;
                                        }

                                        /* JADX INFO: Access modifiers changed from: package-private */
                                        /* compiled from: BottomSheetScaffold.kt */
                                        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                                        @DebugMetadata(c = "androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$3$1", f = "BottomSheetScaffold.kt", i = {}, l = {299}, m = "invokeSuspend", n = {}, s = {})
                                        /* renamed from: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$3$1$1$1$3$1, reason: invalid class name */
                                        /* loaded from: classes.dex */
                                        public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                            final /* synthetic */ SheetState $this_with;
                                            int label;

                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            AnonymousClass1(SheetState sheetState, Continuation<? super AnonymousClass1> continuation) {
                                                super(2, continuation);
                                                this.$this_with = sheetState;
                                            }

                                            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                                                return new AnonymousClass1(this.$this_with, continuation);
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
                                                    if (this.$this_with.hide(this) == coroutine_suspended) {
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
                                    });
                                }
                            });
                            composer2.startReplaceableGroup(733328855);
                            ComposerKt.sourceInformation(composer2, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer2, 0);
                            composer2.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation(composer2, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                            ProvidableCompositionLocal<Density> localDensity3 = CompositionLocalsKt.getLocalDensity();
                            ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                            Object consume5 = composer2.consume(localDensity3);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            Density density2 = (Density) consume5;
                            ProvidableCompositionLocal<LayoutDirection> localLayoutDirection2 = CompositionLocalsKt.getLocalLayoutDirection();
                            ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                            Object consume6 = composer2.consume(localLayoutDirection2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            LayoutDirection layoutDirection2 = (LayoutDirection) consume6;
                            ProvidableCompositionLocal<ViewConfiguration> localViewConfiguration2 = CompositionLocalsKt.getLocalViewConfiguration();
                            ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                            Object consume7 = composer2.consume(localViewConfiguration2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ViewConfiguration viewConfiguration2 = (ViewConfiguration) consume7;
                            Function0<ComposeUiNode> constructor2 = ComposeUiNode.INSTANCE.getConstructor();
                            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf2 = LayoutKt.materializerOf(semantics);
                            if (!(composer2.getApplier() instanceof Applier)) {
                                ComposablesKt.invalidApplier();
                            }
                            composer2.startReusableNode();
                            if (composer2.getInserting()) {
                                composer2.createNode(constructor2);
                            } else {
                                composer2.useNode();
                            }
                            composer2.disableReusing();
                            Composer m2273constructorimpl2 = Updater.m2273constructorimpl(composer2);
                            Updater.m2280setimpl(m2273constructorimpl2, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m2280setimpl(m2273constructorimpl2, density2, ComposeUiNode.INSTANCE.getSetDensity());
                            Updater.m2280setimpl(m2273constructorimpl2, layoutDirection2, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                            Updater.m2280setimpl(m2273constructorimpl2, viewConfiguration2, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                            composer2.enableReusing();
                            materializerOf2.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer2)), composer2, 0);
                            composer2.startReplaceableGroup(2058660585);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer2, 1084282841, "C306@13738L12:BottomSheetScaffold.kt#uh7d8r");
                            function22.invoke(composer2, Integer.valueOf((i10 >> 27) & 14));
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            ComposerKt.sourceInformationMarkerEnd(composer2);
                            composer2.endReplaceableGroup();
                            composer2.endNode();
                            composer2.endReplaceableGroup();
                            composer2.endReplaceableGroup();
                        }
                        composer2.endReplaceableGroup();
                        function32.invoke(columnScopeInstance, composer2, Integer.valueOf(((i9 << 3) & 112) | 6));
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        ComposerKt.sourceInformationMarkerEnd(composer2);
                        composer2.endReplaceableGroup();
                        composer2.endNode();
                        composer2.endReplaceableGroup();
                        composer2.endReplaceableGroup();
                        if (ComposerKt.isTraceInProgress()) {
                            ComposerKt.traceEventEnd();
                            return;
                        }
                        return;
                    }
                    composer2.skipToGroupEnd();
                }
            }), startRestartGroup, (i7 & 112) | 12582912 | (i7 & 896) | (i7 & 7168) | (57344 & i7) | (i7 & 458752), 64);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$StandardBottomSheet$4
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

            public final void invoke(Composer composer2, int i8) {
                BottomSheetScaffoldKt.m1007StandardBottomSheet8oydGBM(SheetState.this, f, z, f2, shape, j, j2, f3, f4, function2, function3, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1), RecomposeScopeImplKt.updateChangedFlags(i2));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: BottomSheetScaffoldLayout-PxNyym8, reason: not valid java name */
    public static final void m1006BottomSheetScaffoldLayoutPxNyym8(final Modifier modifier, final Function2<? super Composer, ? super Integer, Unit> function2, final Function3<? super PaddingValues, ? super Composer, ? super Integer, Unit> function3, final Function3<? super Integer, ? super Composer, ? super Integer, Unit> function32, final Function2<? super Composer, ? super Integer, Unit> function22, final float f, final Function0<Float> function0, final SheetState sheetState, final long j, final long j2, Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-1120561936);
        ComposerKt.sourceInformation(startRestartGroup, "C(BottomSheetScaffoldLayout)P(4,9!2,8,6:c#ui.unit.Dp,5,7,2:c#ui.graphics.Color,3:c#ui.graphics.Color)328@14299L1935,328@14282L1952:BottomSheetScaffold.kt#uh7d8r");
        int i2 = (i & 14) == 0 ? (startRestartGroup.changed(modifier) ? 4 : 2) | i : i;
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function2) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(function3) ? 256 : 128;
        }
        if ((i & 7168) == 0) {
            i2 |= startRestartGroup.changedInstance(function32) ? 2048 : 1024;
        }
        if ((57344 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function22) ? 16384 : 8192;
        }
        if ((458752 & i) == 0) {
            i2 |= startRestartGroup.changed(f) ? 131072 : 65536;
        }
        if ((3670016 & i) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 1048576 : 524288;
        }
        if ((29360128 & i) == 0) {
            i2 |= startRestartGroup.changed(sheetState) ? 8388608 : 4194304;
        }
        if ((234881024 & i) == 0) {
            i2 |= startRestartGroup.changed(j) ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 33554432;
        }
        if ((1879048192 & i) == 0) {
            i2 |= startRestartGroup.changed(j2) ? 536870912 : 268435456;
        }
        if ((i2 & 1533916891) != 306783378 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1120561936, i2, -1, "androidx.compose.material3.BottomSheetScaffoldLayout (BottomSheetScaffold.kt:316)");
            }
            final int i3 = i2;
            Object[] objArr = {function32, function0, function2, modifier, Color.m2629boximpl(j), Color.m2629boximpl(j2), function3, Dp.m4881boximpl(f), function22, sheetState};
            startRestartGroup.startReplaceableGroup(-568225417);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean z = false;
            for (int i4 = 0; i4 < 10; i4++) {
                z |= startRestartGroup.changed(objArr[i4]);
            }
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (z || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = (Function2) new Function2<SubcomposeMeasureScope, Constraints, MeasureResult>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1

                    /* compiled from: BottomSheetScaffold.kt */
                    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                    /* loaded from: classes.dex */
                    public /* synthetic */ class WhenMappings {
                        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                        static {
                            int[] iArr = new int[SheetValue.values().length];
                            try {
                                iArr[SheetValue.PartiallyExpanded.ordinal()] = 1;
                            } catch (NoSuchFieldError unused) {
                            }
                            try {
                                iArr[SheetValue.Expanded.ordinal()] = 2;
                            } catch (NoSuchFieldError unused2) {
                            }
                            try {
                                iArr[SheetValue.Hidden.ordinal()] = 3;
                            } catch (NoSuchFieldError unused3) {
                            }
                            $EnumSwitchMapping$0 = iArr;
                        }
                    }

                    /* JADX INFO: Access modifiers changed from: package-private */
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(2);
                    }

                    @Override // kotlin.jvm.functions.Function2
                    public /* bridge */ /* synthetic */ MeasureResult invoke(SubcomposeMeasureScope subcomposeMeasureScope, Constraints constraints) {
                        return m1010invoke0kLqBqw(subcomposeMeasureScope, constraints.getValue());
                    }

                    /* renamed from: invoke-0kLqBqw, reason: not valid java name */
                    public final MeasureResult m1010invoke0kLqBqw(SubcomposeMeasureScope SubcomposeLayout, long j3) {
                        Placeable placeable;
                        int height;
                        Intrinsics.checkNotNullParameter(SubcomposeLayout, "$this$SubcomposeLayout");
                        int m4839getMaxWidthimpl = Constraints.m4839getMaxWidthimpl(j3);
                        final int m4838getMaxHeightimpl = Constraints.m4838getMaxHeightimpl(j3);
                        long m4830copyZbe2FdA$default = Constraints.m4830copyZbe2FdA$default(j3, 0, 0, 0, 0, 10, null);
                        BottomSheetScaffoldLayoutSlot bottomSheetScaffoldLayoutSlot = BottomSheetScaffoldLayoutSlot.Sheet;
                        final Function3<Integer, Composer, Integer, Unit> function33 = function32;
                        final int i5 = i3;
                        final Placeable mo3876measureBRTryo0 = SubcomposeLayout.subcompose(bottomSheetScaffoldLayoutSlot, ComposableLambdaKt.composableLambdaInstance(-1192048628, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$sheetPlaceable$1
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

                            public final void invoke(Composer composer2, int i6) {
                                ComposerKt.sourceInformation(composer2, "C334@14581L25:BottomSheetScaffold.kt#uh7d8r");
                                if ((i6 & 11) == 2 && composer2.getSkipping()) {
                                    composer2.skipToGroupEnd();
                                    return;
                                }
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventStart(-1192048628, i6, -1, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:333)");
                                }
                                function33.invoke(Integer.valueOf(m4838getMaxHeightimpl), composer2, Integer.valueOf((i5 >> 6) & 112));
                                if (ComposerKt.isTraceInProgress()) {
                                    ComposerKt.traceEventEnd();
                                }
                            }
                        })).get(0).mo3876measureBRTryo0(m4830copyZbe2FdA$default);
                        final int roundToInt = MathKt.roundToInt(function0.invoke().floatValue());
                        final int max = Integer.max(0, (m4839getMaxWidthimpl - mo3876measureBRTryo0.getWidth()) / 2);
                        final Function2<Composer, Integer, Unit> function23 = function2;
                        if (function23 != null) {
                            final int i6 = i3;
                            placeable = SubcomposeLayout.subcompose(BottomSheetScaffoldLayoutSlot.TopBar, ComposableLambdaKt.composableLambdaInstance(-873203005, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$topBarPlaceable$1$1
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

                                public final void invoke(Composer composer2, int i7) {
                                    ComposerKt.sourceInformation(composer2, "C340@14892L8:BottomSheetScaffold.kt#uh7d8r");
                                    if ((i7 & 11) == 2 && composer2.getSkipping()) {
                                        composer2.skipToGroupEnd();
                                        return;
                                    }
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-873203005, i7, -1, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:340)");
                                    }
                                    function23.invoke(composer2, Integer.valueOf((i6 >> 3) & 14));
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                    }
                                }
                            })).get(0).mo3876measureBRTryo0(m4830copyZbe2FdA$default);
                        } else {
                            placeable = null;
                        }
                        final Placeable placeable2 = placeable;
                        int height2 = placeable2 != null ? placeable2.getHeight() : 0;
                        long m4830copyZbe2FdA$default2 = Constraints.m4830copyZbe2FdA$default(m4830copyZbe2FdA$default, 0, 0, 0, m4838getMaxHeightimpl - height2, 7, null);
                        BottomSheetScaffoldLayoutSlot bottomSheetScaffoldLayoutSlot2 = BottomSheetScaffoldLayoutSlot.Body;
                        final Modifier modifier2 = modifier;
                        final long j4 = j;
                        final int i7 = height2;
                        final long j5 = j2;
                        final int i8 = i3;
                        final Function3<PaddingValues, Composer, Integer, Unit> function34 = function3;
                        final float f2 = f;
                        final Placeable mo3876measureBRTryo02 = SubcomposeLayout.subcompose(bottomSheetScaffoldLayoutSlot2, ComposableLambdaKt.composableLambdaInstance(-1459220575, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1
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

                            public final void invoke(Composer composer2, int i9) {
                                ComposerKt.sourceInformation(composer2, "C347@15198L194:BottomSheetScaffold.kt#uh7d8r");
                                if ((i9 & 11) != 2 || !composer2.getSkipping()) {
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventStart(-1459220575, i9, -1, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:346)");
                                    }
                                    Modifier modifier3 = Modifier.this;
                                    long j6 = j4;
                                    long j7 = j5;
                                    final Function3<PaddingValues, Composer, Integer, Unit> function35 = function34;
                                    final float f3 = f2;
                                    final int i10 = i8;
                                    ComposableLambda composableLambda = ComposableLambdaKt.composableLambda(composer2, 1725620860, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1$bodyPlaceable$1.1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        /* JADX WARN: Multi-variable type inference failed */
                                        {
                                            super(2);
                                        }

                                        @Override // kotlin.jvm.functions.Function2
                                        public /* bridge */ /* synthetic */ Unit invoke(Composer composer3, Integer num) {
                                            invoke(composer3, num.intValue());
                                            return Unit.INSTANCE;
                                        }

                                        public final void invoke(Composer composer3, int i11) {
                                            ComposerKt.sourceInformation(composer3, "C351@15345L45:BottomSheetScaffold.kt#uh7d8r");
                                            if ((i11 & 11) == 2 && composer3.getSkipping()) {
                                                composer3.skipToGroupEnd();
                                                return;
                                            }
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventStart(1725620860, i11, -1, "androidx.compose.material3.BottomSheetScaffoldLayout.<anonymous>.<anonymous>.<anonymous>.<anonymous> (BottomSheetScaffold.kt:351)");
                                            }
                                            function35.invoke(PaddingKt.m487PaddingValuesa9UjIt4$default(0.0f, 0.0f, 0.0f, f3, 7, null), composer3, Integer.valueOf((i10 >> 3) & 112));
                                            if (ComposerKt.isTraceInProgress()) {
                                                ComposerKt.traceEventEnd();
                                            }
                                        }
                                    });
                                    int i11 = i8;
                                    SurfaceKt.m1484SurfaceT9BRK9s(modifier3, null, j6, j7, 0.0f, 0.0f, null, composableLambda, composer2, (i11 & 14) | 12582912 | ((i11 >> 18) & 896) | ((i11 >> 18) & 7168), 114);
                                    if (ComposerKt.isTraceInProgress()) {
                                        ComposerKt.traceEventEnd();
                                        return;
                                    }
                                    return;
                                }
                                composer2.skipToGroupEnd();
                            }
                        })).get(0).mo3876measureBRTryo0(m4830copyZbe2FdA$default2);
                        final Placeable mo3876measureBRTryo03 = SubcomposeLayout.subcompose(BottomSheetScaffoldLayoutSlot.Snackbar, function22).get(0).mo3876measureBRTryo0(m4830copyZbe2FdA$default);
                        final int width = (m4839getMaxWidthimpl - mo3876measureBRTryo03.getWidth()) / 2;
                        int i9 = WhenMappings.$EnumSwitchMapping$0[sheetState.getCurrentValue().ordinal()];
                        if (i9 == 1) {
                            height = roundToInt - mo3876measureBRTryo03.getHeight();
                        } else {
                            if (i9 != 2 && i9 != 3) {
                                throw new NoWhenBranchMatchedException();
                            }
                            height = m4838getMaxHeightimpl - mo3876measureBRTryo03.getHeight();
                        }
                        final int i10 = height;
                        return MeasureScope.layout$default(SubcomposeLayout, m4839getMaxWidthimpl, m4838getMaxHeightimpl, null, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$1$1.1
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
                                Placeable.PlacementScope.placeRelative$default(layout, Placeable.this, 0, i7, 0.0f, 4, null);
                                Placeable placeable3 = placeable2;
                                if (placeable3 != null) {
                                    Placeable.PlacementScope.placeRelative$default(layout, placeable3, 0, 0, 0.0f, 4, null);
                                }
                                Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo0, max, roundToInt, 0.0f, 4, null);
                                Placeable.PlacementScope.placeRelative$default(layout, mo3876measureBRTryo03, width, i10, 0.0f, 4, null);
                            }
                        }, 4, null);
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            SubcomposeLayoutKt.SubcomposeLayout(null, (Function2) rememberedValue, startRestartGroup, 0, 1);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldLayout$2
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

            public final void invoke(Composer composer2, int i5) {
                BottomSheetScaffoldKt.m1006BottomSheetScaffoldLayoutPxNyym8(Modifier.this, function2, function3, function32, function22, f, function0, sheetState, j, j2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnchorChangeHandler<SheetValue> BottomSheetScaffoldAnchorChangeHandler(final SheetState sheetState, final Function2<? super SheetValue, ? super Float, Unit> function2, final Function1<? super SheetValue, Unit> function1) {
        return new AnchorChangeHandler<SheetValue>() { // from class: androidx.compose.material3.BottomSheetScaffoldKt$BottomSheetScaffoldAnchorChangeHandler$1

            /* compiled from: BottomSheetScaffold.kt */
            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[SheetValue.values().length];
                    try {
                        iArr[SheetValue.Hidden.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[SheetValue.PartiallyExpanded.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[SheetValue.Expanded.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            @Override // androidx.compose.material3.AnchorChangeHandler
            public final void onAnchorsChanged(SheetValue previousTarget, Map<SheetValue, Float> previousAnchors, Map<SheetValue, Float> newAnchors) {
                SheetValue sheetValue;
                Intrinsics.checkNotNullParameter(previousTarget, "previousTarget");
                Intrinsics.checkNotNullParameter(previousAnchors, "previousAnchors");
                Intrinsics.checkNotNullParameter(newAnchors, "newAnchors");
                Float f = previousAnchors.get(previousTarget);
                int i = WhenMappings.$EnumSwitchMapping$0[previousTarget.ordinal()];
                if (i == 1 || i == 2) {
                    sheetValue = SheetValue.PartiallyExpanded;
                } else {
                    if (i != 3) {
                        throw new NoWhenBranchMatchedException();
                    }
                    sheetValue = newAnchors.containsKey(SheetValue.Expanded) ? SheetValue.Expanded : SheetValue.PartiallyExpanded;
                }
                if (Intrinsics.areEqual(((Number) MapsKt.getValue(newAnchors, sheetValue)).floatValue(), f)) {
                    return;
                }
                if (SheetState.this.getSwipeableState$material3_release().isAnimationRunning()) {
                    function2.invoke(sheetValue, Float.valueOf(SheetState.this.getSwipeableState$material3_release().getLastVelocity()));
                } else {
                    function1.invoke(sheetValue);
                }
            }
        };
    }
}
