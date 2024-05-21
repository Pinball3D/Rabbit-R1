package androidx.navigation;

import androidx.lifecycle.viewmodel.CreationExtras;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: NavGraphViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "Landroidx/lifecycle/viewmodel/CreationExtras;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke"}, k = 3, mv = {1, 8, 0}, xi = 176)
/* loaded from: classes2.dex */
public final class NavGraphViewModelLazyKt$navGraphViewModels$7 extends Lambda implements Function0<CreationExtras> {
    final /* synthetic */ Lazy<NavBackStackEntry> $backStackEntry$delegate;
    final /* synthetic */ Function0<CreationExtras> $extrasProducer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavGraphViewModelLazyKt$navGraphViewModels$7(Function0<? extends CreationExtras> function0, Lazy<NavBackStackEntry> lazy) {
        super(0);
        this.$extrasProducer = function0;
        this.$backStackEntry$delegate = lazy;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final CreationExtras invoke() {
        NavBackStackEntry m5300navGraphViewModels$lambda3;
        CreationExtras invoke;
        Function0<CreationExtras> function0 = this.$extrasProducer;
        if (function0 != null && (invoke = function0.invoke()) != null) {
            return invoke;
        }
        m5300navGraphViewModels$lambda3 = NavGraphViewModelLazyKt.m5300navGraphViewModels$lambda3(this.$backStackEntry$delegate);
        return m5300navGraphViewModels$lambda3.getDefaultViewModelCreationExtras();
    }
}
