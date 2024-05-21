package androidx.compose.material3;

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
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.core.app.NotificationCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import io.sentry.protocol.Message;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* compiled from: ModalBottomSheet.android.kt */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\r\u0010!\u001a\u00020\u0006H\u0017¢\u0006\u0002\u0010\"J\u0006\u0010#\u001a\u00020\u0006J\u0010\u0010$\u001a\u00020\u001b2\u0006\u0010%\u001a\u00020&H\u0016J\b\u0010'\u001a\u00020\u0006H\u0016J*\u0010(\u001a\u00020\u00062\n\b\u0002\u0010)\u001a\u0004\u0018\u00010*2\u0011\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\r¢\u0006\u0002\u0010+J\u0006\u0010,\u001a\u00020\u0006R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000RA\u0010\u000e\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\r2\u0011\u0010\f\u001a\r\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0002\b\r8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0015\u001a\u00020\u00168BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\f\u001a\u00020\u001b@RX\u0094\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u000e\u0010\u001f\u001a\u00020 X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006-"}, d2 = {"Landroidx/compose/material3/ModalBottomSheetWindow;", "Landroidx/compose/ui/platform/AbstractComposeView;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "onDismissRequest", "Lkotlin/Function0;", "", "composeView", "Landroid/view/View;", "saveId", "Ljava/util/UUID;", "(Lkotlin/jvm/functions/Function0;Landroid/view/View;Ljava/util/UUID;)V", "<set-?>", "Landroidx/compose/runtime/Composable;", "content", "getContent", "()Lkotlin/jvm/functions/Function2;", "setContent", "(Lkotlin/jvm/functions/Function2;)V", "content$delegate", "Landroidx/compose/runtime/MutableState;", "displayWidth", "", "getDisplayWidth", "()I", Message.JsonKeys.PARAMS, "Landroid/view/WindowManager$LayoutParams;", "", "shouldCreateCompositionOnAttachedToWindow", "getShouldCreateCompositionOnAttachedToWindow", "()Z", "windowManager", "Landroid/view/WindowManager;", "Content", "(Landroidx/compose/runtime/Composer;I)V", "dismiss", "dispatchKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onGlobalLayout", "setCustomContent", "parent", "Landroidx/compose/runtime/CompositionContext;", "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V", "show", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class ModalBottomSheetWindow extends AbstractComposeView implements ViewTreeObserver.OnGlobalLayoutListener, ViewRootForInspector {
    private final View composeView;

    /* renamed from: content$delegate, reason: from kotlin metadata */
    private final MutableState content;
    private Function0<Unit> onDismissRequest;
    private final WindowManager.LayoutParams params;
    private boolean shouldCreateCompositionOnAttachedToWindow;
    private final WindowManager windowManager;

    @Override // androidx.compose.ui.platform.AbstractComposeView
    protected boolean getShouldCreateCompositionOnAttachedToWindow() {
        return this.shouldCreateCompositionOnAttachedToWindow;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public ModalBottomSheetWindow(kotlin.jvm.functions.Function0<kotlin.Unit> r8, android.view.View r9, java.util.UUID r10) {
        /*
            r7 = this;
            java.lang.String r0 = "onDismissRequest"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r8, r0)
            java.lang.String r0 = "composeView"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r9, r0)
            java.lang.String r0 = "saveId"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r10, r0)
            android.content.Context r2 = r9.getContext()
            java.lang.String r0 = "composeView.context"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r3 = 0
            r4 = 0
            r5 = 6
            r6 = 0
            r1 = r7
            r1.<init>(r2, r3, r4, r5, r6)
            r7.onDismissRequest = r8
            r7.composeView = r9
            r8 = 16908290(0x1020002, float:2.3877235E-38)
            r7.setId(r8)
            r8 = r7
            android.view.View r8 = (android.view.View) r8
            androidx.lifecycle.LifecycleOwner r0 = androidx.lifecycle.ViewTreeLifecycleOwner.get(r9)
            androidx.lifecycle.ViewTreeLifecycleOwner.set(r8, r0)
            androidx.lifecycle.ViewModelStoreOwner r0 = androidx.lifecycle.ViewTreeViewModelStoreOwner.get(r9)
            androidx.lifecycle.ViewTreeViewModelStoreOwner.set(r8, r0)
            androidx.savedstate.SavedStateRegistryOwner r0 = androidx.savedstate.ViewTreeSavedStateRegistryOwner.get(r9)
            androidx.savedstate.ViewTreeSavedStateRegistryOwner.set(r8, r0)
            int r8 = androidx.compose.ui.R.id.compose_view_saveable_id_tag
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Popup:"
            r0.<init>(r1)
            java.lang.StringBuilder r10 = r0.append(r10)
            java.lang.String r10 = r10.toString()
            r7.setTag(r8, r10)
            r8 = 0
            r7.setClipChildren(r8)
            android.content.Context r8 = r9.getContext()
            java.lang.String r10 = "window"
            java.lang.Object r8 = r8.getSystemService(r10)
            java.lang.String r10 = "null cannot be cast to non-null type android.view.WindowManager"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r8, r10)
            android.view.WindowManager r8 = (android.view.WindowManager) r8
            r7.windowManager = r8
            android.view.WindowManager$LayoutParams r8 = new android.view.WindowManager$LayoutParams
            r8.<init>()
            r10 = 8388691(0x800053, float:1.175506E-38)
            r8.gravity = r10
            r10 = 1000(0x3e8, float:1.401E-42)
            r8.type = r10
            int r10 = r7.getDisplayWidth()
            r8.width = r10
            r10 = -1
            r8.height = r10
            r10 = -3
            r8.format = r10
            android.content.Context r10 = r9.getContext()
            android.content.res.Resources r10 = r10.getResources()
            int r0 = androidx.compose.ui.R.string.default_popup_window_title
            java.lang.String r10 = r10.getString(r0)
            java.lang.CharSequence r10 = (java.lang.CharSequence) r10
            r8.setTitle(r10)
            android.os.IBinder r9 = r9.getApplicationWindowToken()
            r8.token = r9
            int r9 = r8.flags
            r10 = -163841(0xfffffffffffd7fff, float:NaN)
            r9 = r9 & r10
            r8.flags = r9
            int r9 = r8.flags
            r9 = r9 | 512(0x200, float:7.17E-43)
            r8.flags = r9
            r7.params = r8
            androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt r8 = androidx.compose.material3.ComposableSingletons$ModalBottomSheet_androidKt.INSTANCE
            kotlin.jvm.functions.Function2 r8 = r8.m1129getLambda3$material3_release()
            r9 = 0
            r10 = 2
            androidx.compose.runtime.MutableState r8 = androidx.compose.runtime.SnapshotStateKt.mutableStateOf$default(r8, r9, r10, r9)
            r7.content = r8
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.material3.ModalBottomSheetWindow.<init>(kotlin.jvm.functions.Function0, android.view.View, java.util.UUID):void");
    }

    private final int getDisplayWidth() {
        return MathKt.roundToInt(getContext().getResources().getConfiguration().screenWidthDp * getContext().getResources().getDisplayMetrics().density);
    }

    private final Function2<Composer, Integer, Unit> getContent() {
        return (Function2) this.content.getValue();
    }

    @Override // androidx.compose.ui.platform.AbstractComposeView
    public void Content(Composer composer, final int i) {
        Composer startRestartGroup = composer.startRestartGroup(-463309699);
        ComposerKt.sourceInformation(startRestartGroup, "C(Content)520@21575L9:ModalBottomSheet.android.kt#uh7d8r");
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-463309699, i, -1, "androidx.compose.material3.ModalBottomSheetWindow.Content (ModalBottomSheet.android.kt:519)");
        }
        getContent().invoke(startRestartGroup, 0);
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        ScopeUpdateScope endRestartGroup = startRestartGroup.endRestartGroup();
        if (endRestartGroup == null) {
            return;
        }
        endRestartGroup.updateScope(new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.material3.ModalBottomSheetWindow$Content$4
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
                ModalBottomSheetWindow.this.Content(composer2, RecomposeScopeImplKt.updateChangedFlags(i | 1));
            }
        });
    }

    public static /* synthetic */ void setCustomContent$default(ModalBottomSheetWindow modalBottomSheetWindow, CompositionContext compositionContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            compositionContext = null;
        }
        modalBottomSheetWindow.setCustomContent(compositionContext, function2);
    }

    public final void setCustomContent(CompositionContext parent, Function2<? super Composer, ? super Integer, Unit> content) {
        Intrinsics.checkNotNullParameter(content, "content");
        if (parent != null) {
            setParentCompositionContext(parent);
        }
        setContent(content);
        this.shouldCreateCompositionOnAttachedToWindow = true;
    }

    public final void show() {
        this.windowManager.addView(this, this.params);
    }

    public final void dismiss() {
        ModalBottomSheetWindow modalBottomSheetWindow = this;
        ViewTreeLifecycleOwner.set(modalBottomSheetWindow, null);
        ViewTreeSavedStateRegistryOwner.set(modalBottomSheetWindow, null);
        this.composeView.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        this.windowManager.removeViewImmediate(modalBottomSheetWindow);
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
                this.onDismissRequest.invoke();
                return true;
            }
        }
        return super.dispatchKeyEvent(event);
    }

    private final void setContent(Function2<? super Composer, ? super Integer, Unit> function2) {
        this.content.setValue(function2);
    }
}
