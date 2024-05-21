package androidx.compose.ui.window;

import android.content.Context;
import android.graphics.Outline;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.Window;
import androidx.activity.ComponentDialog;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.OnBackPressedDispatcherKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionContext;
import androidx.compose.ui.R;
import androidx.compose.ui.platform.AbstractComposeView;
import androidx.compose.ui.platform.ViewRootForInspector;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.core.app.NotificationCompat;
import androidx.core.view.WindowCompat;
import androidx.lifecycle.ViewTreeLifecycleOwner;
import androidx.lifecycle.ViewTreeViewModelStoreOwner;
import androidx.savedstate.ViewTreeSavedStateRegistryOwner;
import io.sentry.protocol.ViewHierarchyNode;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidDialog.android.kt */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B;\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\b\u0010\u001c\u001a\u00020\u0005H\u0016J\u0006\u0010\u001d\u001a\u00020\u0005J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0016J&\u0010\"\u001a\u00020\u00052\u0006\u0010#\u001a\u00020$2\u0011\u0010%\u001a\r\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b&¢\u0006\u0002\u0010'J\u0010\u0010(\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0010\u0010)\u001a\u00020\u00052\u0006\u0010*\u001a\u00020+H\u0002J$\u0010,\u001a\u00020\u00052\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0015\u001a\u00020\u0016X\u0082\u0004ø\u0001\u0000ø\u0001\u0001ø\u0001\u0002¢\u0006\u0004\n\u0002\u0010\u0017R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\u00020\u00198VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001b\u0082\u0002\u000f\n\u0002\b\u0019\n\u0005\b¡\u001e0\u0001\n\u0002\b!¨\u0006-"}, d2 = {"Landroidx/compose/ui/window/DialogWrapper;", "Landroidx/activity/ComponentDialog;", "Landroidx/compose/ui/platform/ViewRootForInspector;", "onDismissRequest", "Lkotlin/Function0;", "", "properties", "Landroidx/compose/ui/window/DialogProperties;", "composeView", "Landroid/view/View;", "layoutDirection", "Landroidx/compose/ui/unit/LayoutDirection;", "density", "Landroidx/compose/ui/unit/Density;", "dialogId", "Ljava/util/UUID;", "(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/DialogProperties;Landroid/view/View;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;Ljava/util/UUID;)V", "defaultSoftInputMode", "", "dialogLayout", "Landroidx/compose/ui/window/DialogLayout;", "maxSupportedElevation", "Landroidx/compose/ui/unit/Dp;", "F", "subCompositionView", "Landroidx/compose/ui/platform/AbstractComposeView;", "getSubCompositionView", "()Landroidx/compose/ui/platform/AbstractComposeView;", "cancel", "disposeComposition", "onTouchEvent", "", NotificationCompat.CATEGORY_EVENT, "Landroid/view/MotionEvent;", "setContent", "parentComposition", "Landroidx/compose/runtime/CompositionContext;", ViewHierarchyNode.JsonKeys.CHILDREN, "Landroidx/compose/runtime/Composable;", "(Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;)V", "setLayoutDirection", "setSecurePolicy", "securePolicy", "Landroidx/compose/ui/window/SecureFlagPolicy;", "updateParameters", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DialogWrapper extends ComponentDialog implements ViewRootForInspector {
    private final View composeView;
    private final int defaultSoftInputMode;
    private final DialogLayout dialogLayout;
    private final float maxSupportedElevation;
    private Function0<Unit> onDismissRequest;
    private DialogProperties properties;

    /* compiled from: AndroidDialog.android.kt */
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

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogWrapper(Function0<Unit> onDismissRequest, DialogProperties properties, View composeView, LayoutDirection layoutDirection, Density density, UUID dialogId) {
        super(new ContextThemeWrapper(composeView.getContext(), R.style.DialogWindowTheme), 0, 2, null);
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(composeView, "composeView");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        Intrinsics.checkNotNullParameter(density, "density");
        Intrinsics.checkNotNullParameter(dialogId, "dialogId");
        this.onDismissRequest = onDismissRequest;
        this.properties = properties;
        this.composeView = composeView;
        float m4883constructorimpl = Dp.m4883constructorimpl(8);
        this.maxSupportedElevation = m4883constructorimpl;
        Window window = getWindow();
        if (window == null) {
            throw new IllegalStateException("Dialog has no window".toString());
        }
        this.defaultSoftInputMode = window.getAttributes().softInputMode & 240;
        window.requestFeature(1);
        window.setBackgroundDrawableResource(android.R.color.transparent);
        WindowCompat.setDecorFitsSystemWindows(window, this.properties.getDecorFitsSystemWindows());
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        DialogLayout dialogLayout = new DialogLayout(context, window);
        dialogLayout.setTag(R.id.compose_view_saveable_id_tag, "Dialog:" + dialogId);
        dialogLayout.setClipChildren(false);
        dialogLayout.setElevation(density.mo335toPx0680j_4(m4883constructorimpl));
        dialogLayout.setOutlineProvider(new ViewOutlineProvider() { // from class: androidx.compose.ui.window.DialogWrapper$1$2
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline result) {
                Intrinsics.checkNotNullParameter(view, "view");
                Intrinsics.checkNotNullParameter(result, "result");
                result.setRect(0, 0, view.getWidth(), view.getHeight());
                result.setAlpha(0.0f);
            }
        });
        this.dialogLayout = dialogLayout;
        View decorView = window.getDecorView();
        ViewGroup viewGroup = decorView instanceof ViewGroup ? (ViewGroup) decorView : null;
        if (viewGroup != null) {
            _init_$disableClipping(viewGroup);
        }
        setContentView(dialogLayout);
        ViewTreeLifecycleOwner.set(dialogLayout, ViewTreeLifecycleOwner.get(composeView));
        ViewTreeViewModelStoreOwner.set(dialogLayout, ViewTreeViewModelStoreOwner.get(composeView));
        ViewTreeSavedStateRegistryOwner.set(dialogLayout, ViewTreeSavedStateRegistryOwner.get(composeView));
        updateParameters(this.onDismissRequest, this.properties, layoutDirection);
        OnBackPressedDispatcherKt.addCallback$default(getOnBackPressedDispatcher(), this, false, new Function1<OnBackPressedCallback, Unit>() { // from class: androidx.compose.ui.window.DialogWrapper.2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(OnBackPressedCallback onBackPressedCallback) {
                invoke2(onBackPressedCallback);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(OnBackPressedCallback addCallback) {
                Intrinsics.checkNotNullParameter(addCallback, "$this$addCallback");
                if (DialogWrapper.this.properties.getDismissOnBackPress()) {
                    DialogWrapper.this.onDismissRequest.invoke();
                }
            }
        }, 2, null);
    }

    @Override // androidx.compose.ui.platform.ViewRootForInspector
    public AbstractComposeView getSubCompositionView() {
        return this.dialogLayout;
    }

    private static final void _init_$disableClipping(ViewGroup viewGroup) {
        viewGroup.setClipChildren(false);
        if (viewGroup instanceof DialogLayout) {
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            ViewGroup viewGroup2 = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
            if (viewGroup2 != null) {
                _init_$disableClipping(viewGroup2);
            }
        }
    }

    private final void setLayoutDirection(LayoutDirection layoutDirection) {
        DialogLayout dialogLayout = this.dialogLayout;
        int i = WhenMappings.$EnumSwitchMapping$0[layoutDirection.ordinal()];
        int i2 = 1;
        if (i == 1) {
            i2 = 0;
        } else if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        dialogLayout.setLayoutDirection(i2);
    }

    public final void setContent(CompositionContext parentComposition, Function2<? super Composer, ? super Integer, Unit> children) {
        Intrinsics.checkNotNullParameter(parentComposition, "parentComposition");
        Intrinsics.checkNotNullParameter(children, "children");
        this.dialogLayout.setContent(parentComposition, children);
    }

    private final void setSecurePolicy(SecureFlagPolicy securePolicy) {
        boolean shouldApplySecureFlag = SecureFlagPolicy_androidKt.shouldApplySecureFlag(securePolicy, AndroidPopup_androidKt.isFlagSecureEnabled(this.composeView));
        Window window = getWindow();
        Intrinsics.checkNotNull(window);
        window.setFlags(shouldApplySecureFlag ? 8192 : -8193, 8192);
    }

    public final void updateParameters(Function0<Unit> onDismissRequest, DialogProperties properties, LayoutDirection layoutDirection) {
        Window window;
        Intrinsics.checkNotNullParameter(onDismissRequest, "onDismissRequest");
        Intrinsics.checkNotNullParameter(properties, "properties");
        Intrinsics.checkNotNullParameter(layoutDirection, "layoutDirection");
        this.onDismissRequest = onDismissRequest;
        this.properties = properties;
        setSecurePolicy(properties.getSecurePolicy());
        setLayoutDirection(layoutDirection);
        if (properties.getUsePlatformDefaultWidth() && !this.dialogLayout.getUsePlatformDefaultWidth() && (window = getWindow()) != null) {
            window.setLayout(-2, -2);
        }
        this.dialogLayout.setUsePlatformDefaultWidth(properties.getUsePlatformDefaultWidth());
    }

    public final void disposeComposition() {
        this.dialogLayout.disposeComposition();
    }

    @Override // android.app.Dialog
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        boolean onTouchEvent = super.onTouchEvent(event);
        if (onTouchEvent && this.properties.getDismissOnClickOutside()) {
            this.onDismissRequest.invoke();
        }
        return onTouchEvent;
    }
}
