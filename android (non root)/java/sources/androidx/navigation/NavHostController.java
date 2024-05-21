package androidx.navigation;

import android.content.Context;
import androidx.activity.OnBackPressedDispatcher;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NavHostController.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, d2 = {"Landroidx/navigation/NavHostController;", "Landroidx/navigation/NavController;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "enableOnBackPressed", "", "enabled", "", "setLifecycleOwner", "owner", "Landroidx/lifecycle/LifecycleOwner;", "setOnBackPressedDispatcher", "dispatcher", "Landroidx/activity/OnBackPressedDispatcher;", "setViewModelStore", "viewModelStore", "Landroidx/lifecycle/ViewModelStore;", "navigation-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes2.dex */
public class NavHostController extends NavController {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostController(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    @Override // androidx.navigation.NavController
    public final void setLifecycleOwner(LifecycleOwner owner) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        super.setLifecycleOwner(owner);
    }

    @Override // androidx.navigation.NavController
    public final void setOnBackPressedDispatcher(OnBackPressedDispatcher dispatcher) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        super.setOnBackPressedDispatcher(dispatcher);
    }

    @Override // androidx.navigation.NavController
    public final void enableOnBackPressed(boolean enabled) {
        super.enableOnBackPressed(enabled);
    }

    @Override // androidx.navigation.NavController
    public final void setViewModelStore(ViewModelStore viewModelStore) {
        Intrinsics.checkNotNullParameter(viewModelStore, "viewModelStore");
        super.setViewModelStore(viewModelStore);
    }
}
