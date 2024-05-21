package androidx.compose.ui.window;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.ScopeUpdateScope;
import androidx.compose.runtime.State;
import androidx.compose.ui.R;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import io.sentry.protocol.Message;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: AndroidPopup.android.kt */
@Metadata(d1 = {"\u0000¾\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002BO\u0012\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\b\b\u0002\u0010\u0012\u001a\u00020\u0013¢\u0006\u0002\u0010\u0014J\r\u0010]\u001a\u00020\u0005H\u0017¢\u0006\u0002\u0010^J\u0010\u0010_\u001a\u00020\u00052\u0006\u0010`\u001a\u00020%H\u0002J\b\u0010a\u001a\u000200H\u0002J\u0006\u0010b\u001a\u00020\u0005J\u0010\u0010c\u001a\u00020\u00162\u0006\u0010d\u001a\u00020eH\u0016J5\u0010f\u001a\u00020\u00052\u0006\u0010g\u001a\u00020\u00162\u0006\u0010h\u001a\u00020%2\u0006\u0010i\u001a\u00020%2\u0006\u0010j\u001a\u00020%2\u0006\u0010k\u001a\u00020%H\u0010¢\u0006\u0002\blJ\u001d\u0010m\u001a\u00020\u00052\u0006\u0010n\u001a\u00020%2\u0006\u0010o\u001a\u00020%H\u0010¢\u0006\u0002\bpJ\u0012\u0010q\u001a\u00020\u00162\b\u0010d\u001a\u0004\u0018\u00010rH\u0016J\u0006\u0010s\u001a\u00020\u0005J\u0010\u0010t\u001a\u00020\u00052\u0006\u0010u\u001a\u00020\u0016H\u0002J&\u0010 \u001a\u00020\u00052\u0006\u0010v\u001a\u00020w2\u0011\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u001c¢\u0006\u0002\u0010xJ\u0010\u0010y\u001a\u00020\u00052\u0006\u0010z\u001a\u00020\u0016H\u0002J\u0010\u0010{\u001a\u00020\u00052\u0006\u0010|\u001a\u00020%H\u0016J\u0010\u0010}\u001a\u00020\u00052\u0006\u0010~\u001a\u00020\u007fH\u0002J\u0007\u0010\u0080\u0001\u001a\u00020\u0005J\u0011\u0010\u0081\u0001\u001a\u00020\u00052\u0006\u0010|\u001a\u00020?H\u0002J/\u0010\u0082\u0001\u001a\u00020\u00052\u000e\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010|\u001a\u00020?J\u000f\u0010\u0083\u0001\u001a\u00020\u0005H\u0001¢\u0006\u0003\b\u0084\u0001J\u000f\u0010\u0085\u0001\u001a\u00020\u00052\u0006\u00108\u001a\u000207J\u0007\u0010\u0086\u0001\u001a\u00020\u0005R\u001b\u0010\u0015\u001a\u00020\u00168FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000RA\u0010\u001d\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u001c2\u0011\u0010\u001b\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u001c8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u0014\u0010$\u001a\u00020%8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b&\u0010'R\u0014\u0010(\u001a\u00020%8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b)\u0010'R\u000e\u0010*\u001a\u00020+X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010,\u001a\u00020-X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010.R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010/\u001a\u0002008\u0000X\u0081\u0004¢\u0006\u000e\n\u0000\u0012\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R/\u00108\u001a\u0004\u0018\u0001072\b\u0010\u001b\u001a\u0004\u0018\u0001078B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b=\u0010#\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001a\u0010>\u001a\u00020?X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR8\u0010E\u001a\u0004\u0018\u00010D2\b\u0010\u001b\u001a\u0004\u0018\u00010D8F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\bJ\u0010#\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010K\u001a\u00020\u000fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bL\u0010M\"\u0004\bN\u0010OR\u000e\u0010P\u001a\u00020QX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010R\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016@RX\u0094\u000e¢\u0006\b\n\u0000\u001a\u0004\bS\u0010\u0018R\u0014\u0010T\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bU\u0010VR\u001a\u0010\b\u001a\u00020\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\u000e\u0010[\u001a\u00020\\X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006\u0087\u0001"}, d2 = {"Landroidx/compose/ui/window/PopupLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "onDismissRequest", "Lkotlin/Function0;", "", "properties", "Landroidx/compose/ui/window/PopupProperties;", "testTag", "", "composeView", "Landroid/view/View;", "density", "Landroidx/compose/ui/unit/Density;", "initialPositionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "popupId", "Ljava/util/UUID;", "popupLayoutHelper", "Landroidx/compose/ui/window/PopupLayoutHelper;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupProperties;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;Landroidx/compose/ui/window/PopupLayoutHelper;)V", "canCalculatePosition", "", "getCanCalculatePosition", "()Z", "canCalculatePosition$delegate", "Landroidx/compose/runtime/State;", "<set-?>", "Landroidx/compose/runtime/Composable;", "content", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "content$delegate", "Landroidx/compose/runtime/MutableState;", "displayHeight", "", "getDisplayHeight", "()I", "displayWidth", "getDisplayWidth", "locationOnScreen", "", "maxSupportedElevation", "Landroidx/compose/ui/unit/Dp;", "F", Message.JsonKeys.PARAMS, "Landroid/view/WindowManager$LayoutParams;", "getParams$ui_release$annotations", "()V", "getParams$ui_release", "()Landroid/view/WindowManager$LayoutParams;", "parentBounds", "Landroidx/compose/ui/unit/IntRect;", "Landroidx/compose/ui/layout/LayoutCoordinates;", "parentLayoutCoordinates", "getParentLayoutCoordinates", "()Landroidx/compose/ui/layout/LayoutCoordinates;", "setParentLayoutCoordinates", "(Landroidx/compose/ui/layout/LayoutCoordinates;)V", "parentLayoutCoordinates$delegate", "parentLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getParentLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setParentLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "Landroidx/compose/ui/unit/IntSize;", "popupContentSize", "getPopupContentSize-bOM6tXw", "()Landroidx/compose/ui/unit/IntSize;", "setPopupContentSize-fhxjrPA", "(Landroidx/compose/ui/unit/IntSize;)V", "popupContentSize$delegate", "positionProvider", "getPositionProvider", "()Landroidx/compose/ui/window/PopupPositionProvider;", "setPositionProvider", "(Landroidx/compose/ui/window/PopupPositionProvider;)V", "previousWindowVisibleFrame", "Landroid/graphics/Rect;", "shouldCreateCompositionOnAttachedToWindow", "getShouldCreateCompositionOnAttachedToWindow", "subCompositionView", "getSubCompositionView", "()Landroidx/compose/ui/platform/AbstractComposeView;", "getTestTag", "()Ljava/lang/String;", "setTestTag", "(Ljava/lang/String;)V", "windowManager", "Landroid/view/WindowManager;", "Content", "(Landroidx/compose/runtime/Composer;I)V", "applyNewFlags", "flags", "createLayoutParams", "dismiss", "dispatchKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "internalOnLayout", "changed", "left", "top", "right", "bottom", "internalOnLayout$ui_release", "internalOnMeasure", "widthMeasureSpec", "heightMeasureSpec", "internalOnMeasure$ui_release", "onTouchEvent", "Landroid/view/MotionEvent;", "pollForLocationOnScreenChange", "setClippingEnabled", "clippingEnabled", "parent", "Landroidx/compose/runtime/CompositionContext;", "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V", "setIsFocusable", "isFocusable", "setLayoutDirection", "layoutDirection", "setSecurePolicy", "securePolicy", "Landroidx/compose/ui/window/SecureFlagPolicy;", "show", "superSetLayoutDirection", "updateParameters", "updateParentBounds", "updateParentBounds$ui_release", "updateParentLayoutCoordinates", "updatePosition", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PopupLayout extends AbstractComposeView implements ViewRootForInspector {

    /* renamed from: canCalculatePosition$delegate, reason: from kotlin metadata */
    private final State canCalculatePosition;
    private final View composeView;

    /* renamed from: content$delegate, reason: from kotlin metadata */
    private final MutableState content;
    private final int[] locationOnScreen;
    private final float maxSupportedElevation;
    private Function0<Unit> onDismissRequest;
    private final WindowManager.LayoutParams params;
    private IntRect parentBounds;

    /* renamed from: parentLayoutCoordinates$delegate, reason: from kotlin metadata */
    private final MutableState parentLayoutCoordinates;
    private LayoutDirection parentLayoutDirection;

    /* renamed from: popupContentSize$delegate, reason: from kotlin metadata */
    private final MutableState popupContentSize;
    private final PopupLayoutHelper popupLayoutHelper;
    private PopupPositionProvider positionProvider;
    private final Rect previousWindowVisibleFrame;
    private PopupProperties properties;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    private String testTag;
    private final WindowManager windowManager;

    /* compiled from: AndroidPopup.android.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            try {
                iArr[LayoutDirection.Ltr.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LayoutDirection.Rtl.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static /* synthetic */ void getParams$ui_release$annotations() {
    }

    /* renamed from: getParams$ui_release, reason: from getter */
    public final WindowManager.LayoutParams getParams() {
        return this.params;
    }

    public final LayoutDirection getParentLayoutDirection() {
        return this.parentLayoutDirection;
    }

    public final PopupPositionProvider getPositionProvider() {
        return this.positionProvider;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    public final String getTestTag() {
        return this.testTag;
    }

    @Override // android.view.View
    public void setLayoutDirection(int layoutDirection) {
    }

    public final void setParentLayoutDirection(LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(layoutDirection, "<set-?>");
        this.parentLayoutDirection = layoutDirection;
    }

    public final void setPositionProvider(PopupPositionProvider popupPositionProvider) {
        Intrinsics.checkNotNullParameter(popupPositionProvider, "<set-?>");
        this.positionProvider = popupPositionProvider;
    }

    public final void setTestTag(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.testTag = str;
    }

    public /* synthetic */ PopupLayout(Function0 function0, PopupProperties popupProperties, String str, View view, Density density, PopupPositionProvider popupPositionProvider, UUID uuid, PopupLayoutHelper popupLayoutHelper, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function0, popupProperties, str, view, density, popupPositionProvider, uuid, (i & 128) != 0 ? new PopupLayoutHelperImpl29() : popupLayoutHelper);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PopupLayout(kotlin.jvm.functions.Function0<kotlin.Unit> r8, androidx.compose.ui.window.PopupProperties r9, java.lang.String r10, android.view.View r11, androidx.compose.ui.unit.Density r12, androidx.compose.ui.window.PopupPositionProvider r13, java.util.UUID r14, androidx.compose.ui.window.PopupLayoutHelper r15) {
        /*
            r7 = this;
            java.lang.String r0 = "properties"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "testTag"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "composeView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "density"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "initialPositionProvider"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            java.lang.String r0 = "popupId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r14, r0)
            java.lang.String r0 = "popupLayoutHelper"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r15, r0)
            android.content.Context r2 = r11.getContext()
            java.lang.String r0 = "composeView.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.onDismissRequest = r8
            r7.properties = r9
            r7.testTag = r10
            r7.composeView = r11
            r7.popupLayoutHelper = r15
            android.content.Context r8 = r11.getContext()
            java.lang.String r9 = "window"
            java.lang.Object r8 = r8.getSystemService(r9)
            java.lang.String r9 = "null cannot be cast to non-null type android.view.WindowManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r9)
            android.view.WindowManager r8 = (android.view.WindowManager) r8
            r7.windowManager = r8
            android.view.WindowManager$LayoutParams r8 = r7.createLayoutParams()
            r7.params = r8
            r7.positionProvider = r13
            androidx.compose.ui.unit.LayoutDirection r8 = androidx.compose.ui.unit.LayoutDirection.Ltr
            r7.parentLayoutDirection = r8
            r8 = 0
            r9 = 2
            androidx.compose.runtime.MutableState r10 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.popupContentSize = r10
            androidx.compose.runtime.MutableState r10 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.parentLayoutCoordinates = r10
            androidx.compose.ui.window.PopupLayout$canCalculatePosition$2 r10 = new androidx.compose.ui.window.PopupLayout$canCalculatePosition$2
            r10.<init>()
            kotlin.jvm.functions.Function0 r10 = (kotlin.jvm.functions.Function0) r10
            androidx.compose.runtime.State r10 = androidx.compose.runtime.SnapshotStateKt.derivedStateOf(r10)
            r7.canCalculatePosition = r10
            r10 = 8
            float r10 = (float) r10
            float r10 = androidx.compose.ui.unit.Dp.m4883constructorimpl(r10)
            r7.maxSupportedElevation = r10
            android.graphics.Rect r13 = new android.graphics.Rect
            r13.<init>()
            r7.previousWindowVisibleFrame = r13
            r13 = 16908290(0x1020002, float:2.3877235E-38)
            r7.setId(r13)
            r13 = r7
            android.view.View r13 = (android.view.View) r13
            androidx.lifecycle.LifecycleOwner r15 = androidx.lifecycle.ViewTreeLifecycleOwner.get(r11)
            androidx.lifecycle.ViewTreeLifecycleOwner.set(r13, r15)
            androidx.lifecycle.ViewModelStoreOwner r15 = androidx.lifecycle.ViewTreeViewModelStoreOwner.get(r11)
            androidx.lifecycle.ViewTreeViewModelStoreOwner.set(r13, r15)
            androidx.savedstate.SavedStateRegistryOwner r11 = androidx.savedstate.ViewTreeSavedStateRegistryOwner.get(r11)
            androidx.savedstate.ViewTreeSavedStateRegistryOwner.set(r13, r11)
            int r11 = androidx.compose.ui.R.id.compose_view_saveable_id_tag
            java.lang.StringBuilder r13 = new java.lang.StringBuilder
            java.lang.String r15 = "Popup:"
            r13.<init>(r15)
            java.lang.StringBuilder r13 = r13.append(r14)
            java.lang.String r13 = r13.toString()
            r7.setTag(r11, r13)
            r11 = 0
            r7.setClipChildren(r11)
            float r10 = r12.mo335toPx0680j_4(r10)
            r7.setElevation(r10)
            androidx.compose.ui.window.PopupLayout$2 r10 = new androidx.compose.ui.window.PopupLayout$2
            r10.<init>()
            android.view.ViewOutlineProvider r10 = (android.view.ViewOutlineProvider) r10
            r7.setOutlineProvider(r10)
            androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt r10 = androidx.compose.ui.window.ComposableSingletons$AndroidPopup_androidKt.INSTANCE
            kotlin.jvm.functions.Function2 r10 = r10.m5127getLambda1$ui_release()
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r10, r8, r9, r8)
            r7.content = r8
            int[] r8 = new int[r9]
            r7.locationOnScreen = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.window.PopupLayout.<init>(kotlin.jvm.functions.Function0, androidx.compose.ui.window.PopupProperties, java.lang.String, android.view.View, androidx.compose.ui.unit.Density, androidx.compose.ui.window.PopupPositionProvider, java.util.UUID, androidx.compose.ui.window.PopupLayoutHelper):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m5128getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LayoutCoordinates getParentLayoutCoordinates() {
        return (LayoutCoordinates) this.parentLayoutCoordinates.getValue();
    }

    @Override // androidx.compose.ui.platform.ViewRootForInspector
    public AbstractComposeView getSubCompositionView() {
        return this;
    }

    private final Function2<Composer, Integer, Unit> getContent() {
        return (Function2) this.content.getValue();
    }

    public final void show() {
        this.windowManager.addView(this, this.params);
    }

    public final void setContent(CompositionContext parent, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        Intrinsics.checkNotNullParameter(content, "content");
        setParentCompositionContext(parent);
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-857613600);
        ComposerKt.sourceInformation(startRestartGroup, "C(Content)464@19133L9:AndroidPopup.android.kt#2oxthz");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-857613600, i, -1, "androidx.compose.ui.window.PopupLayout.Content (AndroidPopup.android.kt:463)");
        }
        getContent().invoke(startRestartGroup, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.ui.window.PopupLayout$Content$4
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
                PopupLayout.this.Content(composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnMeasure$ui_release(int widthMeasureSpec, int heightMeasureSpec) {
        if (this.properties.getUsePlatformDefaultWidth()) {
            super.internalOnMeasure$ui_release(widthMeasureSpec, heightMeasureSpec);
        } else {
            super.internalOnMeasure$ui_release(View.MeasureSpec.makeMeasureSpec(getDisplayWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(getDisplayHeight(), Integer.MIN_VALUE));
        }
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void internalOnLayout$ui_release(boolean changed, int left, int top, int right, int bottom) {
        View childAt;
        super.internalOnLayout$ui_release(changed, left, top, right, bottom);
        if (this.properties.getUsePlatformDefaultWidth() || (childAt = getChildAt(0)) == null) {
            return;
        }
        this.params.width = childAt.getMeasuredWidth();
        this.params.height = childAt.getMeasuredHeight();
        this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
    }

    private final int getDisplayWidth() {
        return MathKt.roundToInt(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final int getDisplayHeight() {
        return MathKt.roundToInt(getContext().getResources().getConfiguration().screenHeightDp * getContext().getResources().getDisplayMetrics().density);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() == 4 && this.properties.getDismissOnBackPress()) {
            if (getKeyDispatcherState() == null) {
                return super.dispatchKeyEvent(event);
            }
            if (event.getAction() == 0 && event.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState2 = getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.startTracking(event, this);
                }
                return true;
            }
            if (event.getAction() == 1 && (keyDispatcherState = getKeyDispatcherState()) != null && keyDispatcherState.isTracking(event) && !event.isCanceled()) {
                Function0<Unit> function0 = this.onDismissRequest;
                if (function0 != null) {
                    function0.invoke();
                }
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    private final void setIsFocusable(boolean isFocusable) {
        int i;
        if (!isFocusable) {
            i = this.params.flags | 8;
        } else {
            i = this.params.flags & (-9);
        }
        applyNewFlags(i);
    }

    private final void setSecurePolicy(SecureFlagPolicy securePolicy) {
        int i;
        if (SecureFlagPolicy_androidKt.shouldApplySecureFlag(securePolicy, AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView))) {
            i = this.params.flags | 8192;
        } else {
            i = this.params.flags & (-8193);
        }
        applyNewFlags(i);
    }

    private final void setClippingEnabled(boolean clippingEnabled) {
        int i;
        if (clippingEnabled) {
            i = this.params.flags & (-513);
        } else {
            i = this.params.flags | 512;
        }
        applyNewFlags(i);
    }

    public final void updateParameters(Function0<Unit> onDismissRequest, PopupProperties properties, String testTag, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(testTag, "testTag");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.onDismissRequest = onDismissRequest;
        if (properties.getUsePlatformDefaultWidth() && !this.properties.getUsePlatformDefaultWidth()) {
            this.params.width = -2;
            this.params.height = -2;
            this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
        }
        this.properties = properties;
        this.testTag = testTag;
        setIsFocusable(properties.getFocusable());
        setSecurePolicy(properties.getSecurePolicy());
        setClippingEnabled(properties.getClippingEnabled());
        superSetLayoutDirection(layoutDirection);
    }

    private final void applyNewFlags(int flags) {
        this.params.flags = flags;
        this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
    }

    public final void updateParentLayoutCoordinates(LayoutCoordinates parentLayoutCoordinates) {
        Intrinsics.checkNotNullParameter(parentLayoutCoordinates, "parentLayoutCoordinates");
        setParentLayoutCoordinates(parentLayoutCoordinates);
        updateParentBounds$ui_release();
    }

    public final void pollForLocationOnScreenChange() {
        int[] iArr = this.locationOnScreen;
        int i = iArr[0];
        int i2 = iArr[1];
        this.composeView.getLocationOnScreen(iArr);
        int[] iArr2 = this.locationOnScreen;
        if (i == iArr2[0] && i2 == iArr2[1]) {
            return;
        }
        updateParentBounds$ui_release();
    }

    public final void updateParentBounds$ui_release() {
        LayoutCoordinates parentLayoutCoordinates = getParentLayoutCoordinates();
        if (parentLayoutCoordinates == null) {
            return;
        }
        long mo3883getSizeYbymL2g = parentLayoutCoordinates.mo3883getSizeYbymL2g();
        long positionInWindow = LayoutCoordinatesKt.positionInWindow(parentLayoutCoordinates);
        IntRect m5033IntRectVbeCjmY = IntRectKt.m5033IntRectVbeCjmY(IntOffsetKt.IntOffset(MathKt.roundToInt(Offset.m2400getXimpl(positionInWindow)), MathKt.roundToInt(Offset.m2401getYimpl(positionInWindow))), mo3883getSizeYbymL2g);
        if (Intrinsics.areEqual(m5033IntRectVbeCjmY, this.parentBounds)) {
            return;
        }
        this.parentBounds = m5033IntRectVbeCjmY;
        updatePosition();
    }

    public final void updatePosition() {
        IntSize m5128getPopupContentSizebOM6tXw;
        IntRect intRect = this.parentBounds;
        if (intRect == null || (m5128getPopupContentSizebOM6tXw = m5128getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        long packedValue = m5128getPopupContentSizebOM6tXw.getPackedValue();
        Rect rect = this.previousWindowVisibleFrame;
        this.popupLayoutHelper.getWindowVisibleDisplayFrame(this.composeView, rect);
        IntRect access$toIntBounds = AndroidPopup_androidKt.access$toIntBounds(rect);
        long IntSize = IntSizeKt.IntSize(access$toIntBounds.getWidth(), access$toIntBounds.getHeight());
        long mo884calculatePositionllwVHH4 = this.positionProvider.mo884calculatePositionllwVHH4(intRect, IntSize, this.parentLayoutDirection, packedValue);
        this.params.x = IntOffset.m5001getXimpl(mo884calculatePositionllwVHH4);
        this.params.y = IntOffset.m5002getYimpl(mo884calculatePositionllwVHH4);
        if (this.properties.getExcludeFromSystemGesture()) {
            this.popupLayoutHelper.setGestureExclusionRects(this, IntSize.m5043getWidthimpl(IntSize), IntSize.m5042getHeightimpl(IntSize));
        }
        this.popupLayoutHelper.updateViewLayout(this.windowManager, this, this.params);
    }

    public final void dismiss() {
        PopupLayout popupLayout = this;
        ViewTreeLifecycleOwner.set(popupLayout, null);
        this.windowManager.removeViewImmediate(popupLayout);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        if (!this.properties.getDismissOnClickOutside()) {
            return super.onTouchEvent(event);
        }
        if (event != null && event.getAction() == 0 && (event.getX() < 0.0f || event.getX() >= getWidth() || event.getY() < 0.0f || event.getY() >= getHeight())) {
            Function0<Unit> function0 = this.onDismissRequest;
            if (function0 != null) {
                function0.invoke();
            }
            return true;
        }
        if (event == null || event.getAction() != 4) {
            return super.onTouchEvent(event);
        }
        Function0<Unit> function02 = this.onDismissRequest;
        if (function02 != null) {
            function02.invoke();
        }
        return true;
    }

    private final void superSetLayoutDirection(LayoutDirection layoutDirection) {
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        super.setLayoutDirection(i2);
    }

    private final WindowManager.LayoutParams createLayoutParams() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        layoutParams.gravity = 8388659;
        layoutParams.flags &= -8552473;
        layoutParams.flags |= 262144;
        layoutParams.type = 1002;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(R.string.default_popup_window_title));
        return layoutParams;
    }

    /* renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m5129setPopupContentSizefhxjrPA(IntSize intSize) {
        this.popupContentSize.setValue(intSize);
    }

    private final void setParentLayoutCoordinates(LayoutCoordinates layoutCoordinates) {
        this.parentLayoutCoordinates.setValue(layoutCoordinates);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition.getValue()).booleanValue();
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.content.setValue(function2);
    }
}
