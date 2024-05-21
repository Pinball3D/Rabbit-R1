package androidx.compose.material3;

import android.view.View;
import android.view.ViewTreeObserver;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExposedDropdownMenu.kt */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\b\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0002\u0010\bJ\u0006\u0010\u000b\u001a\u00020\u0007J\b\u0010\f\u001a\u00020\u0007H\u0016J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\u0010\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0004H\u0016J\b\u0010\u0010\u001a\u00020\u0007H\u0002J\b\u0010\u0011\u001a\u00020\u0007H\u0002R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Landroidx/compose/material3/OnGlobalLayoutListener;", "Landroid/view/View$OnAttachStateChangeListener;", "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;", "view", "Landroid/view/View;", "onGlobalLayoutCallback", "Lkotlin/Function0;", "", "(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V", "isListeningToGlobalLayout", "", "dispose", "onGlobalLayout", "onViewAttachedToWindow", "p0", "onViewDetachedFromWindow", "registerOnGlobalLayoutListener", "unregisterOnGlobalLayoutListener", "material3_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
final class OnGlobalLayoutListener implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {
    private boolean isListeningToGlobalLayout;
    private final Function0<Unit> onGlobalLayoutCallback;
    private final View view;

    public OnGlobalLayoutListener(View view, Function0<Unit> onGlobalLayoutCallback) {
        Intrinsics.checkNotNullParameter(view, "view");
        Intrinsics.checkNotNullParameter(onGlobalLayoutCallback, "onGlobalLayoutCallback");
        this.view = view;
        this.onGlobalLayoutCallback = onGlobalLayoutCallback;
        view.addOnAttachStateChangeListener(this);
        registerOnGlobalLayoutListener();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        registerOnGlobalLayoutListener();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        unregisterOnGlobalLayoutListener();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        this.onGlobalLayoutCallback.invoke();
    }

    private final void registerOnGlobalLayoutListener() {
        if (this.isListeningToGlobalLayout || !this.view.isAttachedToWindow()) {
            return;
        }
        this.view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        this.isListeningToGlobalLayout = true;
    }

    private final void unregisterOnGlobalLayoutListener() {
        if (this.isListeningToGlobalLayout) {
            this.view.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            this.isListeningToGlobalLayout = false;
        }
    }

    public final void dispose() {
        unregisterOnGlobalLayoutListener();
        this.view.removeOnAttachStateChangeListener(this);
    }
}
