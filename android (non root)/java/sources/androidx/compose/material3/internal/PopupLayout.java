package androidx.compose.material3.internal;

import android.graphics.Rect;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
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
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import io.sentry.protocol.Message;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExposedDropdownMenuPopup.kt */
@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B=\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J\r\u0010P\u001a\u00020\u0006H\u0017¢\u0006\u0002\u0010QJ\b\u0010R\u001a\u00020)H\u0002J\u0006\u0010S\u001a\u00020\u0006J\u0010\u0010T\u001a\u00020\u00132\u0006\u0010U\u001a\u00020VH\u0016J\b\u0010W\u001a\u00020\u0006H\u0016J\u0012\u0010X\u001a\u00020\u00132\b\u0010U\u001a\u0004\u0018\u00010YH\u0016J&\u0010\u001d\u001a\u00020\u00062\u0006\u0010Z\u001a\u00020[2\u0011\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u0019¢\u0006\u0002\u0010\\J\u0010\u0010]\u001a\u00020\u00062\u0006\u0010^\u001a\u00020_H\u0016J\u0006\u0010`\u001a\u00020\u0006J\u0010\u0010a\u001a\u00020\u00062\u0006\u0010^\u001a\u000201H\u0002J&\u0010b\u001a\u00020\u00062\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010^\u001a\u000201J\u0006\u0010c\u001a\u00020\u0006J\f\u0010d\u001a\u00020$*\u00020CH\u0002R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000RA\u0010\u001a\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u00192\u0011\u0010\u0018\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\u00198B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR%\u0010!\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010#\u0012\u0004\u0012\u00020$\u0012\u0004\u0012\u00020\u00130\"X\u0082\u0004ø\u0001\u0000¢\u0006\u0002\n\u0000R\u0019\u0010%\u001a\u00020&X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010'R\u0016\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004¢\u0006\u0002\n\u0000R/\u0010*\u001a\u0004\u0018\u00010$2\b\u0010\u0018\u001a\u0004\u0018\u00010$8F@FX\u0086\u008e\u0002¢\u0006\u0012\n\u0004\b/\u0010 \u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\u001a\u00100\u001a\u000201X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105R8\u00107\u001a\u0004\u0018\u0001062\b\u0010\u0018\u001a\u0004\u0018\u0001068F@FX\u0086\u008e\u0002ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0012\n\u0004\b<\u0010 \u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\u001a\u0010=\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u000e\u0010B\u001a\u00020CX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010D\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013@RX\u0094\u000e¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\u0015R\u0014\u0010F\u001a\u00020\u00018VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bG\u0010HR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bI\u0010J\"\u0004\bK\u0010LR\u000e\u0010M\u001a\u00020CX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020OX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006e"}, d2 = {"Landroidx/compose/material3/internal/PopupLayout;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "onDismissRequest", "Lkotlin/Function0;", "", "testTag", "", "composeView", "Landroid/view/View;", "density", "Landroidx/compose/ui/unit/Density;", "initialPositionProvider", "Landroidx/compose/ui/window/PopupPositionProvider;", "popupId", "Ljava/util/UUID;", "(Lkotlin/jvm/functions/Function0;Ljava/lang/String;Landroid/view/View;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/window/PopupPositionProvider;Ljava/util/UUID;)V", "canCalculatePosition", "", "getCanCalculatePosition", "()Z", "canCalculatePosition$delegate", "Landroidx/compose/runtime/State;", "<set-?>", "Landroidx/compose/runtime/Composable;", "content", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "content$delegate", "Landroidx/compose/runtime/MutableState;", "dismissOnOutsideClick", "Lkotlin/Function2;", "Landroidx/compose/ui/geometry/Offset;", "Landroidx/compose/ui/unit/IntRect;", "maxSupportedElevation", "Landroidx/compose/ui/unit/Dp;", "F", Message.JsonKeys.PARAMS, "Landroid/view/WindowManager$LayoutParams;", "parentBounds", "getParentBounds", "()Landroidx/compose/ui/unit/IntRect;", "setParentBounds", "(Landroidx/compose/ui/unit/IntRect;)V", "parentBounds$delegate", "parentLayoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "getParentLayoutDirection", "()Landroidx/compose/ui/unit/LayoutDirection;", "setParentLayoutDirection", "(Landroidx/compose/ui/unit/LayoutDirection;)V", "Landroidx/compose/ui/unit/IntSize;", "popupContentSize", "getPopupContentSize-bOM6tXw", "()Landroidx/compose/ui/unit/IntSize;", "setPopupContentSize-fhxjrPA", "(Landroidx/compose/ui/unit/IntSize;)V", "popupContentSize$delegate", "positionProvider", "getPositionProvider", "()Landroidx/compose/ui/window/PopupPositionProvider;", "setPositionProvider", "(Landroidx/compose/ui/window/PopupPositionProvider;)V", "previousWindowVisibleFrame", "Landroid/graphics/Rect;", "shouldCreateCompositionOnAttachedToWindow", "getShouldCreateCompositionOnAttachedToWindow", "subCompositionView", "getSubCompositionView", "()Landroidx/compose/ui/platform/AbstractComposeView;", "getTestTag", "()Ljava/lang/String;", "setTestTag", "(Ljava/lang/String;)V", "tmpWindowVisibleFrame", "windowManager", "Landroid/view/WindowManager;", "Content", "(Landroidx/compose/runtime/Composer;I)V", "createLayoutParams", "dismiss", "dispatchKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onGlobalLayout", "onTouchEvent", "Landroid/view/MotionEvent;", "parent", "Landroidx/compose/runtime/CompositionContext;", "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V", "setLayoutDirection", "layoutDirection", "", "show", "superSetLayoutDirection", "updateParameters", "updatePosition", "toIntBounds", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class PopupLayout extends AbstractComposeView implements ViewRootForInspector, ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: canCalculatePosition$delegate, reason: from kotlin metadata */
    private final State canCalculatePosition;
    private final View composeView;

    /* renamed from: content$delegate, reason: from kotlin metadata */
    private final MutableState content;
    private final Function2<Offset, IntRect, Boolean> dismissOnOutsideClick;
    private final float maxSupportedElevation;
    private Function0<Unit> onDismissRequest;
    private final WindowManager.LayoutParams params;

    /* renamed from: parentBounds$delegate, reason: from kotlin metadata */
    private final MutableState parentBounds;
    private LayoutDirection parentLayoutDirection;

    /* renamed from: popupContentSize$delegate, reason: from kotlin metadata */
    private final MutableState popupContentSize;
    private PopupPositionProvider positionProvider;
    private final Rect previousWindowVisibleFrame;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    private String testTag;
    private final Rect tmpWindowVisibleFrame;
    private final WindowManager windowManager;

    /* compiled from: ExposedDropdownMenuPopup.kt */
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

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public PopupLayout(kotlin.jvm.functions.Function0<kotlin.Unit> r8, java.lang.String r9, android.view.View r10, androidx.compose.ui.unit.Density r11, androidx.compose.ui.window.PopupPositionProvider r12, java.util.UUID r13) {
        /*
            r7 = this;
            java.lang.String r0 = "testTag"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "composeView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            java.lang.String r0 = "density"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r11, r0)
            java.lang.String r0 = "initialPositionProvider"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r12, r0)
            java.lang.String r0 = "popupId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r13, r0)
            android.content.Context r2 = r10.getContext()
            java.lang.String r0 = "composeView.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.onDismissRequest = r8
            r7.testTag = r9
            r7.composeView = r10
            android.content.Context r8 = r10.getContext()
            java.lang.String r9 = "window"
            java.lang.Object r8 = r8.getSystemService(r9)
            java.lang.String r9 = "null cannot be cast to non-null type android.view.WindowManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r9)
            android.view.WindowManager r8 = (android.view.WindowManager) r8
            r7.windowManager = r8
            android.view.WindowManager$LayoutParams r8 = r7.createLayoutParams()
            r7.params = r8
            r7.positionProvider = r12
            androidx.compose.ui.unit.LayoutDirection r8 = androidx.compose.ui.unit.LayoutDirection.Ltr
            r7.parentLayoutDirection = r8
            r8 = 0
            r9 = 2
            androidx.compose.runtime.MutableState r12 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.parentBounds = r12
            androidx.compose.runtime.MutableState r12 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r8, r9, r8)
            r7.popupContentSize = r12
            androidx.compose.material3.internal.PopupLayout$canCalculatePosition$2 r12 = new androidx.compose.material3.internal.PopupLayout$canCalculatePosition$2
            r12.<init>()
            kotlin.jvm.functions.Function0 r12 = (kotlin.jvm.functions.Function0) r12
            androidx.compose.runtime.State r12 = androidx.compose.runtime.SnapshotStateKt.derivedStateOf(r12)
            r7.canCalculatePosition = r12
            r12 = 8
            float r12 = (float) r12
            float r12 = androidx.compose.ui.unit.Dp.m4883constructorimpl(r12)
            r7.maxSupportedElevation = r12
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r7.previousWindowVisibleFrame = r0
            android.graphics.Rect r0 = new android.graphics.Rect
            r0.<init>()
            r7.tmpWindowVisibleFrame = r0
            androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1 r0 = new kotlin.jvm.functions.Function2<androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect, java.lang.Boolean>() { // from class: androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1
                static {
                    /*
                        androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1 r0 = new androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1
                        r0.<init>()
                        
                        // error: 0x0005: SPUT (r0 I:androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1) androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1.INSTANCE androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1.<clinit>():void");
                }

                {
                    /*
                        r1 = this;
                        r0 = 2
                        r1.<init>(r0)
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1.<init>():void");
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ java.lang.Boolean invoke(androidx.compose.ui.geometry.Offset r1, androidx.compose.ui.unit.IntRect r2) {
                    /*
                        r0 = this;
                        androidx.compose.ui.geometry.Offset r1 = (androidx.compose.ui.geometry.Offset) r1
                        androidx.compose.ui.unit.IntRect r2 = (androidx.compose.ui.unit.IntRect) r2
                        java.lang.Boolean r0 = r0.invoke(r1, r2)
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1.invoke(java.lang.Object, java.lang.Object):java.lang.Object");
                }

                @Override // kotlin.jvm.functions.Function2
                /* renamed from: invoke-KMgbckE, reason: not valid java name and merged with bridge method [inline-methods] */
                public final java.lang.Boolean invoke(androidx.compose.ui.geometry.Offset r3, androidx.compose.ui.unit.IntRect r4) {
                    /*
                        r2 = this;
                        java.lang.String r2 = "bounds"
                        kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r4, r2)
                        r2 = 0
                        if (r3 != 0) goto L9
                        goto L4e
                    L9:
                        long r0 = r3.getPackedValue()
                        float r0 = androidx.compose.ui.geometry.Offset.m2400getXimpl(r0)
                        int r1 = r4.getLeft()
                        float r1 = (float) r1
                        int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                        if (r0 < 0) goto L4d
                        long r0 = r3.getPackedValue()
                        float r0 = androidx.compose.ui.geometry.Offset.m2400getXimpl(r0)
                        int r1 = r4.getRight()
                        float r1 = (float) r1
                        int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                        if (r0 > 0) goto L4d
                        long r0 = r3.getPackedValue()
                        float r0 = androidx.compose.ui.geometry.Offset.m2401getYimpl(r0)
                        int r1 = r4.getTop()
                        float r1 = (float) r1
                        int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                        if (r0 < 0) goto L4d
                        long r0 = r3.getPackedValue()
                        float r3 = androidx.compose.ui.geometry.Offset.m2401getYimpl(r0)
                        int r4 = r4.getBottom()
                        float r4 = (float) r4
                        int r3 = (r3 > r4 ? 1 : (r3 == r4 ? 0 : -1))
                        if (r3 <= 0) goto L4e
                    L4d:
                        r2 = 1
                    L4e:
                        java.lang.Boolean r2 = java.lang.Boolean.valueOf(r2)
                        return r2
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout$dismissOnOutsideClick$1.invoke(androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect):java.lang.Boolean");
                }
            }
            kotlin.jvm.functions.Function2 r0 = (kotlin.jvm.functions.Function2) r0
            r7.dismissOnOutsideClick = r0
            r0 = 16908290(0x1020002, float:2.3877235E-38)
            r7.setId(r0)
            r0 = r7
            android.view.View r0 = (android.view.View) r0
            androidx.lifecycle.LifecycleOwner r1 = androidx.lifecycle.ViewTreeLifecycleOwner.get(r10)
            androidx.lifecycle.ViewTreeLifecycleOwner.set(r0, r1)
            androidx.lifecycle.ViewModelStoreOwner r1 = androidx.lifecycle.ViewTreeViewModelStoreOwner.get(r10)
            androidx.lifecycle.ViewTreeViewModelStoreOwner.set(r0, r1)
            androidx.savedstate.SavedStateRegistryOwner r1 = androidx.savedstate.ViewTreeSavedStateRegistryOwner.get(r10)
            androidx.savedstate.ViewTreeSavedStateRegistryOwner.set(r0, r1)
            android.view.ViewTreeObserver r10 = r10.getViewTreeObserver()
            r0 = r7
            android.view.ViewTreeObserver$OnGlobalLayoutListener r0 = (android.view.ViewTreeObserver.OnGlobalLayoutListener) r0
            r10.addOnGlobalLayoutListener(r0)
            int r10 = androidx.compose.ui.R.id.compose_view_saveable_id_tag
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Popup:"
            r0.<init>(r1)
            java.lang.StringBuilder r13 = r0.append(r13)
            java.lang.String r13 = r13.toString()
            r7.setTag(r10, r13)
            r10 = 0
            r7.setClipChildren(r10)
            float r10 = r11.mo335toPx0680j_4(r12)
            r7.setElevation(r10)
            androidx.compose.material3.internal.PopupLayout$2 r10 = new androidx.compose.material3.internal.PopupLayout$2
            r10.<init>()
            android.view.ViewOutlineProvider r10 = (android.view.ViewOutlineProvider) r10
            r7.setOutlineProvider(r10)
            androidx.compose.material3.internal.ComposableSingletons$ExposedDropdownMenuPopupKt r10 = androidx.compose.material3.internal.ComposableSingletons$ExposedDropdownMenuPopupKt.INSTANCE
            kotlin.jvm.functions.Function2 r10 = r10.m1687getLambda1$material3_release()
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r10, r8, r9, r8)
            r7.content = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout.<init>(kotlin.jvm.functions.Function0, java.lang.String, android.view.View, androidx.compose.ui.unit.Density, androidx.compose.ui.window.PopupPositionProvider, java.util.UUID):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final IntRect getParentBounds() {
        return (IntRect) this.parentBounds.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: getPopupContentSize-bOM6tXw, reason: not valid java name */
    public final IntSize m1689getPopupContentSizebOM6tXw() {
        return (IntSize) this.popupContentSize.getValue();
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
        Composer startRestartGroup = composer.startRestartGroup(-797839545);
        ComposerKt.sourceInformation(startRestartGroup, "C(Content)303@11874L9:ExposedDropdownMenuPopup.kt#mqatfk");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-797839545, i, -1, "androidx.compose.material3.internal.PopupLayout.Content (ExposedDropdownMenuPopup.kt:302)");
        }
        getContent().invoke(startRestartGroup, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.internal.PopupLayout$Content$4
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

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent event) {
        KeyEvent.DispatcherState keyDispatcherState;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getKeyCode() == 4) {
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

    public final void updateParameters(Function0<Unit> onDismissRequest, String testTag, LayoutDirection layoutDirection) {
        Intrinsics.checkNotNullParameter(testTag, "testTag");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.onDismissRequest = onDismissRequest;
        this.testTag = testTag;
        superSetLayoutDirection(layoutDirection);
    }

    public final void updatePosition() {
        IntSize m1689getPopupContentSizebOM6tXw;
        IntRect parentBounds = getParentBounds();
        if (parentBounds == null || (m1689getPopupContentSizebOM6tXw = m1689getPopupContentSizebOM6tXw()) == null) {
            return;
        }
        long packedValue = m1689getPopupContentSizebOM6tXw.getPackedValue();
        Rect rect = this.previousWindowVisibleFrame;
        this.composeView.getWindowVisibleDisplayFrame(rect);
        IntRect intBounds = toIntBounds(rect);
        long mo884calculatePositionllwVHH4 = this.positionProvider.mo884calculatePositionllwVHH4(parentBounds, IntSizeKt.IntSize(intBounds.getWidth(), intBounds.getHeight()), this.parentLayoutDirection, packedValue);
        this.params.x = IntOffset.m5001getXimpl(mo884calculatePositionllwVHH4);
        this.params.y = IntOffset.m5002getYimpl(mo884calculatePositionllwVHH4);
        this.windowManager.updateViewLayout(this, this.params);
    }

    public final void dismiss() {
        PopupLayout popupLayout = this;
        ViewTreeLifecycleOwner.set(popupLayout, null);
        this.composeView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.windowManager.removeViewImmediate(popupLayout);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007f, code lost:
    
        if (r5.dismissOnOutsideClick.invoke((r6.getX() == 0.0f && r6.getY() == 0.0f) ? null : androidx.compose.ui.geometry.Offset.m2389boximpl(androidx.compose.ui.geometry.OffsetKt.Offset(r5.params.x + r6.getX(), r5.params.y + r6.getY())), r0).booleanValue() != false) goto L27;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L7
            boolean r5 = super.onTouchEvent(r6)
            return r5
        L7:
            int r0 = r6.getAction()
            r1 = 0
            if (r0 != 0) goto L38
            float r0 = r6.getX()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L3f
            float r0 = r6.getX()
            int r2 = r5.getWidth()
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L3f
            float r0 = r6.getY()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L3f
            float r0 = r6.getY()
            int r2 = r5.getHeight()
            float r2 = (float) r2
            int r0 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r0 >= 0) goto L3f
        L38:
            int r0 = r6.getAction()
            r2 = 4
            if (r0 != r2) goto L8a
        L3f:
            androidx.compose.ui.unit.IntRect r0 = r5.getParentBounds()
            if (r0 == 0) goto L81
            kotlin.jvm.functions.Function2<androidx.compose.ui.geometry.Offset, androidx.compose.ui.unit.IntRect, java.lang.Boolean> r2 = r5.dismissOnOutsideClick
            float r3 = r6.getX()
            int r3 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r3 != 0) goto L59
            float r3 = r6.getY()
            int r1 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r1 != 0) goto L59
            r1 = 0
            goto L75
        L59:
            android.view.WindowManager$LayoutParams r1 = r5.params
            int r1 = r1.x
            float r1 = (float) r1
            float r3 = r6.getX()
            float r1 = r1 + r3
            android.view.WindowManager$LayoutParams r3 = r5.params
            int r3 = r3.y
            float r3 = (float) r3
            float r4 = r6.getY()
            float r3 = r3 + r4
            long r3 = androidx.compose.ui.geometry.OffsetKt.Offset(r1, r3)
            androidx.compose.ui.geometry.Offset r1 = androidx.compose.ui.geometry.Offset.m2389boximpl(r3)
        L75:
            java.lang.Object r0 = r2.invoke(r1, r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L8a
        L81:
            kotlin.jvm.functions.Function0<kotlin.Unit> r5 = r5.onDismissRequest
            if (r5 == 0) goto L88
            r5.invoke()
        L88:
            r5 = 1
            return r5
        L8a:
            boolean r5 = super.onTouchEvent(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.internal.PopupLayout.onTouchEvent(android.view.MotionEvent):boolean");
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
        layoutParams.flags = 393248;
        layoutParams.softInputMode = 1;
        layoutParams.type = 1000;
        layoutParams.token = this.composeView.getApplicationWindowToken();
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.setTitle(this.composeView.getContext().getResources().getString(R.string.default_popup_window_title));
        return layoutParams;
    }

    private final IntRect toIntBounds(Rect rect) {
        return new IntRect(rect.left, rect.top, rect.right, rect.bottom);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.composeView.getWindowVisibleDisplayFrame(this.tmpWindowVisibleFrame);
        if (Intrinsics.areEqual(this.tmpWindowVisibleFrame, this.previousWindowVisibleFrame)) {
            return;
        }
        updatePosition();
    }

    public final void setParentBounds(IntRect intRect) {
        this.parentBounds.setValue(intRect);
    }

    /* renamed from: setPopupContentSize-fhxjrPA, reason: not valid java name */
    public final void m1690setPopupContentSizefhxjrPA(IntSize intSize) {
        this.popupContentSize.setValue(intSize);
    }

    public final boolean getCanCalculatePosition() {
        return ((Boolean) this.canCalculatePosition.getValue()).booleanValue();
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.content.setValue(function2);
    }
}
