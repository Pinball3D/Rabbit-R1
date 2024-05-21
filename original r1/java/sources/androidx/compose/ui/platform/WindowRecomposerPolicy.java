package androidx.compose.ui.platform;

import android.os.Handler;
import android.view.View;
import androidx.compose.runtime.Recomposer;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.android.HandlerDispatcherKt;

/* compiled from: WindowRecomposer.android.kt */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001J\u0015\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\b\rJ\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0005H\u0001J\u000e\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0003\u001a\u00020\u0005J-\u0010\u0011\u001a\u0002H\u0012\"\u0004\b\u0000\u0010\u00122\u0006\u0010\u0003\u001a\u00020\u00052\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00120\u0014H\u0086\bø\u0001\u0000¢\u0006\u0002\u0010\u0015R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0016"}, d2 = {"Landroidx/compose/ui/platform/WindowRecomposerPolicy;", "", "()V", "factory", "Ljava/util/concurrent/atomic/AtomicReference;", "Landroidx/compose/ui/platform/WindowRecomposerFactory;", "compareAndSetFactory", "", "expected", "createAndInstallWindowRecomposer", "Landroidx/compose/runtime/Recomposer;", "rootView", "Landroid/view/View;", "createAndInstallWindowRecomposer$ui_release", "getAndSetFactory", "setFactory", "", "withFactory", "R", "block", "Lkotlin/Function0;", "(Landroidx/compose/ui/platform/WindowRecomposerFactory;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "ui_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WindowRecomposerPolicy {
    public static final WindowRecomposerPolicy INSTANCE = new WindowRecomposerPolicy();
    private static final AtomicReference<WindowRecomposerFactory> factory = new AtomicReference<>(WindowRecomposerFactory.INSTANCE.getLifecycleAware());
    public static final int $stable = 8;

    private WindowRecomposerPolicy() {
    }

    public final WindowRecomposerFactory getAndSetFactory(WindowRecomposerFactory factory2) {
        Intrinsics.checkNotNullParameter(factory2, "factory");
        WindowRecomposerFactory andSet = factory.getAndSet(factory2);
        Intrinsics.checkNotNullExpressionValue(andSet, "factory.getAndSet(factory)");
        return andSet;
    }

    public final boolean compareAndSetFactory(WindowRecomposerFactory expected, WindowRecomposerFactory factory2) {
        Intrinsics.checkNotNullParameter(expected, "expected");
        Intrinsics.checkNotNullParameter(factory2, "factory");
        return factory.compareAndSet(expected, factory2);
    }

    public final void setFactory(WindowRecomposerFactory factory2) {
        Intrinsics.checkNotNullParameter(factory2, "factory");
        factory.set(factory2);
    }

    public final <R> R withFactory(WindowRecomposerFactory factory2, Function0<? extends R> block) {
        Intrinsics.checkNotNullParameter(factory2, "factory");
        Intrinsics.checkNotNullParameter(block, "block");
        WindowRecomposerFactory andSetFactory = getAndSetFactory(factory2);
        try {
            R invoke = block.invoke();
            InlineMarker.finallyStart(1);
            if (compareAndSetFactory(factory2, andSetFactory)) {
                InlineMarker.finallyEnd(1);
                return invoke;
            }
            throw new IllegalStateException("WindowRecomposerFactory was set to unexpected value; cannot safely restore old state");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                InlineMarker.finallyStart(1);
                if (compareAndSetFactory(factory2, andSetFactory)) {
                    InlineMarker.finallyEnd(1);
                    throw th2;
                }
                ExceptionsKt.addSuppressed(th, new IllegalStateException("WindowRecomposerFactory was set to unexpected value; cannot safely restore old state"));
                throw th;
            }
        }
    }

    public final Recomposer createAndInstallWindowRecomposer$ui_release(View rootView) {
        final Job launch$default;
        Intrinsics.checkNotNullParameter(rootView, "rootView");
        Recomposer createRecomposer = factory.get().createRecomposer(rootView);
        WindowRecomposer_androidKt.setCompositionContext(rootView, createRecomposer);
        GlobalScope globalScope = GlobalScope.INSTANCE;
        Handler handler = rootView.getHandler();
        Intrinsics.checkNotNullExpressionValue(handler, "rootView.handler");
        launch$default = BuildersKt__Builders_commonKt.launch$default(globalScope, HandlerDispatcherKt.from(handler, "windowRecomposer cleanup").getImmediate(), null, new WindowRecomposerPolicy$createAndInstallWindowRecomposer$unsetJob$1(createRecomposer, rootView, null), 2, null);
        rootView.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: androidx.compose.ui.platform.WindowRecomposerPolicy$createAndInstallWindowRecomposer$1
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View v) {
                Intrinsics.checkNotNullParameter(v, "v");
                v.removeOnAttachStateChangeListener(this);
                Job.DefaultImpls.cancel$default(Job.this, (CancellationException) null, 1, (Object) null);
            }
        });
        return createRecomposer;
    }
}
