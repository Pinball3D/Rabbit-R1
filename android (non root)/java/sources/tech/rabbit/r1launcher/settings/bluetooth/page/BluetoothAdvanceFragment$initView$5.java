package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import tech.rabbit.r1launcher.R;
import tech.rabbit.r1launcher.databinding.FragmentBluetoothAdvanceBinding;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothAdvanceFragment.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/view/View;", "<anonymous parameter 1>", "", "<anonymous parameter 2>", "Landroid/view/KeyEvent;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothAdvanceFragment$initView$5 extends Lambda implements Function3<View, Integer, KeyEvent, Unit> {
    final /* synthetic */ BluetoothDevice $device;
    final /* synthetic */ BluetoothAdvanceFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothAdvanceFragment$initView$5(BluetoothAdvanceFragment bluetoothAdvanceFragment, BluetoothDevice bluetoothDevice) {
        super(3);
        this.this$0 = bluetoothAdvanceFragment;
        this.$device = bluetoothDevice;
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(View view, Integer num, KeyEvent keyEvent) {
        invoke(view, num.intValue(), keyEvent);
        return Unit.INSTANCE;
    }

    public final void invoke(View view, int i, KeyEvent keyEvent) {
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding;
        BluetoothViewModel bluetoothViewModel;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2;
        Intrinsics.checkNotNullParameter(view, "<anonymous parameter 0>");
        Intrinsics.checkNotNullParameter(keyEvent, "<anonymous parameter 2>");
        fragmentBluetoothAdvanceBinding = this.this$0.binding;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3 = null;
        if (fragmentBluetoothAdvanceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding = null;
        }
        if (fragmentBluetoothAdvanceBinding.flConnectError.getVisibility() == 0) {
            bluetoothViewModel = this.this$0.viewModel;
            if (bluetoothViewModel == null) {
                Intrinsics.throwUninitializedPropertyAccessException("viewModel");
                bluetoothViewModel = null;
            }
            Context requireContext = this.this$0.requireContext();
            Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext(...)");
            bluetoothViewModel.realConnectToDevice(requireContext, this.$device);
            fragmentBluetoothAdvanceBinding2 = this.this$0.binding;
            if (fragmentBluetoothAdvanceBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentBluetoothAdvanceBinding3 = fragmentBluetoothAdvanceBinding2;
            }
            TextView textView = fragmentBluetoothAdvanceBinding3.tvRemove;
            final BluetoothAdvanceFragment bluetoothAdvanceFragment = this.this$0;
            textView.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothAdvanceFragment$initView$5$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothAdvanceFragment$initView$5.invoke$lambda$0(BluetoothAdvanceFragment.this);
                }
            });
            return;
        }
        this.this$0.onRemoveDevice(this.$device);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$0(BluetoothAdvanceFragment this$0) {
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding2;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding3;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding4;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding5;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding6;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        fragmentBluetoothAdvanceBinding = this$0.binding;
        FragmentBluetoothAdvanceBinding fragmentBluetoothAdvanceBinding7 = null;
        if (fragmentBluetoothAdvanceBinding == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding = null;
        }
        fragmentBluetoothAdvanceBinding.flRemove.setVisibility(8);
        fragmentBluetoothAdvanceBinding2 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding2 = null;
        }
        fragmentBluetoothAdvanceBinding2.flConnectError.setVisibility(8);
        fragmentBluetoothAdvanceBinding3 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding3 = null;
        }
        fragmentBluetoothAdvanceBinding3.flDeviceContainer.setVisibility(0);
        fragmentBluetoothAdvanceBinding4 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding4 = null;
        }
        fragmentBluetoothAdvanceBinding4.tvRemove.setText(this$0.getString(R.string.remove));
        fragmentBluetoothAdvanceBinding5 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentBluetoothAdvanceBinding5 = null;
        }
        fragmentBluetoothAdvanceBinding5.llFocusBg.requestFocus();
        fragmentBluetoothAdvanceBinding6 = this$0.binding;
        if (fragmentBluetoothAdvanceBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentBluetoothAdvanceBinding7 = fragmentBluetoothAdvanceBinding6;
        }
        fragmentBluetoothAdvanceBinding7.vRing.showLoading();
    }
}
