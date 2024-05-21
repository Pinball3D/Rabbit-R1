package androidx.compose.ui.platform;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ViewCompositionStrategy.android.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001e\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002¨\u0006\u0007"}, d2 = {"installForLifecycle", "Lkotlin/Function0;", "", "view", "Landroidx/compose/ui/platform/AbstractComposeView;", "lifecycle", "Landroidx/lifecycle/Lifecycle;", "ui_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ViewCompositionStrategy_androidKt {
    public static final /* synthetic */ Function0 access$installForLifecycle(AbstractComposeView abstractComposeView, Lifecycle lifecycle) {
        return installForLifecycle(abstractComposeView, lifecycle);
    }

    public static final Function0<Unit> installForLifecycle(final AbstractComposeView abstractComposeView, final Lifecycle lifecycle) {
        if (lifecycle.getState().compareTo(Lifecycle.State.DESTROYED) <= 0) {
            throw new IllegalStateException(("Cannot configure " + abstractComposeView + " to disposeComposition at Lifecycle ON_DESTROY: " + lifecycle + "is already destroyed").toString());
        }
        final LifecycleEventObserver lifecycleEventObserver = new LifecycleEventObserver() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy_androidKt$installForLifecycle$observer$1
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(event, "event");
                if (event == Lifecycle.Event.ON_DESTROY) {
                    AbstractComposeView.this.disposeComposition();
                }
            }
        };
        lifecycle.addObserver(lifecycleEventObserver);
        return new Function0<Unit>() { // from class: androidx.compose.ui.platform.ViewCompositionStrategy_androidKt$installForLifecycle$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Lifecycle.this.removeObserver(lifecycleEventObserver);
            }
        };
    }
}
