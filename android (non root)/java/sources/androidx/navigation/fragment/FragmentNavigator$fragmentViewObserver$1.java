package androidx.navigation.fragment;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavigatorState;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FragmentNavigator.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/LifecycleEventObserver;", "entry", "Landroidx/navigation/NavBackStackEntry;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public final class FragmentNavigator$fragmentViewObserver$1 extends Lambda implements Function1<NavBackStackEntry, LifecycleEventObserver> {
    final /* synthetic */ FragmentNavigator this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigator$fragmentViewObserver$1(FragmentNavigator fragmentNavigator) {
        super(1);
        this.this$0 = fragmentNavigator;
    }

    @Override // kotlin.jvm.functions.Function1
    public final LifecycleEventObserver invoke(final NavBackStackEntry entry) {
        Intrinsics.checkNotNullParameter(entry, "entry");
        final FragmentNavigator fragmentNavigator = this.this$0;
        return new LifecycleEventObserver() { // from class: androidx.navigation.fragment.FragmentNavigator$fragmentViewObserver$1$$ExternalSyntheticLambda0
            @Override // androidx.lifecycle.LifecycleEventObserver
            public final void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                FragmentNavigator$fragmentViewObserver$1.invoke$lambda$0(FragmentNavigator.this, entry, lifecycleOwner, event);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(FragmentNavigator this$0, NavBackStackEntry entry, LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
        NavigatorState state;
        NavigatorState state2;
        NavigatorState state3;
        NavigatorState state4;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(entry, "$entry");
        Intrinsics.checkNotNullParameter(lifecycleOwner, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(event, "event");
        if (event == Lifecycle.Event.ON_RESUME) {
            state3 = this$0.getState();
            if (state3.getBackStack().getValue().contains(entry)) {
                state4 = this$0.getState();
                state4.markTransitionComplete(entry);
            }
        }
        if (event == Lifecycle.Event.ON_DESTROY) {
            state = this$0.getState();
            if (state.getBackStack().getValue().contains(entry)) {
                return;
            }
            state2 = this$0.getState();
            state2.markTransitionComplete(entry);
        }
    }
}
