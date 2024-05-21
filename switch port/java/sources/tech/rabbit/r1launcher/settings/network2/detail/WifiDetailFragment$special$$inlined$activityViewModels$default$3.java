package tech.rabbit.r1launcher.settings.network2.detail;

import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: FragmentViewModelLazy.kt */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003H\n¢\u0006\u0002\b\u0004¨\u0006\u0005"}, d2 = {"<anonymous>", "Landroidx/lifecycle/ViewModelProvider$Factory;", "VM", "Landroidx/lifecycle/ViewModel;", "invoke", "androidx/fragment/app/FragmentViewModelLazyKt$activityViewModels$6"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class WifiDetailFragment$special$$inlined$activityViewModels$default$3 extends Lambda implements Function0<ViewModelProvider.Factory> {
    final /* synthetic */ Fragment $this_activityViewModels;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WifiDetailFragment$special$$inlined$activityViewModels$default$3(Fragment fragment) {
        super(0);
        this.$this_activityViewModels = fragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final ViewModelProvider.Factory invoke() {
        ViewModelProvider.Factory defaultViewModelProviderFactory = this.$this_activityViewModels.requireActivity().getDefaultViewModelProviderFactory();
        Intrinsics.checkNotNullExpressionValue(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
        return defaultViewModelProviderFactory;
    }
}
