package androidx.compose.foundation.text;

import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.relocation.BringIntoViewRequester;
import androidx.compose.foundation.text.selection.SelectionHandleInfo;
import androidx.compose.foundation.text.selection.SelectionHandlesKt;
import androidx.compose.foundation.text.selection.TextFieldSelectionManager;
import androidx.compose.foundation.text.selection.TextFieldSelectionManagerKt;
import androidx.compose.runtime.Applier;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionLocalMap;
import androidx.compose.runtime.ProvidableCompositionLocal;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.SkippableUpdater;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEvent;
import androidx.compose.ui.input.key.KeyInputModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.input.ImeOptions;
import androidx.compose.ui.text.input.OffsetMapping;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;
import androidx.compose.ui.text.style.ResolvedTextDirection;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntSize;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: CoreTextField.kt */
@Metadata(d1 = {"\u0000\u0098\u0001\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aî\u0001\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00072\b\b\u0002\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u000b2\u0014\b\u0002\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u00010\u00052\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\b\u0002\u0010\u0010\u001a\u00020\u00112\b\b\u0002\u0010\u0012\u001a\u00020\u00132\b\b\u0002\u0010\u0014\u001a\u00020\u00152\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00182\b\b\u0002\u0010\u0019\u001a\u00020\u001a2\b\b\u0002\u0010\u001b\u001a\u00020\u00132\b\b\u0002\u0010\u001c\u001a\u00020\u001323\b\u0002\u0010\u001d\u001a-\u0012\u001e\u0012\u001c\u0012\u0004\u0012\u00020\u00010\u001e¢\u0006\u0002\b\u001f¢\u0006\f\b \u0012\b\b!\u0012\u0004\b\b(\"\u0012\u0004\u0012\u00020\u00010\u0005¢\u0006\u0002\b\u001fH\u0001¢\u0006\u0002\u0010#\u001a0\u0010$\u001a\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010%\u001a\u00020&2\u0011\u0010'\u001a\r\u0012\u0004\u0012\u00020\u00010\u001e¢\u0006\u0002\b\u001fH\u0003¢\u0006\u0002\u0010(\u001a\u001d\u0010)\u001a\u00020\u00012\u0006\u0010%\u001a\u00020&2\u0006\u0010*\u001a\u00020\u0013H\u0003¢\u0006\u0002\u0010+\u001a\u0015\u0010,\u001a\u00020\u00012\u0006\u0010%\u001a\u00020&H\u0001¢\u0006\u0002\u0010-\u001a \u0010.\u001a\u00020\u00012\u0006\u0010/\u001a\u0002002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u00101\u001a\u000202H\u0002\u001a0\u00103\u001a\u00020\u00012\u0006\u00104\u001a\u0002052\u0006\u0010/\u001a\u0002002\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u00101\u001a\u000202H\u0002\u001a\u0010\u00106\u001a\u00020\u00012\u0006\u0010/\u001a\u000200H\u0002\u001a \u00107\u001a\u00020\u00012\u0006\u0010/\u001a\u0002002\u0006\u00108\u001a\u0002092\u0006\u0010:\u001a\u00020\u0013H\u0002\u001a5\u0010;\u001a\u00020\u0001*\u00020<2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010=\u001a\u00020>2\u0006\u0010?\u001a\u00020\r2\u0006\u00101\u001a\u000202H\u0080@ø\u0001\u0000¢\u0006\u0002\u0010@\u001a\u001c\u0010A\u001a\u00020\u0007*\u00020\u00072\u0006\u0010/\u001a\u0002002\u0006\u0010%\u001a\u00020&H\u0002\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006B"}, d2 = {"CoreTextField", "", "value", "Landroidx/compose/ui/text/input/TextFieldValue;", "onValueChange", "Lkotlin/Function1;", "modifier", "Landroidx/compose/ui/Modifier;", "textStyle", "Landroidx/compose/ui/text/TextStyle;", "visualTransformation", "Landroidx/compose/ui/text/input/VisualTransformation;", "onTextLayout", "Landroidx/compose/ui/text/TextLayoutResult;", "interactionSource", "Landroidx/compose/foundation/interaction/MutableInteractionSource;", "cursorBrush", "Landroidx/compose/ui/graphics/Brush;", "softWrap", "", "maxLines", "", "minLines", "imeOptions", "Landroidx/compose/ui/text/input/ImeOptions;", "keyboardActions", "Landroidx/compose/foundation/text/KeyboardActions;", "enabled", "readOnly", "decorationBox", "Lkotlin/Function0;", "Landroidx/compose/runtime/Composable;", "Lkotlin/ParameterName;", "name", "innerTextField", "(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZIILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V", "CoreTextFieldRootBox", "manager", "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;", "content", "(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V", "SelectionToolbarAndHandles", "show", "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZLandroidx/compose/runtime/Composer;I)V", "TextFieldCursorHandle", "(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V", "notifyFocusedRect", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/text/TextFieldState;", "offsetMapping", "Landroidx/compose/ui/text/input/OffsetMapping;", "notifyTextInputServiceOnFocusChange", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "onBlur", "tapToFocus", "focusRequester", "Landroidx/compose/ui/focus/FocusRequester;", "allowKeyboard", "bringSelectionEndIntoView", "Landroidx/compose/foundation/relocation/BringIntoViewRequester;", "textDelegate", "Landroidx/compose/foundation/text/TextDelegate;", "textLayoutResult", "(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextDelegate;Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/input/OffsetMapping;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "previewKeyEventToDeselectOnBack", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoreTextFieldKt {
    /* JADX WARN: Removed duplicated region for block: B:101:0x04ce  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0542  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0578  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0635  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0675 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x068a  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0740 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x07d4  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x07e7  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0854  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x07f0  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0783  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0487  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0299  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x02b8  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x02c8  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:175:0x02ee  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0303  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x031a  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0331  */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0316  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0310  */
    /* JADX WARN: Removed duplicated region for block: B:191:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:192:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x02f0  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:195:0x02e2  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x02da  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x02b4  */
    /* JADX WARN: Removed duplicated region for block: B:200:0x02a9  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x029e  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x01f1  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ea  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x087a  */
    /* JADX WARN: Removed duplicated region for block: B:70:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03eb A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x041b  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x046b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void CoreTextField(final androidx.compose.ui.text.input.TextFieldValue r46, final kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.input.TextFieldValue, kotlin.Unit> r47, androidx.compose.ui.Modifier r48, androidx.compose.ui.text.TextStyle r49, androidx.compose.ui.text.input.VisualTransformation r50, kotlin.jvm.functions.Function1<? super androidx.compose.ui.text.TextLayoutResult, kotlin.Unit> r51, androidx.compose.foundation.interaction.MutableInteractionSource r52, androidx.compose.ui.graphics.Brush r53, boolean r54, int r55, int r56, androidx.compose.ui.text.input.ImeOptions r57, androidx.compose.foundation.text.KeyboardActions r58, boolean r59, boolean r60, kotlin.jvm.functions.Function3<? super kotlin.jvm.functions.Function2<? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit>, ? super androidx.compose.runtime.Composer, ? super java.lang.Integer, kotlin.Unit> r61, androidx.compose.runtime.Composer r62, final int r63, final int r64, final int r65) {
        /*
            Method dump skipped, instructions count: 2199
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.CoreTextFieldKt.CoreTextField(androidx.compose.ui.text.input.TextFieldValue, kotlin.jvm.functions.Function1, androidx.compose.ui.Modifier, androidx.compose.ui.text.TextStyle, androidx.compose.ui.text.input.VisualTransformation, kotlin.jvm.functions.Function1, androidx.compose.foundation.interaction.MutableInteractionSource, androidx.compose.ui.graphics.Brush, boolean, int, int, androidx.compose.ui.text.input.ImeOptions, androidx.compose.foundation.text.KeyboardActions, boolean, boolean, kotlin.jvm.functions.Function3, androidx.compose.runtime.Composer, int, int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void CoreTextFieldRootBox(final Modifier modifier, final TextFieldSelectionManager textFieldSelectionManager, final Function2<? super Composer, ? super Integer, Unit> function2, Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-20551815);
        ComposerKt.sourceInformation(startRestartGroup, "C(CoreTextFieldRootBox)P(2,1)702@31477L95:CoreTextField.kt#423gt5");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-20551815, i, -1, "androidx.compose.foundation.text.CoreTextFieldRootBox (CoreTextField.kt:697)");
        }
        int i2 = (i & 14) | 384;
        startRestartGroup.startReplaceableGroup(733328855);
        ComposerKt.sourceInformation(startRestartGroup, "CC(Box)P(2,1,3)69@3214L67,70@3286L130:Box.kt#2w3rfo");
        int i3 = i2 >> 3;
        MeasurePolicy rememberBoxMeasurePolicy = BoxKt.rememberBoxMeasurePolicy(Alignment.INSTANCE.getTopStart(), true, startRestartGroup, (i3 & 112) | (i3 & 14));
        startRestartGroup.startReplaceableGroup(-1323940314);
        ComposerKt.sourceInformation(startRestartGroup, "CC(Layout)P(!1,2)77@3132L23,79@3222L420:Layout.kt#80mrfh");
        int currentCompositeKeyHash = ComposablesKt.getCurrentCompositeKeyHash(startRestartGroup, 0);
        CompositionLocalMap currentCompositionLocalMap = startRestartGroup.getCurrentCompositionLocalMap();
        Function0<ComposeUiNode> constructor = ComposeUiNode.INSTANCE.getConstructor();
        Function3<SkippableUpdater<ComposeUiNode>, Composer, Integer, Unit> modifierMaterializerOf = LayoutKt.modifierMaterializerOf(modifier);
        int i4 = ((((i2 << 3) & 112) << 9) & 7168) | 6;
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
        Updater.m2280setimpl(m2273constructorimpl, rememberBoxMeasurePolicy, ComposeUiNode.INSTANCE.getSetMeasurePolicy());
        Updater.m2280setimpl(m2273constructorimpl, currentCompositionLocalMap, ComposeUiNode.INSTANCE.getSetResolvedCompositionLocals());
        Function2<ComposeUiNode, Integer, Unit> setCompositeKeyHash = ComposeUiNode.INSTANCE.getSetCompositeKeyHash();
        if (m2273constructorimpl.getInserting() || !Intrinsics.areEqual(m2273constructorimpl.rememberedValue(), Integer.valueOf(currentCompositeKeyHash))) {
            m2273constructorimpl.updateRememberedValue(Integer.valueOf(currentCompositeKeyHash));
            m2273constructorimpl.apply(Integer.valueOf(currentCompositeKeyHash), setCompositeKeyHash);
        }
        modifierMaterializerOf.invoke(SkippableUpdater.m2264boximpl(SkippableUpdater.m2265constructorimpl(startRestartGroup)), startRestartGroup, Integer.valueOf((i4 >> 3) & 112));
        startRestartGroup.startReplaceableGroup(2058660585);
        ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1253629358, "C71@3331L9:Box.kt#2w3rfo");
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.INSTANCE;
        ComposerKt.sourceInformationMarkerStart(startRestartGroup, -1087270836, "C703@31533L33:CoreTextField.kt#423gt5");
        startRestartGroup.startReplaceableGroup(-1985516685);
        ComposerKt.sourceInformation(startRestartGroup, "CC(ContextMenuArea)P(1)29@1062L9:ContextMenu.android.kt#423gt5");
        function2.invoke(startRestartGroup, Integer.valueOf(((((i >> 3) & 112) | 8) >> 3) & 14));
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
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$CoreTextFieldRootBox$2
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
                CoreTextFieldKt.CoreTextFieldRootBox(Modifier.this, textFieldSelectionManager, function2, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    private static final Modifier previewKeyEventToDeselectOnBack(Modifier modifier, final TextFieldState textFieldState, final TextFieldSelectionManager textFieldSelectionManager) {
        return KeyInputModifierKt.onPreviewKeyEvent(modifier, new Function1<KeyEvent, Boolean>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$previewKeyEventToDeselectOnBack$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(KeyEvent keyEvent) {
                return m766invokeZmokQxo(keyEvent.m3614unboximpl());
            }

            /* renamed from: invoke-ZmokQxo, reason: not valid java name */
            public final Boolean m766invokeZmokQxo(android.view.KeyEvent keyEvent) {
                boolean z;
                Intrinsics.checkNotNullParameter(keyEvent, "keyEvent");
                if (TextFieldState.this.getHandleState() == HandleState.Selection && KeyEventHelpers_androidKt.m768cancelsTextSelectionZmokQxo(keyEvent)) {
                    z = true;
                    TextFieldSelectionManager.m951deselect_kEHs6E$foundation_release$default(textFieldSelectionManager, null, 1, null);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void tapToFocus(TextFieldState textFieldState, FocusRequester focusRequester, boolean z) {
        TextInputSession inputSession;
        if (!textFieldState.getHasFocus()) {
            focusRequester.requestFocus();
        } else {
            if (!z || (inputSession = textFieldState.getInputSession()) == null) {
                return;
            }
            inputSession.showSoftwareKeyboard();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyTextInputServiceOnFocusChange(TextInputService textInputService, TextFieldState textFieldState, TextFieldValue textFieldValue, ImeOptions imeOptions, OffsetMapping offsetMapping) {
        if (textFieldState.getHasFocus()) {
            textFieldState.setInputSession(TextFieldDelegate.INSTANCE.onFocus$foundation_release(textInputService, textFieldValue, textFieldState.getProcessor(), imeOptions, textFieldState.getOnValueChange(), textFieldState.getOnImeActionPerformed()));
            notifyFocusedRect(textFieldState, textFieldValue, offsetMapping);
        } else {
            onBlur(textFieldState);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onBlur(TextFieldState textFieldState) {
        TextInputSession inputSession = textFieldState.getInputSession();
        if (inputSession != null) {
            TextFieldDelegate.INSTANCE.onBlur$foundation_release(inputSession, textFieldState.getProcessor(), textFieldState.getOnValueChange());
        }
        textFieldState.setInputSession(null);
    }

    public static final Object bringSelectionEndIntoView(BringIntoViewRequester bringIntoViewRequester, TextFieldValue textFieldValue, TextDelegate textDelegate, TextLayoutResult textLayoutResult, OffsetMapping offsetMapping, Continuation<? super Unit> continuation) {
        Rect rect;
        int originalToTransformed = offsetMapping.originalToTransformed(TextRange.m4411getMaximpl(textFieldValue.getSelection()));
        if (originalToTransformed < textLayoutResult.getLayoutInput().getText().length()) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed);
        } else if (originalToTransformed != 0) {
            rect = textLayoutResult.getBoundingBox(originalToTransformed - 1);
        } else {
            rect = new Rect(0.0f, 0.0f, 1.0f, IntSize.m5042getHeightimpl(TextFieldDelegateKt.computeSizeForDefaultText$default(textDelegate.getStyle(), textDelegate.getDensity(), textDelegate.getFontFamilyResolver(), null, 0, 24, null)));
        }
        Object bringIntoView = bringIntoViewRequester.bringIntoView(rect, continuation);
        return bringIntoView == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? bringIntoView : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void SelectionToolbarAndHandles(final TextFieldSelectionManager textFieldSelectionManager, final boolean z, Composer composer, final int i) {
        TextLayoutResultProxy layoutResult;
        TextLayoutResult value;
        Composer startRestartGroup = composer.startRestartGroup(626339208);
        ComposerKt.sourceInformation(startRestartGroup, "C(SelectionToolbarAndHandles)1044@45268L202:CoreTextField.kt#423gt5");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(626339208, i, -1, "androidx.compose.foundation.text.SelectionToolbarAndHandles (CoreTextField.kt:1025)");
        }
        if (z) {
            TextFieldState state = textFieldSelectionManager.getState();
            TextLayoutResult textLayoutResult = null;
            if (state != null && (layoutResult = state.getLayoutResult()) != null && (value = layoutResult.getValue()) != null) {
                if (!(textFieldSelectionManager.getState() != null ? r3.getIsLayoutResultStale() : true)) {
                    textLayoutResult = value;
                }
            }
            if (textLayoutResult != null) {
                if (!TextRange.m4408getCollapsedimpl(textFieldSelectionManager.getValue$foundation_release().getSelection())) {
                    int originalToTransformed = textFieldSelectionManager.getOffsetMapping().originalToTransformed(TextRange.m4414getStartimpl(textFieldSelectionManager.getValue$foundation_release().getSelection()));
                    int originalToTransformed2 = textFieldSelectionManager.getOffsetMapping().originalToTransformed(TextRange.m4409getEndimpl(textFieldSelectionManager.getValue$foundation_release().getSelection()));
                    ResolvedTextDirection bidiRunDirection = textLayoutResult.getBidiRunDirection(originalToTransformed);
                    ResolvedTextDirection bidiRunDirection2 = textLayoutResult.getBidiRunDirection(Math.max(originalToTransformed2 - 1, 0));
                    startRestartGroup.startReplaceableGroup(-498389736);
                    ComposerKt.sourceInformation(startRestartGroup, "1037@44945L203");
                    TextFieldState state2 = textFieldSelectionManager.getState();
                    if (state2 != null && state2.getShowSelectionHandleStart()) {
                        TextFieldSelectionManagerKt.TextFieldSelectionHandle(true, bidiRunDirection, textFieldSelectionManager, startRestartGroup, 518);
                    }
                    startRestartGroup.endReplaceableGroup();
                    TextFieldState state3 = textFieldSelectionManager.getState();
                    if (state3 != null && state3.getShowSelectionHandleEnd()) {
                        TextFieldSelectionManagerKt.TextFieldSelectionHandle(false, bidiRunDirection2, textFieldSelectionManager, startRestartGroup, 518);
                    }
                }
                TextFieldState state4 = textFieldSelectionManager.getState();
                if (state4 != null) {
                    if (textFieldSelectionManager.isTextChanged$foundation_release()) {
                        state4.setShowFloatingToolbar(false);
                    }
                    if (state4.getHasFocus()) {
                        if (state4.getShowFloatingToolbar()) {
                            textFieldSelectionManager.showSelectionToolbar$foundation_release();
                        } else {
                            textFieldSelectionManager.hideSelectionToolbar$foundation_release();
                        }
                    }
                }
            }
        } else {
            textFieldSelectionManager.hideSelectionToolbar$foundation_release();
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$SelectionToolbarAndHandles$2
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

            public final void invoke(Composer composer2, int i2) {
                CoreTextFieldKt.SelectionToolbarAndHandles(TextFieldSelectionManager.this, z, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    public static final void TextFieldCursorHandle(final TextFieldSelectionManager manager, Composer composer, final int i) {
        Intrinsics.checkNotNullParameter(manager, "manager");
        Composer startRestartGroup = composer.startRestartGroup(-1436003720);
        ComposerKt.sourceInformation(startRestartGroup, "C(TextFieldCursorHandle)1070@46313L50,1071@46426L7,1078@46683L205,1072@46443L483:CoreTextField.kt#423gt5");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1436003720, i, -1, "androidx.compose.foundation.text.TextFieldCursorHandle (CoreTextField.kt:1068)");
        }
        TextFieldState state = manager.getState();
        if (state != null && state.getShowCursorHandle()) {
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed = startRestartGroup.changed(manager);
            Object rememberedValue = startRestartGroup.rememberedValue();
            if (changed || rememberedValue == Composer.INSTANCE.getEmpty()) {
                rememberedValue = manager.cursorDragObserver$foundation_release();
                startRestartGroup.updateRememberedValue(rememberedValue);
            }
            startRestartGroup.endReplaceableGroup();
            TextDragObserver textDragObserver = (TextDragObserver) rememberedValue;
            ProvidableCompositionLocal<Density> localDensity = CompositionLocalsKt.getLocalDensity();
            ComposerKt.sourceInformationMarkerStart(startRestartGroup, 2023513938, "CC:CompositionLocal.kt#9igjgp");
            Object consume = startRestartGroup.consume(localDensity);
            ComposerKt.sourceInformationMarkerEnd(startRestartGroup);
            final long m956getCursorPositiontuRUvjQ$foundation_release = manager.m956getCursorPositiontuRUvjQ$foundation_release((Density) consume);
            Modifier pointerInput = SuspendingPointerInputFilterKt.pointerInput(Modifier.INSTANCE, textDragObserver, new CoreTextFieldKt$TextFieldCursorHandle$1(textDragObserver, null));
            Offset m2389boximpl = Offset.m2389boximpl(m956getCursorPositiontuRUvjQ$foundation_release);
            startRestartGroup.startReplaceableGroup(1157296644);
            ComposerKt.sourceInformation(startRestartGroup, "CC(remember)P(1):Composables.kt#9igjgp");
            boolean changed2 = startRestartGroup.changed(m2389boximpl);
            Object rememberedValue2 = startRestartGroup.rememberedValue();
            if (changed2 || rememberedValue2 == Composer.INSTANCE.getEmpty()) {
                rememberedValue2 = (Function1) new Function1<SemanticsPropertyReceiver, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$2$1
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
                        semantics.set(SelectionHandlesKt.getSelectionHandleInfoKey(), new SelectionHandleInfo(Handle.Cursor, m956getCursorPositiontuRUvjQ$foundation_release, null));
                    }
                };
                startRestartGroup.updateRememberedValue(rememberedValue2);
            }
            startRestartGroup.endReplaceableGroup();
            AndroidCursorHandle_androidKt.m746CursorHandleULxng0E(m956getCursorPositiontuRUvjQ$foundation_release, SemanticsModifierKt.semantics$default(pointerInput, false, (Function1) rememberedValue2, 1, null), null, startRestartGroup, 384);
        }
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.foundation.text.CoreTextFieldKt$TextFieldCursorHandle$3
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

            public final void invoke(Composer composer2, int i2) {
                CoreTextFieldKt.TextFieldCursorHandle(TextFieldSelectionManager.this, composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void notifyFocusedRect(TextFieldState textFieldState, TextFieldValue textFieldValue, OffsetMapping offsetMapping) {
        Snapshot createNonObservableSnapshot = Snapshot.INSTANCE.createNonObservableSnapshot();
        try {
            Snapshot makeCurrent = createNonObservableSnapshot.makeCurrent();
            try {
                TextLayoutResultProxy layoutResult = textFieldState.getLayoutResult();
                if (layoutResult == null) {
                    return;
                }
                TextInputSession inputSession = textFieldState.getInputSession();
                if (inputSession == null) {
                    return;
                }
                LayoutCoordinates layoutCoordinates = textFieldState.getLayoutCoordinates();
                if (layoutCoordinates == null) {
                    return;
                }
                TextFieldDelegate.INSTANCE.notifyFocusedRect$foundation_release(textFieldValue, textFieldState.getTextDelegate(), layoutResult.getValue(), layoutCoordinates, inputSession, textFieldState.getHasFocus(), offsetMapping);
                Unit unit = Unit.INSTANCE;
            } finally {
                createNonObservableSnapshot.restoreCurrent(makeCurrent);
            }
        } finally {
            createNonObservableSnapshot.dispose();
        }
    }
}
