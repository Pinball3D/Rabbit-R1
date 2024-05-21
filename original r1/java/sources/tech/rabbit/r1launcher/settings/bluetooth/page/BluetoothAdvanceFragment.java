package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelProvider;
import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.FragmentBluetoothAdvanceBinding;
import tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager;
import tech.rabbit.r1launcher.utils.KeyCodeExtensionKt;
import tech.rabbit.r1launcher.widget.SettingTitle;

/* compiled from: BluetoothAdvanceFragment.kt */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002J\u0012\u0010\u0011\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\u0012\u001a\u00020\u000bH\u0002J\u0012\u0010\u0013\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0003J\u0010\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\tH\u0016J&\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\b\u0010\u001e\u001a\u00020\u000bH\u0016J\b\u0010\u001f\u001a\u00020\u000bH\u0002J\b\u0010 \u001a\u00020\u000bH\u0002J\u0012\u0010!\u001a\u00020\u000b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0002J\b\u0010\"\u001a\u00020\u000bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R&\u0010\u0007\u001a\u001a\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082.¢\u0006\u0002\n\u0000¨\u0006#"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothAdvanceFragment;", "Landroidx/fragment/app/Fragment;", "()V", "binding", "Ltech/rabbit/r1launcher/databinding/FragmentBluetoothAdvanceBinding;", Device.TYPE, "Landroid/bluetooth/BluetoothDevice;", "listener", "Lkotlin/Function3;", "Landroid/content/Context;", "", "", "viewModel", "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;", "dpToPx", "", "dp", "initListener", "initObserver", "initView", "onAttach", "context", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onDeviceConnected", "onDeviceDisconnected", "onRemoveDevice", "removeListener", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothAdvanceFragment extends Fragment {
    public static final int $stable = 8;
    private FragmentBluetoothAdvanceBinding binding;
    private BluetoothDevice device;
    private final Function3<Context, BluetoothDevice, Boolean, Unit> listener = new Function3<Context, BluetoothDevice, Boolean, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$listener$1
        /* JADX INFO: Access modifiers changed from: package-private */
        {
            super(3);
        }

        @Override // kotlin.jvm.functions.Function3
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice, Boolean bool) {
            invoke(context, bluetoothDevice, bool.booleanValue());
            return Unit.INSTANCE;
        }

        public final void invoke(Context context, BluetoothDevice bluetoothDevice, boolean z) {
            BluetoothDevice bluetoothDevice2;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
            bluetoothDevice2 = BluetoothAdvanceFragment.this.device;
            if (Intrinsics.areEqual(bluetoothDevice, bluetoothDevice2)) {
                if (z) {
                    BluetoothAdvanceFragment.this.onDeviceConnected();
                } else {
                    BluetoothAdvanceFragment.this.onDeviceDisconnected();
                }
            }
        }
    };
    private BluetoothViewModel viewModel;

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity(...)");
        this.viewModel = (BluetoothViewModel) new ViewModelProvider(requireActivity).get(BluetoothViewModel.class);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = null;
        View inflate = inflater.inflate(R.layout.fragment_bluetooth_advance, (ViewGroup) null);
        FragmentBluetoothAdvanceBinding bind = FragmentBluetoothAdvanceBinding.bind(inflate);
        Intrinsics.checkNotNullExpressionValue(bind, "bind(...)");
        this.binding = bind;
        Bundle arguments = getArguments();
        BluetoothDevice bluetoothDevice = arguments != null ? (BluetoothDevice) arguments.getParcelable(Device.TYPE) : null;
        this.device = bluetoothDevice;
        initView(bluetoothDevice);
        initListener(this.device);
        initObserver();
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = this.binding;
        if (fragmentBluetoothAdvanceBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding = fragmentBluetoothAdvanceBinding2;
        }
        fragmentBluetoothAdvanceBinding.llFocusBg.requestFocus();
        return inflate;
    }

    private final void initObserver() {
        BluetoothViewModel bluetoothViewModel = this.viewModel;
        if (bluetoothViewModel == null) {
            Intrinsics.throwUninitializedPropertyAccessException("viewModel");
            bluetoothViewModel = null;
        }
        bluetoothViewModel.getState().observe(requireActivity(), new BluetoothAdvanceFragment$sam$androidx_lifecycle_Observer$0(new Function1<BluetoothState, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$initObserver$1

            /* compiled from: BluetoothAdvanceFragment.kt */
            @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
            /* loaded from: classes3.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[BluetoothState.values().length];
                    try {
                        iArr[BluetoothState.CONNECTED.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[BluetoothState.CONNECTING.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[BluetoothState.NORMAL.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[BluetoothState.DISCONNECTING.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[BluetoothState.DISCONNECTED.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    try {
                        iArr[BluetoothState.FAIL.ordinal()] = 6;
                    } catch (NoSuchFieldError unused6) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(BluetoothState bluetoothState) {
                invoke2(bluetoothState);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(BluetoothState bluetoothState) {
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding6;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding7;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding8;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding9;
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding10 = null;
                switch (bluetoothState == null ? -1 : WhenMappings.$EnumSwitchMapping$0[bluetoothState.ordinal()]) {
                    case 1:
                        BluetoothAdvanceFragment.this.onDeviceConnected();
                        return;
                    case 2:
                        fragmentBluetoothAdvanceBinding = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding = null;
                        }
                        fragmentBluetoothAdvanceBinding.tvTitleFocus.setText(BluetoothAdvanceFragment.this.getString(R.string.connecting));
                        fragmentBluetoothAdvanceBinding2 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding2 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            fragmentBluetoothAdvanceBinding10 = fragmentBluetoothAdvanceBinding2;
                        }
                        fragmentBluetoothAdvanceBinding10.vRing.showLoading();
                        return;
                    case 3:
                        BluetoothAdvanceFragment.this.onDeviceDisconnected();
                        return;
                    case 4:
                        fragmentBluetoothAdvanceBinding3 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding3 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding3 = null;
                        }
                        fragmentBluetoothAdvanceBinding3.tvTitleFocus.setText(BluetoothAdvanceFragment.this.getString(R.string.disconnecting));
                        fragmentBluetoothAdvanceBinding4 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding4 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            fragmentBluetoothAdvanceBinding10 = fragmentBluetoothAdvanceBinding4;
                        }
                        fragmentBluetoothAdvanceBinding10.vRing.showLoading();
                        return;
                    case 5:
                        BluetoothAdvanceFragment.this.onDeviceDisconnected();
                        return;
                    case 6:
                        fragmentBluetoothAdvanceBinding5 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding5 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding5 = null;
                        }
                        fragmentBluetoothAdvanceBinding5.flConnectError.setVisibility(0);
                        fragmentBluetoothAdvanceBinding6 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding6 = null;
                        }
                        fragmentBluetoothAdvanceBinding6.flDeviceContainer.setVisibility(8);
                        fragmentBluetoothAdvanceBinding7 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding7 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding7 = null;
                        }
                        fragmentBluetoothAdvanceBinding7.tvRemove.setText(BluetoothAdvanceFragment.this.getString(R.string.try_again));
                        fragmentBluetoothAdvanceBinding8 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding8 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding8 = null;
                        }
                        fragmentBluetoothAdvanceBinding8.flRemove.setVisibility(0);
                        fragmentBluetoothAdvanceBinding9 = BluetoothAdvanceFragment.this.binding;
                        if (fragmentBluetoothAdvanceBinding9 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                        } else {
                            fragmentBluetoothAdvanceBinding10 = fragmentBluetoothAdvanceBinding9;
                        }
                        fragmentBluetoothAdvanceBinding10.flRemove.requestFocus();
                        return;
                    default:
                        return;
                }
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeviceDisconnected() {
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = this.binding;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = null;
        if (fragmentBluetoothAdvanceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding = null;
        }
        if (fragmentBluetoothAdvanceBinding.llFocusBg.hasFocus()) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = this.binding;
            if (fragmentBluetoothAdvanceBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding3 = null;
            }
            fragmentBluetoothAdvanceBinding3.vRing.showOnFocus();
        } else {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4 = this.binding;
            if (fragmentBluetoothAdvanceBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding4 = null;
            }
            fragmentBluetoothAdvanceBinding4.vRing.showOnNormal();
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5 = this.binding;
        if (fragmentBluetoothAdvanceBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding2 = fragmentBluetoothAdvanceBinding5;
        }
        fragmentBluetoothAdvanceBinding2.tvTitleFocus.setText(getString(R.string.connect));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onDeviceConnected() {
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = this.binding;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = null;
        if (fragmentBluetoothAdvanceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding = null;
        }
        fragmentBluetoothAdvanceBinding.vRing.showOnConfirm();
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = this.binding;
        if (fragmentBluetoothAdvanceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding3 = null;
        }
        fragmentBluetoothAdvanceBinding3.tvTitleFocus.setText(getString(R.string.connected));
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4 = this.binding;
        if (fragmentBluetoothAdvanceBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding2 = fragmentBluetoothAdvanceBinding4;
        }
        fragmentBluetoothAdvanceBinding2.flRemove.setVisibility(0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        removeListener();
    }

    private final void initListener(BluetoothDevice device) {
        BluetoothManager.INSTANCE.addOnDeviceConnectedListener(this.listener);
    }

    private final void removeListener() {
        BluetoothManager.INSTANCE.removeOnDeviceConnectedListener(this.listener);
    }

    private final void initView(final BluetoothDevice device) {
        String address;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = null;
        String name = device != null ? device.getName() : null;
        if (name == null || name.length() == 0) {
            if (device != null) {
                address = device.getAddress();
            }
            address = null;
        } else {
            if (device != null) {
                address = device.getName();
            }
            address = null;
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = this.binding;
        if (fragmentBluetoothAdvanceBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding2 = null;
        }
        fragmentBluetoothAdvanceBinding2.st.setOnKeyDownCallback(new Function1<Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$initView$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Integer num) {
                invoke(num.intValue());
                return Unit.INSTANCE;
            }

            public final void invoke(int i) {
                FragmentActivity activity;
                if ((i == 26 || i == 66 || i == 80) && (activity = BluetoothAdvanceFragment.this.getActivity()) != null) {
                    activity.finish();
                }
            }
        });
        if (BluetoothManager.INSTANCE.isDeviceConnected(device)) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = this.binding;
            if (fragmentBluetoothAdvanceBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding3 = null;
            }
            fragmentBluetoothAdvanceBinding3.tvTitleFocus.setText(getString(R.string.connected));
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4 = this.binding;
            if (fragmentBluetoothAdvanceBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding4 = null;
            }
            fragmentBluetoothAdvanceBinding4.vRing.showOnConfirm();
        }
        if (!BluetoothManager.INSTANCE.isDeviceBonded(device)) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5 = this.binding;
            if (fragmentBluetoothAdvanceBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding5 = null;
            }
            fragmentBluetoothAdvanceBinding5.flRemove.setVisibility(8);
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding6 = this.binding;
        if (fragmentBluetoothAdvanceBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding6 = null;
        }
        LinearLayout llFocusBg = fragmentBluetoothAdvanceBinding6.llFocusBg;
        Intrinsics.checkNotNullExpressionValue(llFocusBg, "llFocusBg");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(llFocusBg, new Function3<View, Integer, KeyEvent, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$initView$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(3);
            }

            @Override // kotlin.jvm.functions.Function3
            public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
                invoke(view, num.intValue(), keyEvent);
                return Unit.INSTANCE;
            }

            public final void invoke(View view, int i, KeyEvent keyEvent) {
                BluetoothViewModel bluetoothViewModel;
                Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
                Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
                bluetoothViewModel = BluetoothAdvanceFragment.this.viewModel;
                if (bluetoothViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    bluetoothViewModel = null;
                }
                Context requireContext = BluetoothAdvanceFragment.this.requireContext();
                Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
                bluetoothViewModel.realConnectToDevice(requireContext, device);
            }
        });
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding7 = this.binding;
        if (fragmentBluetoothAdvanceBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding7 = null;
        }
        SettingTitle settingTitle = fragmentBluetoothAdvanceBinding7.st;
        if (address == null) {
            address = "";
        }
        settingTitle.setNormalTitle(address);
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding8 = this.binding;
        if (fragmentBluetoothAdvanceBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding8 = null;
        }
        fragmentBluetoothAdvanceBinding8.llFocusBg.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                BluetoothAdvanceFragment.initView$lambda$0(BluetoothAdvanceFragment.this, device, view, z);
            }
        });
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding9 = this.binding;
        if (fragmentBluetoothAdvanceBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding9 = null;
        }
        fragmentBluetoothAdvanceBinding9.flRemove.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                BluetoothAdvanceFragment.initView$lambda$1(BluetoothAdvanceFragment.this, view, z);
            }
        });
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding10 = this.binding;
        if (fragmentBluetoothAdvanceBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding = fragmentBluetoothAdvanceBinding10;
        }
        FrameLayout flRemove = fragmentBluetoothAdvanceBinding.flRemove;
        Intrinsics.checkNotNullExpressionValue(flRemove, "flRemove");
        KeyCodeExtensionKt.setOnSafeConfirmKeyListener(flRemove, new BluetoothAdvanceFragment$initView$5(this, device));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$0(BluetoothAdvanceFragment this$0, BluetoothDevice bluetoothDevice, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = null;
        if (z) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding2 = null;
            }
            fragmentBluetoothAdvanceBinding2.llFocusBg.setBackground(this$0.requireContext().getDrawable(R.drawable.bg_setting_choose));
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding3 = null;
            }
            fragmentBluetoothAdvanceBinding3.tvTitleFocus.setTextColor(ViewCompat.MEASURED_STATE_MASK);
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding4 = null;
            }
            fragmentBluetoothAdvanceBinding4.tvTitleFocus.setTextSize(30.0f);
            if (BluetoothManager.INSTANCE.isDeviceConnected(bluetoothDevice)) {
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5 = this$0.binding;
                if (fragmentBluetoothAdvanceBinding5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentBluetoothAdvanceBinding5 = null;
                }
                fragmentBluetoothAdvanceBinding5.vRing.showOnConfirm();
            } else {
                BluetoothViewModel bluetoothViewModel = this$0.viewModel;
                if (bluetoothViewModel == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    bluetoothViewModel = null;
                }
                if (bluetoothViewModel.getState().getValue() != BluetoothState.CONNECTING) {
                    BluetoothViewModel bluetoothViewModel2 = this$0.viewModel;
                    if (bluetoothViewModel2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                        bluetoothViewModel2 = null;
                    }
                    if (bluetoothViewModel2.getState().getValue() != BluetoothState.DISCONNECTING) {
                        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding6 = this$0.binding;
                        if (fragmentBluetoothAdvanceBinding6 == null) {
                            Intrinsics.throwUninitializedPropertyAccessException("binding");
                            fragmentBluetoothAdvanceBinding6 = null;
                        }
                        fragmentBluetoothAdvanceBinding6.vRing.showOnFocus();
                    }
                }
                FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding7 = this$0.binding;
                if (fragmentBluetoothAdvanceBinding7 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentBluetoothAdvanceBinding7 = null;
                }
                fragmentBluetoothAdvanceBinding7.vRing.showLoading();
            }
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding8 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding8 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBluetoothAdvanceBinding = fragmentBluetoothAdvanceBinding8;
            }
            fragmentBluetoothAdvanceBinding.llFocusBg.setPadding((int) this$0.dpToPx(3.0f), 0, (int) this$0.dpToPx(3.0f), 0);
            return;
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding9 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding9 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding9 = null;
        }
        fragmentBluetoothAdvanceBinding9.llFocusBg.setBackground(null);
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding10 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding10 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding10 = null;
        }
        fragmentBluetoothAdvanceBinding10.tvTitleFocus.setTextColor(this$0.requireContext().getColor(R.color.white));
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding11 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding11 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding11 = null;
        }
        fragmentBluetoothAdvanceBinding11.tvTitleFocus.setTextSize(24.0f);
        if (!BluetoothManager.INSTANCE.isDeviceConnected(bluetoothDevice)) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding12 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding12 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding12 = null;
            }
            fragmentBluetoothAdvanceBinding12.vRing.showOnNormal();
        } else {
            BluetoothViewModel bluetoothViewModel3 = this$0.viewModel;
            if (bluetoothViewModel3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                bluetoothViewModel3 = null;
            }
            if (bluetoothViewModel3.getState().getValue() != BluetoothState.CONNECTING) {
                BluetoothViewModel bluetoothViewModel4 = this$0.viewModel;
                if (bluetoothViewModel4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                    bluetoothViewModel4 = null;
                }
                if (bluetoothViewModel4.getState().getValue() != BluetoothState.DISCONNECTING) {
                    FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding13 = this$0.binding;
                    if (fragmentBluetoothAdvanceBinding13 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("binding");
                        fragmentBluetoothAdvanceBinding13 = null;
                    }
                    fragmentBluetoothAdvanceBinding13.vRing.showOnConfirm();
                }
            }
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding14 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding14 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding14 = null;
            }
            fragmentBluetoothAdvanceBinding14.vRing.showLoading();
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding15 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding15 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding = fragmentBluetoothAdvanceBinding15;
        }
        fragmentBluetoothAdvanceBinding.llFocusBg.setPadding(0, 0, (int) this$0.dpToPx(3.0f), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void initView$lambda$1(BluetoothAdvanceFragment this$0, View view, boolean z) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding = null;
        if (z) {
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding2 = null;
            }
            fragmentBluetoothAdvanceBinding2.tvRemove.setTextColor(this$0.requireContext().getColor(R.color.black));
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentBluetoothAdvanceBinding3 = null;
            }
            fragmentBluetoothAdvanceBinding3.tvRemove.setTextSize(30.0f);
            FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4 = this$0.binding;
            if (fragmentBluetoothAdvanceBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBluetoothAdvanceBinding = fragmentBluetoothAdvanceBinding4;
            }
            fragmentBluetoothAdvanceBinding.flRemove.setBackground(this$0.requireContext().getDrawable(R.drawable.bg_setting_choose));
            return;
        }
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding5 = null;
        }
        fragmentBluetoothAdvanceBinding5.tvRemove.setTextSize(24.0f);
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding6 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding6 = null;
        }
        fragmentBluetoothAdvanceBinding6.tvRemove.setTextColor(this$0.requireContext().getColor(R.color.white));
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding7 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding7 = null;
        }
        fragmentBluetoothAdvanceBinding7.flRemove.setBackground(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRemoveDevice(BluetoothDevice device) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new BluetoothAdvanceFragment$onRemoveDevice$1(device, this, null), 3, null);
    }

    private final float dpToPx(float dp) {
        Resources resources;
        Context context = getContext();
        DisplayMetrics displayMetrics = (context == null || (resources = context.getResources()) == null) ? null : resources.getDisplayMetrics();
        return dp * (displayMetrics != null ? displayMetrics.density : 0.0f);
    }
}
