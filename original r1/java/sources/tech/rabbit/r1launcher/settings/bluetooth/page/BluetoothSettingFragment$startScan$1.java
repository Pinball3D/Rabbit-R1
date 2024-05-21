package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import com.rubensousa.dpadrecyclerview.DpadRecyclerView;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import tech.rabbit.r1launcher.databinding.FragmentBluetoothSettingBinding;
import tech.rabbit.r1launcher.models.settings.BluetoothListData;
import tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothSettingFragment.kt */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "scanResult", "Landroid/bluetooth/BluetoothDevice;", "invoke"}, k = 3, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment$startScan$1 extends Lambda implements Function1<BluetoothDevice, Unit> {
    final /* synthetic */ BluetoothSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothSettingFragment$startScan$1(BluetoothSettingFragment bluetoothSettingFragment) {
        super(1);
        this.this$0 = bluetoothSettingFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
        invoke2(bluetoothDevice);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(BluetoothDevice scanResult) {
        ArrayList arrayList;
        ArrayList arrayList2;
        FragmentBluetoothSettingBinding fragmentBluetoothSettingBinding;
        DpadRecyclerView dpadRecyclerView;
        Intrinsics.checkNotNullParameter(scanResult, "scanResult");
        arrayList = this.this$0.dataList;
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList) {
            BluetoothListData bluetoothListData = (BluetoothListData) obj;
            BluetoothDevice device = bluetoothListData.getDevice();
            if (Intrinsics.areEqual(device != null ? device.getName() : null, scanResult.getName())) {
                BluetoothDevice device2 = bluetoothListData.getDevice();
                if (Intrinsics.areEqual(device2 != null ? device2.getAddress() : null, scanResult.getAddress())) {
                    arrayList3.add(obj);
                }
            }
        }
        if (arrayList3.isEmpty()) {
            arrayList2 = this.this$0.dataList;
            BluetoothListData bluetoothListData2 = new BluetoothListData(1);
            bluetoothListData2.setDevice(scanResult);
            arrayList2.add(bluetoothListData2);
            fragmentBluetoothSettingBinding = this.this$0.binding;
            if (fragmentBluetoothSettingBinding == null || (dpadRecyclerView = fragmentBluetoothSettingBinding.rv) == null) {
                return;
            }
            final BluetoothSettingFragment bluetoothSettingFragment = this.this$0;
            dpadRecyclerView.post(new Runnable() { // from class: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$startScan$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    BluetoothSettingFragment$startScan$1.invoke$lambda$2(BluetoothSettingFragment.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$2(BluetoothSettingFragment this$0) {
        BluetoothSettingAdapter bluetoothSettingAdapter;
        ArrayList arrayList;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        bluetoothSettingAdapter = this$0.adapter;
        if (bluetoothSettingAdapter != null) {
            arrayList = this$0.dataList;
            bluetoothSettingAdapter.notifyItemChanged(arrayList.size() - 1);
        }
    }
}
