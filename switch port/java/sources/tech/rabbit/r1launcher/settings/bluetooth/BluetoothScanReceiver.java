package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BluetoothScanReceiver.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001c\u0010\r\u001a\u00020\b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082D¢\u0006\u0002\n\u0000R&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0012"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothScanReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "TAG", "", "onDeviceFound", "Lkotlin/Function1;", "Landroid/bluetooth/BluetoothDevice;", "", "getOnDeviceFound", "()Lkotlin/jvm/functions/Function1;", "setOnDeviceFound", "(Lkotlin/jvm/functions/Function1;)V", "onReceive", "context", "Landroid/content/Context;", "intent", "Landroid/content/Intent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothScanReceiver extends BroadcastReceiver {
    public static final int $stable = 8;
    private final String TAG = "BluetoothScanReceiver";
    private Function1<? super BluetoothDevice, Unit> onDeviceFound = new Function1<BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothScanReceiver$onDeviceFound$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(BluetoothDevice it) {
            Intrinsics.checkNotNullParameter(it, "it");
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(BluetoothDevice bluetoothDevice) {
            invoke2(bluetoothDevice);
            return Unit.INSTANCE;
        }
    };

    public final Function1<BluetoothDevice, Unit> getOnDeviceFound() {
        return this.onDeviceFound;
    }

    public final void setOnDeviceFound(Function1<? super BluetoothDevice, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onDeviceFound = function1;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        BluetoothDevice bluetoothDevice;
        String name;
        String action = intent != null ? intent.getAction() : null;
        if (action == null || action.hashCode() != 1167529923 || !action.equals("android.bluetooth.device.action.FOUND") || (bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE")) == null || (name = bluetoothDevice.getName()) == null || name.length() == 0) {
            return;
        }
        this.onDeviceFound.invoke(bluetoothDevice);
        Log.i(this.TAG, "onReceive: found bluetooth device: " + bluetoothDevice);
    }
}
