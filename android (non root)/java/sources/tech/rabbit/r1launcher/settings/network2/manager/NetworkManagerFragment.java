package tech.rabbit.r1launcher.settings.network2.manager;

import android.app.Application;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.recyclerview.widget.RecyclerView;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.ranges.RangesKt;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.FragmentNetworkManagerBinding;
import tech.rabbit.r1launcher.extensions.CoroutinesExtensionsKt;
import tech.rabbit.r1launcher.initstep.model.Wifi;
import tech.rabbit.r1launcher.settings.network2.SettingsNetwork2ViewModel;
import tech.rabbit.r1launcher.settings.network2.UtilsKt;
import tech.rabbit.r1launcher.settings.network2.WifiWrap;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.CanBackLabelView;

/* compiled from: NetworkManagerFragment.kt */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 62\u00020\u00012\u00020\u00022\u00020\u0003:\u00016B\u0005¢\u0006\u0002\u0010\u0004J\u001e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001d2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fH\u0002J\u0010\u0010!\u001a\u00020\u001b2\u0006\u0010\"\u001a\u00020\u001dH\u0002J$\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010(2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\b\u0010+\u001a\u00020\u001bH\u0016J\u001c\u0010,\u001a\u00020\u001b2\b\u0010-\u001a\u0004\u0018\u00010$2\b\u0010.\u001a\u0004\u0018\u00010$H\u0016J\u0010\u0010/\u001a\u00020\u001d2\u0006\u00100\u001a\u000201H\u0016J\u001a\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020$2\b\u0010)\u001a\u0004\u0018\u00010*H\u0016J\u0010\u00104\u001a\u00020\u001b2\u0006\u00105\u001a\u00020(H\u0002R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\u00020\u00068BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u0017\u0010\u0018¨\u00067"}, d2 = {"Ltech/rabbit/r1launcher/settings/network2/manager/NetworkManagerFragment;", "Landroidx/fragment/app/Fragment;", "Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;", "Lcom/rubensousa/dpadrecyclerview/DpadRecyclerView$OnKeyInterceptListener;", "()V", "_binding", "Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;", "binding", "getBinding", "()Ltech/rabbit/r1launcher/databinding/FragmentNetworkManagerBinding;", "networksAdapter", "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;", "getNetworksAdapter", "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksAdapter;", "networksAdapter$delegate", "Lkotlin/Lazy;", "networksItemDecoration", "Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;", "getNetworksItemDecoration", "()Ltech/rabbit/r1launcher/settings/network2/manager/NetworksItemDecoration;", "networksItemDecoration$delegate", "viewModel", "Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "getViewModel", "()Ltech/rabbit/r1launcher/settings/network2/SettingsNetwork2ViewModel;", "viewModel$delegate", "autoSelectedLastPosition", "", "isItemsChanged", "", "newWifiItems", "", "Ltech/rabbit/r1launcher/settings/network2/WifiWrap;", "autoSetNetworkItemsListFocusable", "isEnable", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroyView", "onGlobalFocusChanged", "oldFocus", "newFocus", "onInterceptKeyEvent", NotificationCompat.CATEGORY_EVENT, "Landroid/view/KeyEvent;", "onViewCreated", "view", "setAllViewsFocusable", "rootView", "Companion", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class NetworkManagerFragment extends Fragment implements ViewTreeObserver.OnGlobalFocusChangeListener, DpadRecyclerView.OnKeyInterceptListener {
    private static final String TAG_RADIO = "radio";
    private static final String TAG_TOGGLE = "toggle";
    private FragmentNetworkManagerBinding _binding;

    /* renamed from: networksAdapter$delegate, reason: from kotlin metadata */
    private final Lazy networksAdapter;

    /* renamed from: networksItemDecoration$delegate, reason: from kotlin metadata */
    private final Lazy networksItemDecoration;

    /* renamed from: viewModel$delegate, reason: from kotlin metadata */
    private final Lazy viewModel;
    public static final int $stable = 8;

    /* JADX INFO: Access modifiers changed from: private */
    public final FragmentNetworkManagerBinding getBinding() {
        FragmentNetworkManagerBinding fragmentNetworkManagerBinding = this._binding;
        Intrinsics.checkNotNull(fragmentNetworkManagerBinding);
        return fragmentNetworkManagerBinding;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SettingsNetwork2ViewModel getViewModel() {
        return (SettingsNetwork2ViewModel) this.viewModel.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final NetworksAdapter getNetworksAdapter() {
        return (NetworksAdapter) this.networksAdapter.getValue();
    }

    private final NetworksItemDecoration getNetworksItemDecoration() {
        return (NetworksItemDecoration) this.networksItemDecoration.getValue();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentNetworkManagerBinding inflate = FragmentNetworkManagerBinding.inflate(inflater, container, false);
        this._binding = inflate;
        LinearLayoutCompat root = inflate.getRoot();
        Intrinsics.checkNotNull(root);
        setAllViewsFocusable(root);
        root.getViewTreeObserver().addOnGlobalFocusChangeListener(this);
        Intrinsics.checkNotNullExpressionValue(root, "apply(...)");
        return root;
    }

    private final void setAllViewsFocusable(ViewGroup rootView) {
        for (View view : UtilsKt.getAllViews(rootView)) {
            view.setFocusable(1);
            view.setFocusableInTouchMode(true);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        CanBackLabelView cblvTitle = getBinding().cblvTitle;
        Intrinsics.checkNotNullExpressionValue(cblvTitle, "cblvTitle");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(cblvTitle, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view2, Integer num, KeyEvent keyEvent) {
                invoke(view2, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view2, int i, KeyEvent keyEvent) {
                Intrinsics.checkNotNullParameter(view2, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                NetworkManagerFragment.this.requireActivity().finish();
            }
        });
        NetworkManagerFragment networkManagerFragment = this;
        CoroutinesExtensionsKt.collectLast(networkManagerFragment, getViewModel().getCellularUIState(), new NetworkManagerFragment$onViewCreated$2(this, null));
        AppCompatTextView tvCellular = getBinding().tvCellular;
        Intrinsics.checkNotNullExpressionValue(tvCellular, "tvCellular");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(tvCellular, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view2, Integer num, KeyEvent keyEvent) {
                invoke(view2, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view2, int i, KeyEvent keyEvent) {
                SettingsNetwork2ViewModel viewModel;
                Intrinsics.checkNotNullParameter(view2, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                viewModel = NetworkManagerFragment.this.getViewModel();
                viewModel.switchCellularState();
            }
        });
        CoroutinesExtensionsKt.collectLast(networkManagerFragment, getViewModel().getWifiUIState(), new NetworkManagerFragment$onViewCreated$4(this, null));
        AppCompatTextView tvWifi = getBinding().tvWifi;
        Intrinsics.checkNotNullExpressionValue(tvWifi, "tvWifi");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(tvWifi, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$onViewCreated$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view2, Integer num, KeyEvent keyEvent) {
                invoke(view2, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view2, int i, KeyEvent keyEvent) {
                SettingsNetwork2ViewModel viewModel;
                Intrinsics.checkNotNullParameter(view2, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                viewModel = NetworkManagerFragment.this.getViewModel();
                viewModel.switchWifiState();
            }
        });
        getBinding().rvList.setFocusSearchEnabledDuringAnimations(false);
        getBinding().rvList.setOnKeyInterceptListener(this);
        getBinding().rvList.addItemDecoration(getNetworksItemDecoration());
        getBinding().rvList.setAdapter(getNetworksAdapter());
        autoSetNetworkItemsListFocusable(false);
        CoroutinesExtensionsKt.collectLast(networkManagerFragment, getViewModel().getScanWifiItems(), new NetworkManagerFragment$onViewCreated$6(this, (List) CollectionsKt.firstOrNull((List) getViewModel().getScanWifiItems().getReplayCache()), null));
        if (getViewModel().hasLastSelectedWifiCache()) {
            return;
        }
        getBinding().tvCellular.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                NetworkManagerFragment.onViewCreated$lambda$3(NetworkManagerFragment.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onViewCreated$lambda$3(NetworkManagerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvCellular.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void autoSetNetworkItemsListFocusable(boolean isEnable) {
        getBinding().rvList.setFocusableInTouchMode(isEnable);
        getBinding().rvList.setFocusable(isEnable ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void autoSelectedLastPosition(boolean isItemsChanged, final List<WifiWrap> newWifiItems) {
        final Wifi lastSelectedWifi;
        if (!getViewModel().hasLastSelectedWifiCache() || this._binding == null) {
            return;
        }
        if (isItemsChanged) {
            lastSelectedWifi = getViewModel().getAndClearLastSelectedWifi();
        } else {
            lastSelectedWifi = getViewModel().getLastSelectedWifi();
        }
        if (lastSelectedWifi != null) {
            getBinding().rvList.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkManagerFragment.autoSelectedLastPosition$lambda$7$lambda$6(newWifiItems, this, lastSelectedWifi);
                }
            });
        } else {
            getBinding().tvWifi.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkManagerFragment.autoSelectedLastPosition$lambda$9$lambda$8(NetworkManagerFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void autoSelectedLastPosition$lambda$7$lambda$6$lambda$5(NetworkManagerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvWifi.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void autoSelectedLastPosition$lambda$9$lambda$8(NetworkManagerFragment this_run) {
        Intrinsics.checkNotNullParameter(this_run, "$this_run");
        this_run.getBinding().tvWifi.requestFocus();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        LinearLayoutCompat root;
        ViewTreeObserver viewTreeObserver;
        FragmentNetworkManagerBinding fragmentNetworkManagerBinding = this._binding;
        if (fragmentNetworkManagerBinding != null && (root = fragmentNetworkManagerBinding.getRoot()) != null && (viewTreeObserver = root.getViewTreeObserver()) != null) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        this._binding = null;
        super.onDestroyView();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public void onGlobalFocusChanged(View oldFocus, View newFocus) {
        AppCompatTextView appCompatTextView;
        if (Intrinsics.areEqual(oldFocus != null ? oldFocus.getTag() : null, TAG_TOGGLE)) {
            AppCompatTextView appCompatTextView2 = oldFocus instanceof AppCompatTextView ? (AppCompatTextView) oldFocus : null;
            if (appCompatTextView2 != null) {
                UtilsKt.toUnfocusedToggleButtonStyle(appCompatTextView2);
            }
        } else {
            if (Intrinsics.areEqual(oldFocus != null ? oldFocus.getTag() : null, TAG_RADIO)) {
                AppCompatTextView appCompatTextView3 = oldFocus instanceof AppCompatTextView ? (AppCompatTextView) oldFocus : null;
                if (appCompatTextView3 != null) {
                    UtilsKt.toUnfocusedRadioButtonStyle(appCompatTextView3);
                }
            }
        }
        if (Intrinsics.areEqual(newFocus != null ? newFocus.getTag() : null, TAG_TOGGLE)) {
            appCompatTextView = newFocus instanceof AppCompatTextView ? (AppCompatTextView) newFocus : null;
            if (appCompatTextView != null) {
                UtilsKt.toFocusedToggleButtonStyle(appCompatTextView);
                return;
            }
            return;
        }
        if (Intrinsics.areEqual(newFocus != null ? newFocus.getTag() : null, TAG_RADIO)) {
            appCompatTextView = newFocus instanceof AppCompatTextView ? (AppCompatTextView) newFocus : null;
            if (appCompatTextView != null) {
                UtilsKt.toFocusedRadioButtonStyle(appCompatTextView);
            }
        }
    }

    @Override // com.rubensousa.dpadrecyclerview.DpadRecyclerView.OnKeyInterceptListener
    public boolean onInterceptKeyEvent(KeyEvent event) {
        RecyclerView.Adapter adapter;
        Intrinsics.checkNotNullParameter(event, "event");
        if (event.getAction() == 1 && (adapter = getBinding().rvList.getAdapter()) != null) {
            final int itemCount = adapter.getItemCount();
            final int selectedPosition = getBinding().rvList.getSelectedPosition();
            if (selectedPosition == -1) {
                return false;
            }
            RecyclerView.Adapter adapter2 = getBinding().rvList.getAdapter();
            Integer valueOf = adapter2 != null ? Integer.valueOf(adapter2.getItemViewType(selectedPosition)) : null;
            if (19 == event.getKeyCode()) {
                if (valueOf != null && valueOf.intValue() == 999 && selectedPosition == 0) {
                    getBinding().tvWifi.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            NetworkManagerFragment.onInterceptKeyEvent$lambda$10(NetworkManagerFragment.this);
                        }
                    });
                } else if (valueOf != null && valueOf.intValue() == 888) {
                    if (selectedPosition == 0) {
                        getBinding().tvWifi.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda1
                            @Override // java.lang.Runnable
                            public final void run() {
                                NetworkManagerFragment.onInterceptKeyEvent$lambda$11(NetworkManagerFragment.this);
                            }
                        });
                    } else {
                        getBinding().rvList.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda2
                            @Override // java.lang.Runnable
                            public final void run() {
                                NetworkManagerFragment.onInterceptKeyEvent$lambda$12(NetworkManagerFragment.this, selectedPosition);
                            }
                        });
                        return true;
                    }
                }
            } else if (20 == event.getKeyCode() && ((valueOf != null && valueOf.intValue() == 999) || (valueOf != null && valueOf.intValue() == 888))) {
                getBinding().rvList.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        NetworkManagerFragment.onInterceptKeyEvent$lambda$13(NetworkManagerFragment.this, selectedPosition, itemCount);
                    }
                });
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInterceptKeyEvent$lambda$10(NetworkManagerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvWifi.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInterceptKeyEvent$lambda$11(NetworkManagerFragment this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().tvWifi.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInterceptKeyEvent$lambda$12(NetworkManagerFragment this$0, int i) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().rvList.requestFocus();
        this$0.getBinding().rvList.setSelectedPosition(RangesKt.coerceAtLeast(i - 1, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInterceptKeyEvent$lambda$13(NetworkManagerFragment this$0, int i, int i2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.getBinding().rvList.requestFocus();
        this$0.getBinding().rvList.setSelectedPosition(RangesKt.coerceAtMost(i + 1, i2 - 1));
    }

    public NetworkManagerFragment() {
        super(R.layout.fragment_network_manager);
        final NetworkManagerFragment networkManagerFragment = this;
        final Function0 function0 = null;
        this.viewModel = FragmentViewModelLazyKt.createViewModelLazy(networkManagerFragment, Reflection.getOrCreateKotlinClass(SettingsNetwork2ViewModel.class), new Function0<ViewModelStore>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$special$$inlined$activityViewModels$default$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelStore invoke() {
                ViewModelStore viewModelStore = Fragment.this.requireActivity().getViewModelStore();
                Intrinsics.checkNotNullExpressionValue(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<CreationExtras>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$special$$inlined$activityViewModels$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final CreationExtras invoke() {
                CreationExtras creationExtras;
                Function0 function02 = Function0.this;
                if (function02 != null && (creationExtras = (CreationExtras) function02.invoke()) != null) {
                    return creationExtras;
                }
                CreationExtras defaultViewModelCreationExtras = networkManagerFragment.requireActivity().getDefaultViewModelCreationExtras();
                Intrinsics.checkNotNullExpressionValue(defaultViewModelCreationExtras, "requireActivity().defaultViewModelCreationExtras");
                return defaultViewModelCreationExtras;
            }
        }, new Function0<ViewModelProvider.Factory>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$viewModel$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ViewModelProvider.Factory invoke() {
                SettingsNetwork2ViewModel.Companion companion = SettingsNetwork2ViewModel.INSTANCE;
                Application application = NetworkManagerFragment.this.requireActivity().getApplication();
                Intrinsics.checkNotNullExpressionValue(application, "getApplication(...)");
                return companion.provideFactory(application, NetworkManagerFragment.this);
            }
        });
        this.networksAdapter = LazyKt.lazy(new Function0<NetworksAdapter>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$networksAdapter$2
            @Override // kotlin.jvm.functions.Function0
            public final NetworksAdapter invoke() {
                return new NetworksAdapter();
            }
        });
        this.networksItemDecoration = LazyKt.lazy(new Function0<NetworksItemDecoration>() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$networksItemDecoration$2
            @Override // kotlin.jvm.functions.Function0
            public final NetworksItemDecoration invoke() {
                return new NetworksItemDecoration();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void autoSelectedLastPosition$lambda$7$lambda$6(List newWifiItems, final NetworkManagerFragment this$0, Wifi lastSelectedWifi) {
        Intrinsics.checkNotNullParameter(newWifiItems, "$newWifiItems");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(lastSelectedWifi, "$lastSelectedWifi");
        Iterator it = newWifiItems.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (Intrinsics.areEqual(((WifiWrap) it.next()).getWifi(), lastSelectedWifi)) {
                break;
            } else {
                i++;
            }
        }
        if (i >= 0) {
            this$0.getBinding().rvList.requestFocus();
            this$0.getBinding().rvList.setSelectedPosition(i);
        } else {
            this$0.getBinding().tvWifi.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.network2.manager.NetworkManagerFragment$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    NetworkManagerFragment.autoSelectedLastPosition$lambda$7$lambda$6$lambda$5(NetworkManagerFragment.this);
                }
            });
        }
    }
}
