package androidx.compose.material3;

import android.view.View;
import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.DraggableKt$draggable$1;
import androidx.compose.foundation.gestures.DraggableKt$draggable$2;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.WindowInsets;
import androidx.compose.foundation.layout.WindowInsetsPaddingKt;
import androidx.compose.foundation.layout.WindowInsetsPadding_androidKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.DisposableEffectResult;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import io.sentry.protocol.SentryThread;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: ModalBottomSheet.android.kt */
@Metadata(d1 = {"\u0000|\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\u001a\u009e\u0001\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\u0015\b\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003¢\u0006\u0002\b\u00112\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0015H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u0016\u0010\u0017\u001a¨\u0001\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\b\b\u0002\u0010\r\u001a\u00020\u000e2\b\b\u0002\u0010\u000f\u001a\u00020\u000b2\u0015\b\u0002\u0010\u0010\u001a\u000f\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0003¢\u0006\u0002\b\u00112\b\b\u0002\u0010\u0018\u001a\u00020\u00192\u001c\u0010\u0012\u001a\u0018\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u0013¢\u0006\u0002\b\u0011¢\u0006\u0002\b\u0015H\u0007ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b\u001a\u0010\u001b\u001aq\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u0010\u001f\u001a\u00020\u000726\u0010 \u001a2\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0013\u0012\u00110%¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00010!2!\u0010'\u001a\u001d\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b($\u0012\u0004\u0012\u00020\u00010\u0013H\u0003\u001a6\u0010(\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010\u0018\u001a\u00020\u00192\u0011\u0010\u0012\u001a\r\u0012\u0004\u0012\u00020\u00010\u0003¢\u0006\u0002\b\u0011H\u0001¢\u0006\u0002\u0010)\u001a3\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u000b2\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u00032\u0006\u0010,\u001a\u00020-H\u0003ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\b.\u0010/\u001a-\u00100\u001a\u00020\u00072\b\b\u0002\u00101\u001a\u00020-2\u0014\b\u0002\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u001e\u0012\u0004\u0012\u00020-0\u0013H\u0007¢\u0006\u0002\u00103\u001aX\u00104\u001a\u00020\u0005*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u00105\u001a\b\u0012\u0004\u0012\u00020\u001e0\u001d2\u0006\u00106\u001a\u00020%2,\u00107\u001a(\u0012\u0004\u0012\u000208\u0012\u0013\u0012\u00110%¢\u0006\f\b\"\u0012\b\b#\u0012\u0004\b\b(&\u0012\u0004\u0012\u00020\u00010!¢\u0006\u0002\b\u0015H\u0003\u0082\u0002\u000b\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019¨\u00069"}, d2 = {"ModalBottomSheet", "", "onDismissRequest", "Lkotlin/Function0;", "modifier", "Landroidx/compose/ui/Modifier;", "sheetState", "Landroidx/compose/material3/SheetState;", "shape", "Landroidx/compose/ui/graphics/Shape;", "containerColor", "Landroidx/compose/ui/graphics/Color;", "contentColor", "tonalElevation", "Landroidx/compose/ui/unit/Dp;", "scrimColor", "dragHandle", "Landroidx/compose/runtime/Composable;", "content", "Lkotlin/Function1;", "Landroidx/compose/foundation/layout/ColumnScope;", "Lkotlin/ExtensionFunctionType;", "ModalBottomSheet-xOkiWaM", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V", "windowInsets", "Landroidx/compose/foundation/layout/WindowInsets;", "ModalBottomSheet-EP0qOeE", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/ui/graphics/Shape;JJFJLkotlin/jvm/functions/Function2;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "ModalBottomSheetAnchorChangeHandler", "Landroidx/compose/material3/AnchorChangeHandler;", "Landroidx/compose/material3/SheetValue;", SentryThread.JsonKeys.STATE, "animateTo", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "target", "", "velocity", "snapTo", "ModalBottomSheetPopup", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "Scrim", "color", "visible", "", "Scrim-3J-VO9M", "(JLkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;I)V", "rememberModalBottomSheetState", "skipPartiallyExpanded", "confirmValueChange", "(ZLkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;", "modalBottomSheetSwipeable", "anchorChangeHandler", "screenHeight", "onDragStopped", "Lkotlinx/coroutines/CoroutineScope;", "material3_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ModalBottomSheet_androidKt {
    /* JADX WARN: Removed duplicated region for block: B:103:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0354  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0392  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x038a  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x01ff  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x013f  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0107  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0145  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:77:? A[RETURN, SYNTHETIC] */
    /* renamed from: ModalBottomSheet-EP0qOeE, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m1290ModalBottomSheetEP0qOeE(final kotlin.jvm.functions.Function0<kotlin.Unit> r34, androidx.compose.ui.Modifier r35, androidx.compose.material3.SheetState r36, androidx.compose.ui.graphics.Shape r37, long r38, long r40, float r42, long r43, kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r45, androidx.compose.foundation.layout.WindowInsets r46, final kotlin.jvm.functions.Function3<? super androidx.compose.foundation.layout.ColumnScope, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r47, androidx.compose.runtime.Composer r48, final int r49, final int r50, final int r51) {
        /*
            Method dump skipped, instructions count: 969
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ModalBottomSheet_androidKt.m1290ModalBottomSheetEP0qOeE(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.material3.SheetState, androidx.compose.ui.graphics.Shape, long, long, float, long, kotlin.jvm.functions.Function2, androidx.compose.foundation.layout.WindowInsets, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x012b  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02a0  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0286  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01ab  */
    @kotlin.Deprecated(level = kotlin.DeprecationLevel.HIDDEN, message = "Use ModalBottomSheet overload with windowInset parameter.")
    /* renamed from: ModalBottomSheet-xOkiWaM, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final /* synthetic */ void m1291ModalBottomSheetxOkiWaM(final kotlin.jvm.functions.Function0 r33, androidx.compose.ui.Modifier r34, androidx.compose.material3.SheetState r35, androidx.compose.ui.graphics.Shape r36, long r37, long r39, float r41, long r42, kotlin.jvm.functions.Function2 r44, final kotlin.jvm.functions.Function3 r45, androidx.compose.runtime.Composer r46, final int r47, final int r48) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ModalBottomSheet_androidKt.m1291ModalBottomSheetxOkiWaM(kotlin.jvm.functions.Function0, androidx.compose.ui.Modifier, androidx.compose.material3.SheetState, androidx.compose.ui.graphics.Shape, long, long, float, long, kotlin.jvm.functions.Function2, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int):void");
    }

    public static final SheetState rememberModalBottomSheetState(boolean z, Function1<? super SheetValue, Boolean> function1, Composer composer, int i, int i2) {
        composer.startReplaceableGroup(-1261794383);
        ComposerKt.sourceInformation(composer, "C(rememberModalBottomSheetState)P(1)318@14402L69:ModalBottomSheet.android.kt#uh7d8r");
        if ((i2 & 1) != 0) {
            z = false;
        }
        boolean z2 = z;
        if ((i2 & 2) != 0) {
            function1 = new Function1<SheetValue, Boolean>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$rememberModalBottomSheetState$1
                @Override // kotlin.jvm.functions.Function1
                public final Boolean invoke(SheetValue it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return true;
                }
            };
        }
        Function1<? super SheetValue, Boolean> function12 = function1;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1261794383, i, -1, "androidx.compose.material3.rememberModalBottomSheetState (ModalBottomSheet.android.kt:315)");
        }
        SheetState rememberSheetState = SheetDefaultsKt.rememberSheetState(z2, function12, SheetValue.Hidden, false, composer, (i & 14) | 384 | (i & 112), 8);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        composer.endReplaceableGroup();
        return rememberSheetState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: Scrim-3J-VO9M, reason: not valid java name */
    public static final void m1292Scrim3JVO9M(final long j, final Function0<Unit> function0, final boolean z, Composer composer, final int i) {
        int i2;
        Modifier.Companion companion;
        Composer startRestartGroup = composer.startRestartGroup(1053897700);
        ComposerKt.sourceInformation(startRestartGroup, "C(Scrim)P(0:c#ui.graphics.Color)327@14631L121,346@15192L62,342@15086L168:ModalBottomSheet.android.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changed(j) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changedInstance(function0) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changed(z) ? 256 : 128;
        }
        if ((i2 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1053897700, i2, -1, "androidx.compose.material3.Scrim (ModalBottomSheet.android.kt:321)");
            }
            if (j != Color.INSTANCE.m2675getUnspecified0d7_KjU()) {
                final State<Float> animateFloatAsState = AnimateAsStateKt.animateFloatAsState(z ? 1.0f : 0.0f, new TweenSpec(0, 0, null, 7, null), 0.0f, null, null, startRestartGroup, 48, 28);
                startRestartGroup.startReplaceableGroup(-1858721447);
                ComposerKt.sourceInformation(startRestartGroup, "333@14864L124");
                if (z) {
                    Modifier.Companion companion2 = Modifier.INSTANCE;
                    startRestartGroup.startReplaceableGroup(1157296644);
                    ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
                    boolean changed = startRestartGroup.changed(function0);
                    ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1 rememberedValue = startRestartGroup.rememberedValue();
                    if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                        rememberedValue = new ModalBottomSheet_androidKt$Scrim$dismissSheet$1$1(function0, null);
                        startRestartGroup.updateRememberedValue(rememberedValue);
                    }
                    startRestartGroup.endReplaceableGroup();
                    companion = SemanticsModifierKt.clearAndSetSemantics(SuspendingPointerInputFilterKt.pointerInput(companion2, function0, (Function2<? super PointerInputScope, ? super Continuation<? super Unit>, ? extends Object>) rememberedValue), new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$Scrim$dismissSheet$2
                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(SemanticsPropertyReceiver clearAndSetSemantics) {
                            Intrinsics.checkNotNullParameter(clearAndSetSemantics, "$this$clearAndSetSemantics");
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                            invoke2(semanticsPropertyReceiver);
                            return Unit.INSTANCE;
                        }
                    });
                } else {
                    companion = Modifier.INSTANCE;
                }
                startRestartGroup.endReplaceableGroup();
                Modifier then = SizeKt.fillMaxSize$default(Modifier.INSTANCE, 0.0f, 1, null).then(companion);
                Color m2629boximpl = Color.m2629boximpl(j);
                startRestartGroup.startReplaceableGroup(511388516);
                ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1,2):Composables.kt#9igjgp");
                boolean changed2 = startRestartGroup.changed(m2629boximpl) | startRestartGroup.changed(animateFloatAsState);
                Object rememberedValue2 = startRestartGroup.rememberedValue();
                if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                    rememberedValue2 = (Function1) new Function1<DrawScope, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$Scrim$1$1
                        /* JADX INFO: Access modifiers changed from: package-private */
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(DrawScope drawScope) {
                            invoke2(drawScope);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(DrawScope Canvas) {
                            float Scrim_3J_VO9M$lambda$2;
                            Intrinsics.checkNotNullParameter(Canvas, "$this$Canvas");
                            long j2 = j;
                            Scrim_3J_VO9M$lambda$2 = ModalBottomSheet_androidKt.Scrim_3J_VO9M$lambda$2(animateFloatAsState);
                            DrawScope.m3177drawRectnJ9OG0$default(Canvas, j2, 0L, 0L, Scrim_3J_VO9M$lambda$2, null, null, 0, 118, null);
                        }
                    };
                    startRestartGroup.updateRememberedValue(rememberedValue2);
                }
                startRestartGroup.endReplaceableGroup();
                CanvasKt.Canvas(then, (Function1) rememberedValue2, startRestartGroup, 0);
            }
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$Scrim$2
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

            public final void invoke(Composer composer2, int i3) {
                ModalBottomSheet_androidKt.m1292Scrim3JVO9M(j, function0, z, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Modifier modalBottomSheetSwipeable(Modifier modifier, final SheetState sheetState, AnchorChangeHandler<SheetValue> anchorChangeHandler, final float f, Function2<? super CoroutineScope, ? super Float, Unit> function2) {
        Modifier draggable;
        draggable = DraggableKt.draggable(modifier, sheetState.getSwipeableState$material3_release().getSwipeDraggableState(), Orientation.Vertical, (r20 & 4) != 0 ? true : sheetState.isVisible(), (r20 & 8) != 0 ? null : null, (r20 & 16) != 0 ? false : sheetState.getSwipeableState$material3_release().isAnimationRunning(), (r20 & 32) != 0 ? new DraggableKt$draggable$1(null) : null, (r20 & 64) != 0 ? new DraggableKt$draggable$2(null) : new ModalBottomSheet_androidKt$modalBottomSheetSwipeable$1(function2), (r20 & 128) != 0 ? false : false);
        return SwipeableV2Kt.swipeAnchors(draggable, sheetState.getSwipeableState$material3_release(), SetsKt.setOf((Object[]) new SheetValue[]{SheetValue.Hidden, SheetValue.PartiallyExpanded, SheetValue.Expanded}), anchorChangeHandler, new Function2<SheetValue, IntSize, Float>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2

            /* compiled from: ModalBottomSheet.android.kt */
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

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Float invoke(SheetValue sheetValue, IntSize intSize) {
                return m1296invokeO0kMr_c(sheetValue, intSize.getPackedValue());
            }

            /* renamed from: invoke-O0kMr_c, reason: not valid java name */
            public final Float m1296invokeO0kMr_c(SheetValue value, long j) {
                Intrinsics.checkNotNullParameter(value, "value");
                int i = WhenMappings.$EnumSwitchMapping$0[value.ordinal()];
                if (i == 1) {
                    return Float.valueOf(f);
                }
                if (i == 2) {
                    if (IntSize.m5042getHeightimpl(j) >= f / 2 && !sheetState.getSkipPartiallyExpanded()) {
                        return Float.valueOf(f / 2.0f);
                    }
                    return null;
                }
                if (i == 3) {
                    if (IntSize.m5042getHeightimpl(j) != 0) {
                        return Float.valueOf(Math.max(0.0f, f - IntSize.m5042getHeightimpl(j)));
                    }
                    return null;
                }
                throw new NoWhenBranchMatchedException();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ Object modalBottomSheetSwipeable$suspendConversion0(Function2 function2, CoroutineScope coroutineScope, float f, Continuation continuation) {
        function2.invoke(coroutineScope, Boxing.boxFloat(f));
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnchorChangeHandler<SheetValue> ModalBottomSheetAnchorChangeHandler(final SheetState sheetState, final Function2<? super SheetValue, ? super Float, Unit> function2, final Function1<? super SheetValue, Unit> function1) {
        return new AnchorChangeHandler<SheetValue>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetAnchorChangeHandler$1

            /* compiled from: ModalBottomSheet.android.kt */
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
                if (i == 1) {
                    sheetValue = SheetValue.Hidden;
                } else if (i == 2 || i == 3) {
                    if (newAnchors.containsKey(SheetValue.PartiallyExpanded)) {
                        sheetValue = SheetValue.PartiallyExpanded;
                    } else {
                        sheetValue = newAnchors.containsKey(SheetValue.Expanded) ? SheetValue.Expanded : SheetValue.Hidden;
                    }
                } else {
                    throw new NoWhenBranchMatchedException();
                }
                if (Intrinsics.areEqual(((Number) MapsKt.getValue(newAnchors, sheetValue)).floatValue(), f)) {
                    return;
                }
                if (SheetState.this.getSwipeableState$material3_release().isAnimationRunning() || previousAnchors.isEmpty()) {
                    function2.invoke(sheetValue, Float.valueOf(SheetState.this.getSwipeableState$material3_release().getLastVelocity()));
                } else {
                    function1.invoke(sheetValue);
                }
            }
        };
    }

    public static final void ModalBottomSheetPopup(final Function0<Unit> onDismissRequest, final WindowInsets windowInsets, final Function2<? super Composer, ? super Integer, Unit> content, Composer composer, final int i) {
        int i2;
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
        Intrinsics.checkNotNullParameter(content, "content");
        Composer startRestartGroup = composer.startRestartGroup(-627217336);
        ComposerKt.sourceInformation(startRestartGroup, "C(ModalBottomSheetPopup)P(1,2)420@17875L7,421@17896L38,422@17963L28,423@18018L29,424@18081L621,446@18708L217:ModalBottomSheet.android.kt#uh7d8r");
        if ((i & 14) == 0) {
            i2 = (startRestartGroup.changedInstance(onDismissRequest) ? 4 : 2) | i;
        } else {
            i2 = i;
        }
        if ((i & 112) == 0) {
            i2 |= startRestartGroup.changed(windowInsets) ? 32 : 16;
        }
        if ((i & 896) == 0) {
            i2 |= startRestartGroup.changedInstance(content) ? 256 : 128;
        }
        int i3 = i2;
        if ((i3 & 731) != 146 || !startRestartGroup.getSkipping()) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-627217336, i3, -1, "androidx.compose.material3.ModalBottomSheetPopup (ModalBottomSheet.android.kt:415)");
            }
            ProvidableCompositionLocal<View> localView = AndroidCompositionLocals_androidKt.getLocalView();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localView);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            View view = (View) consume;
            UUID id = (UUID) RememberSaveableKt.m2286rememberSaveable(new Object[0], (Saver) null, (String) null, (Function0) new Function0<UUID>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$id$1
                @Override // kotlin.jvm.functions.Function0
                public final UUID invoke() {
                    return UUID.randomUUID();
                }
            }, startRestartGroup, 3080, 6);
            CompositionContext rememberCompositionContext = ComposablesKt.rememberCompositionContext(startRestartGroup, 0);
            final State rememberUpdatedState = SnapshotStateKt.rememberUpdatedState(content, startRestartGroup, (i3 >> 6) & 14);
            startRestartGroup.startReplaceableGroup(-492369756);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember):Composables.kt#9igjgp");
            Object rememberedValue = startRestartGroup.rememberedValue();
            Object obj = rememberedValue;
            if (rememberedValue == Composer.INSTANCE.getEmpty()) {
                Intrinsics.checkNotNullExpressionValue(id, "id");
                ModalBottomSheetWindow modalBottomSheetWindow = new ModalBottomSheetWindow(onDismissRequest, view, id);
                modalBottomSheetWindow.setCustomContent(rememberCompositionContext, ComposableLambdaKt.composableLambdaInstance(861223805, true, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1
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
                        Function2 ModalBottomSheetPopup$lambda$5;
                        ComposerKt.sourceInformation(composer2, "C433@18369L285:ModalBottomSheet.android.kt#uh7d8r");
                        if ((i4 & 11) != 2 || !composer2.getSkipping()) {
                            if (ComposerKt.isTraceInProgress()) {
                                ComposerKt.traceEventStart(861223805, i4, -1, "androidx.compose.material3.ModalBottomSheetPopup.<anonymous>.<anonymous>.<anonymous> (ModalBottomSheet.android.kt:432)");
                            }
                            Modifier imePadding = WindowInsetsPadding_androidKt.imePadding(WindowInsetsPaddingKt.windowInsetsPadding(SemanticsModifierKt.semantics$default(Modifier.INSTANCE, false, new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$modalBottomSheetWindow$1$1$1.1
                                @Override // kotlin.jvm.functions.Function1
                                public /* bridge */ /* synthetic */ Unit invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
                                    invoke2(semanticsPropertyReceiver);
                                    return Unit.INSTANCE;
                                }

                                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                                public final void invoke2(SemanticsPropertyReceiver semantics) {
                                    Intrinsics.checkNotNullParameter(semantics, "$this$semantics");
                                    SemanticsPropertiesKt.popup(semantics);
                                }
                            }, 1, null), WindowInsets.this));
                            State<Function2<Composer, Integer, Unit>> state = rememberUpdatedState;
                            composer2.startReplaceableGroup(733328855);
                            ComposerKt.sourceInformation(composer2, "CC(Box)P(2,1,3)70@3267L67,71@3339L130:Box.kt#2w3rfo");
                            MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), false, composer2, 0);
                            composer2.startReplaceableGroup(-1323940314);
                            ComposerKt.sourceInformation(composer2, "C(Layout)P(!1,2)74@2915L7,75@2970L7,76@3029L7,77@3041L460:Layout.kt#80mrfh");
                            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
                            ComposerKt.sourceInformationMarkerStart(composer2, 2023513938, "C:CompositionLocal.kt#9igjgp");
                            Object consume2 = composer2.consume(localDensity);
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
                            Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> materializerOf = LayoutKt.materializerOf(imePadding);
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
                            Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
                            Updater.m2280setimpl(m2273constructorimpl, density, ComposeUiNode.INSTANCE.getSetDensity());
                            Updater.m2280setimpl(m2273constructorimpl, layoutDirection, ComposeUiNode.INSTANCE.getSetLayoutDirection());
                            Updater.m2280setimpl(m2273constructorimpl, viewConfiguration, ComposeUiNode.INSTANCE.getSetViewConfiguration());
                            composer2.enableReusing();
                            materializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(composer2)), composer2, 0);
                            composer2.startReplaceableGroup(2058660585);
                            ComposerKt.sourceInformationMarkerStart(composer2, -1253629305, "C72@3384L9:Box.kt#2w3rfo");
                            BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
                            ComposerKt.sourceInformationMarkerStart(composer2, 321876634, "C439@18616L16:ModalBottomSheet.android.kt#uh7d8r");
                            ModalBottomSheetPopup$lambda$5 = ModalBottomSheet_androidKt.ModalBottomSheetPopup$lambda$5(state);
                            ModalBottomSheetPopup$lambda$5.invoke(composer2, 0);
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
                }));
                startRestartGroup.updateRememberedValue(modalBottomSheetWindow);
                obj = modalBottomSheetWindow;
            }
            startRestartGroup.endReplaceableGroup();
            final ModalBottomSheetWindow modalBottomSheetWindow2 = (ModalBottomSheetWindow) obj;
            EffectsKt.DisposableEffect(modalBottomSheetWindow2, new Function1<DisposableEffectScope, DisposableEffectResult>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$1
                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final DisposableEffectResult invoke(DisposableEffectScope DisposableEffect) {
                    Intrinsics.checkNotNullParameter(DisposableEffect, "$this$DisposableEffect");
                    ModalBottomSheetWindow.this.show();
                    final ModalBottomSheetWindow modalBottomSheetWindow3 = ModalBottomSheetWindow.this;
                    return new DisposableEffectResult() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$1$invoke$$inlined$onDispose$1
                        @Override // androidx.compose.runtime.DisposableEffectResult
                        public void dispose() {
                            ModalBottomSheetWindow.this.disposeComposition();
                            ModalBottomSheetWindow.this.dismiss();
                        }
                    };
                }
            }, startRestartGroup, 8);
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
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheet_androidKt$ModalBottomSheetPopup$2
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
                ModalBottomSheet_androidKt.ModalBottomSheetPopup(onDismissRequest, windowInsets, content, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float Scrim_3J_VO9M$lambda$2(State<Float> state) {
        return state.getValue().floatValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Function2<Composer, Integer, Unit> ModalBottomSheetPopup$lambda$5(State<? extends Function2<? super Composer, ? super Integer, Unit>> state) {
        return (Function2) state.getValue();
    }
}
