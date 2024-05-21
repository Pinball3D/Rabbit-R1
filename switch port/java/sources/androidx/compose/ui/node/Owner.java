package androidx.compose.ui.node;

import android.view.KeyEvent;
import androidx.compose.ui.autofill.Autofill;
import androidx.compose.ui.autofill.AutofillTree;
import androidx.compose.ui.focus.FocusDirection;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.hapticfeedback.HapticFeedback;
import androidx.compose.ui.input.InputModeManager;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.modifier.ModifierLocalManager;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.ClipboardManager;
import androidx.compose.ui.platform.TextToolbar;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.platform.WindowInfo;
import androidx.compose.ui.text.font.Font;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.input.PlatformTextInputPluginRegistry;
import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: Owner.kt */
@Metadata(d1 = {"\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\b`\u0018\u0000 \u009d\u00012\u00020\u0001:\u0004\u009d\u0001\u009e\u0001J\u001d\u0010n\u001a\u00020o2\u0006\u0010p\u001a\u00020oH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bq\u0010rJ\u001d\u0010s\u001a\u00020o2\u0006\u0010t\u001a\u00020oH&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0004\bu\u0010rJ*\u0010v\u001a\u00020w2\u0012\u0010x\u001a\u000e\u0012\u0004\u0012\u00020z\u0012\u0004\u0012\u00020{0y2\f\u0010|\u001a\b\u0012\u0004\u0012\u00020{0}H&J\u001b\u0010~\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\b\u0002\u0010\u0080\u0001\u001a\u00020TH&J%\u0010\u0081\u0001\u001a\u0005\u0018\u00010\u0082\u00012\b\u0010\u0083\u0001\u001a\u00030\u0084\u0001H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J*\u0010\u0087\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\b\u0010\u0088\u0001\u001a\u00030\u0089\u0001H&ø\u0001\u0000ø\u0001\u0001¢\u0006\u0006\b\u008a\u0001\u0010\u008b\u0001J\u0014\u0010\u0087\u0001\u001a\u00020{2\t\b\u0002\u0010\u008c\u0001\u001a\u00020TH&J\u0012\u0010\u008d\u0001\u001a\u00020{2\u0007\u0010\u008e\u0001\u001a\u00020HH&J\u0012\u0010\u008f\u0001\u001a\u00020{2\u0007\u0010\u008e\u0001\u001a\u00020HH&J\t\u0010\u0090\u0001\u001a\u00020{H&J\u0011\u0010\u0091\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020HH&J2\u0010\u0092\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\b\u0002\u0010\u0080\u0001\u001a\u00020T2\t\b\u0002\u0010\u0093\u0001\u001a\u00020T2\t\b\u0002\u0010\u0094\u0001\u001a\u00020TH&J'\u0010\u0095\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020H2\t\b\u0002\u0010\u0080\u0001\u001a\u00020T2\t\b\u0002\u0010\u0093\u0001\u001a\u00020TH&J\t\u0010\u0096\u0001\u001a\u00020{H&J\u0018\u0010\u0097\u0001\u001a\u00020{2\r\u0010\u0098\u0001\u001a\b\u0012\u0004\u0012\u00020{0}H&J\u0013\u0010\u0099\u0001\u001a\u00020{2\b\u0010\u0098\u0001\u001a\u00030\u009a\u0001H&J\t\u0010\u009b\u0001\u001a\u00020TH&J\u0011\u0010\u009c\u0001\u001a\u00020{2\u0006\u0010\u007f\u001a\u00020HH&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u00078gX§\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\r8gX§\u0004¢\u0006\f\u0012\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u00020\u0012X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0012\u0010\u0015\u001a\u00020\u0016X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0012\u0010\u0019\u001a\u00020\u001aX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0012\u0010\u001d\u001a\u00020\u001eX¦\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 R\u0012\u0010!\u001a\u00020\"X¦\u0004¢\u0006\u0006\u001a\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020&8&X§\u0004¢\u0006\f\u0012\u0004\b'\u0010\t\u001a\u0004\b(\u0010)R\u0012\u0010*\u001a\u00020+X¦\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-R\u0012\u0010.\u001a\u00020/X¦\u0004¢\u0006\u0006\u001a\u0004\b0\u00101R\u0012\u00102\u001a\u000203X¦\u0004¢\u0006\u0006\u001a\u0004\b4\u00105R\u0012\u00106\u001a\u000207X¦\u0004¢\u0006\u0006\u001a\u0004\b8\u00109R\u0012\u0010:\u001a\u00020;X¦\u0004¢\u0006\u0006\u001a\u0004\b<\u0010=R\u0018\u0010>\u001a\u00020?X¦\u0004¢\u0006\f\u0012\u0004\b@\u0010\t\u001a\u0004\bA\u0010BR\u0012\u0010C\u001a\u00020DX¦\u0004¢\u0006\u0006\u001a\u0004\bE\u0010FR\u0012\u0010G\u001a\u00020HX¦\u0004¢\u0006\u0006\u001a\u0004\bI\u0010JR\u0012\u0010K\u001a\u00020LX¦\u0004¢\u0006\u0006\u001a\u0004\bM\u0010NR\u0012\u0010O\u001a\u00020PX¦\u0004¢\u0006\u0006\u001a\u0004\bQ\u0010RR\"\u0010U\u001a\u00020T2\u0006\u0010S\u001a\u00020T@gX¦\u000e¢\u0006\f\u001a\u0004\bV\u0010W\"\u0004\bX\u0010YR\u0012\u0010Z\u001a\u00020[X¦\u0004¢\u0006\u0006\u001a\u0004\b\\\u0010]R\u0012\u0010^\u001a\u00020_X¦\u0004¢\u0006\u0006\u001a\u0004\b`\u0010aR\u0012\u0010b\u001a\u00020cX¦\u0004¢\u0006\u0006\u001a\u0004\bd\u0010eR\u0012\u0010f\u001a\u00020gX¦\u0004¢\u0006\u0006\u001a\u0004\bh\u0010iR\u0012\u0010j\u001a\u00020kX¦\u0004¢\u0006\u0006\u001a\u0004\bl\u0010mø\u0001\u0002\u0082\u0002\u0011\n\u0005\b¡\u001e0\u0001\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u009f\u0001À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/Owner;", "", "accessibilityManager", "Landroidx/compose/ui/platform/AccessibilityManager;", "getAccessibilityManager", "()Landroidx/compose/ui/platform/AccessibilityManager;", "autofill", "Landroidx/compose/ui/autofill/Autofill;", "getAutofill$annotations", "()V", "getAutofill", "()Landroidx/compose/ui/autofill/Autofill;", "autofillTree", "Landroidx/compose/ui/autofill/AutofillTree;", "getAutofillTree$annotations", "getAutofillTree", "()Landroidx/compose/ui/autofill/AutofillTree;", "clipboardManager", "Landroidx/compose/ui/platform/ClipboardManager;", "getClipboardManager", "()Landroidx/compose/ui/platform/ClipboardManager;", "coroutineContext", "Lkotlin/coroutines/CoroutineContext;", "getCoroutineContext", "()Lkotlin/coroutines/CoroutineContext;", "density", "Landroidx/compose/ui/unit/Density;", "getDensity", "()Landroidx/compose/ui/unit/Density;", "focusOwner", "Landroidx/compose/ui/focus/FocusOwner;", "getFocusOwner", "()Landroidx/compose/ui/focus/FocusOwner;", "fontFamilyResolver", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "getFontFamilyResolver", "()Landroidx/compose/ui/text/font/FontFamily$Resolver;", "fontLoader", "Landroidx/compose/ui/text/font/Font$ResourceLoader;", "getFontLoader$annotations", "getFontLoader", "()Landroidx/compose/ui/text/font/Font$ResourceLoader;", "hapticFeedBack", "Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "getHapticFeedBack", "()Landroidx/compose/ui/hapticfeedback/HapticFeedback;", "inputModeManager", "Landroidx/compose/ui/input/InputModeManager;", "getInputModeManager", "()Landroidx/compose/ui/input/InputModeManager;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "measureIteration", "", "getMeasureIteration", "()J", "modifierLocalManager", "Landroidx/compose/ui/modifier/ModifierLocalManager;", "getModifierLocalManager", "()Landroidx/compose/ui/modifier/ModifierLocalManager;", "platformTextInputPluginRegistry", "Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;", "getPlatformTextInputPluginRegistry$annotations", "getPlatformTextInputPluginRegistry", "()Landroidx/compose/ui/text/input/PlatformTextInputPluginRegistry;", "pointerIconService", "Landroidx/compose/ui/input/pointer/PointerIconService;", "getPointerIconService", "()Landroidx/compose/ui/input/pointer/PointerIconService;", "root", "Landroidx/compose/ui/node/LayoutNode;", "getRoot", "()Landroidx/compose/ui/node/LayoutNode;", "rootForTest", "Landroidx/compose/ui/node/RootForTest;", "getRootForTest", "()Landroidx/compose/ui/node/RootForTest;", "sharedDrawScope", "Landroidx/compose/ui/node/LayoutNodeDrawScope;", "getSharedDrawScope", "()Landroidx/compose/ui/node/LayoutNodeDrawScope;", "<set-?>", "", "showLayoutBounds", "getShowLayoutBounds", "()Z", "setShowLayoutBounds", "(Z)V", "snapshotObserver", "Landroidx/compose/ui/node/OwnerSnapshotObserver;", "getSnapshotObserver", "()Landroidx/compose/ui/node/OwnerSnapshotObserver;", "textInputService", "Landroidx/compose/ui/text/input/TextInputService;", "getTextInputService", "()Landroidx/compose/ui/text/input/TextInputService;", "textToolbar", "Landroidx/compose/ui/platform/TextToolbar;", "getTextToolbar", "()Landroidx/compose/ui/platform/TextToolbar;", "viewConfiguration", "Landroidx/compose/ui/platform/ViewConfiguration;", "getViewConfiguration", "()Landroidx/compose/ui/platform/ViewConfiguration;", "windowInfo", "Landroidx/compose/ui/platform/WindowInfo;", "getWindowInfo", "()Landroidx/compose/ui/platform/WindowInfo;", "calculateLocalPosition", "Landroidx/compose/ui/geometry/Offset;", "positionInWindow", "calculateLocalPosition-MK-Hz9U", "(J)J", "calculatePositionInWindow", "localPosition", "calculatePositionInWindow-MK-Hz9U", "createLayer", "Landroidx/compose/ui/node/OwnedLayer;", "drawBlock", "Lkotlin/Function1;", "Landroidx/compose/ui/graphics/Canvas;", "", "invalidateParentLayer", "Lkotlin/Function0;", "forceMeasureTheSubtree", "layoutNode", "affectsLookahead", "getFocusDirection", "Landroidx/compose/ui/focus/FocusDirection;", "keyEvent", "Landroidx/compose/ui/input/key/KeyEvent;", "getFocusDirection-P8AzH3I", "(Landroid/view/KeyEvent;)Landroidx/compose/ui/focus/FocusDirection;", "measureAndLayout", "constraints", "Landroidx/compose/ui/unit/Constraints;", "measureAndLayout-0kLqBqw", "(Landroidx/compose/ui/node/LayoutNode;J)V", "sendPointerUpdate", "onAttach", "node", "onDetach", "onEndApplyChanges", "onLayoutChange", "onRequestMeasure", "forceRequest", "scheduleMeasureAndLayout", "onRequestRelayout", "onSemanticsChange", "registerOnEndApplyChangesListener", "listener", "registerOnLayoutCompletedListener", "Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;", "requestFocus", "requestOnPositionedCallback", "Companion", "OnLayoutCompletedListener", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface Owner {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;

    /* compiled from: Owner.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0004À\u0006\u0001"}, d2 = {"Landroidx/compose/ui/node/Owner$OnLayoutCompletedListener;", "", "onLayoutComplete", "", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnLayoutCompletedListener {
        void onLayoutComplete();
    }

    static /* synthetic */ void getAutofill$annotations() {
    }

    static /* synthetic */ void getAutofillTree$annotations() {
    }

    @Deprecated(message = "fontLoader is deprecated, use fontFamilyResolver", replaceWith = @ReplaceWith(expression = "fontFamilyResolver", imports = {}))
    static /* synthetic */ void getFontLoader$annotations() {
    }

    static /* synthetic */ void getPlatformTextInputPluginRegistry$annotations() {
    }

    /* renamed from: calculateLocalPosition-MK-Hz9U, reason: not valid java name */
    long mo4143calculateLocalPositionMKHz9U(long positionInWindow);

    /* renamed from: calculatePositionInWindow-MK-Hz9U, reason: not valid java name */
    long mo4144calculatePositionInWindowMKHz9U(long localPosition);

    OwnedLayer createLayer(Function1<? super Canvas, Unit> drawBlock, Function0<Unit> invalidateParentLayer);

    void forceMeasureTheSubtree(LayoutNode layoutNode, boolean affectsLookahead);

    AccessibilityManager getAccessibilityManager();

    Autofill getAutofill();

    AutofillTree getAutofillTree();

    ClipboardManager getClipboardManager();

    CoroutineContext getCoroutineContext();

    Density getDensity();

    /* renamed from: getFocusDirection-P8AzH3I, reason: not valid java name */
    FocusDirection mo4145getFocusDirectionP8AzH3I(KeyEvent keyEvent);

    FocusOwner getFocusOwner();

    FontFamily.Resolver getFontFamilyResolver();

    Font.ResourceLoader getFontLoader();

    HapticFeedback getHapticFeedBack();

    InputModeManager getInputModeManager();

    LayoutDirection getLayoutDirection();

    long getMeasureIteration();

    ModifierLocalManager getModifierLocalManager();

    PlatformTextInputPluginRegistry getPlatformTextInputPluginRegistry();

    PointerIconService getPointerIconService();

    LayoutNode getRoot();

    RootForTest getRootForTest();

    LayoutNodeDrawScope getSharedDrawScope();

    boolean getShowLayoutBounds();

    OwnerSnapshotObserver getSnapshotObserver();

    TextInputService getTextInputService();

    TextToolbar getTextToolbar();

    ViewConfiguration getViewConfiguration();

    WindowInfo getWindowInfo();

    void measureAndLayout(boolean sendPointerUpdate);

    /* renamed from: measureAndLayout-0kLqBqw, reason: not valid java name */
    void mo4146measureAndLayout0kLqBqw(LayoutNode layoutNode, long constraints);

    void onAttach(LayoutNode node);

    void onDetach(LayoutNode node);

    void onEndApplyChanges();

    void onLayoutChange(LayoutNode layoutNode);

    void onRequestMeasure(LayoutNode layoutNode, boolean affectsLookahead, boolean forceRequest, boolean scheduleMeasureAndLayout);

    void onRequestRelayout(LayoutNode layoutNode, boolean affectsLookahead, boolean forceRequest);

    void onSemanticsChange();

    void registerOnEndApplyChangesListener(Function0<Unit> listener);

    void registerOnLayoutCompletedListener(OnLayoutCompletedListener listener);

    boolean requestFocus();

    void requestOnPositionedCallback(LayoutNode layoutNode);

    void setShowLayoutBounds(boolean z);

    static /* synthetic */ void onRequestMeasure$default(Owner owner, LayoutNode layoutNode, boolean z, boolean z2, boolean z3, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestMeasure");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        if ((i & 8) != 0) {
            z3 = true;
        }
        owner.onRequestMeasure(layoutNode, z, z2, z3);
    }

    static /* synthetic */ void onRequestRelayout$default(Owner owner, LayoutNode layoutNode, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onRequestRelayout");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        owner.onRequestRelayout(layoutNode, z, z2);
    }

    static /* synthetic */ void measureAndLayout$default(Owner owner, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: measureAndLayout");
        }
        if ((i & 1) != 0) {
            z = true;
        }
        owner.measureAndLayout(z);
    }

    static /* synthetic */ void forceMeasureTheSubtree$default(Owner owner, LayoutNode layoutNode, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: forceMeasureTheSubtree");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        owner.forceMeasureTheSubtree(layoutNode, z);
    }

    /* compiled from: Owner.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Landroidx/compose/ui/node/Owner$Companion;", "", "()V", "enableExtraAssertions", "", "getEnableExtraAssertions", "()Z", "setEnableExtraAssertions", "(Z)V", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static boolean enableExtraAssertions;

        public final boolean getEnableExtraAssertions() {
            return enableExtraAssertions;
        }

        public final void setEnableExtraAssertions(boolean z) {
            enableExtraAssertions = z;
        }

        private Companion() {
        }
    }
}
