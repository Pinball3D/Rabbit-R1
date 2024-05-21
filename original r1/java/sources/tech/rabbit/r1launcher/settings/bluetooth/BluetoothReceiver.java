package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BluetoothReceiver.kt */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0016R,\u0010\u0003\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR,\u0010\f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR,\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u00070\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\t\"\u0004\b\u0012\u0010\u000b¨\u0006\u0017"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/BluetoothReceiver;", "Landroid/content/BroadcastReceiver;", "()V", "onDeviceBonded", "Lkotlin/Function2;", "Landroid/content/Context;", "Landroid/bluetooth/BluetoothDevice;", "", "getOnDeviceBonded", "()Lkotlin/jvm/functions/Function2;", "setOnDeviceBonded", "(Lkotlin/jvm/functions/Function2;)V", "onDeviceUnbonded", "getOnDeviceUnbonded", "setOnDeviceUnbonded", "onStateChanged", "", "getOnStateChanged", "setOnStateChanged", "onReceive", "context", "intent", "Landroid/content/Intent;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothReceiver extends BroadcastReceiver {
    public static final int $stable = 8;
    private Function2<? super Context, ? super BluetoothDevice, Unit> onDeviceBonded = new Function2<Context, BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothReceiver$onDeviceBonded$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Context context, BluetoothDevice bluetoothDevice) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice) {
            invoke2(context, bluetoothDevice);
            return Unit.INSTANCE;
        }
    };
    private Function2<? super Context, ? super BluetoothDevice, Unit> onDeviceUnbonded = new Function2<Context, BluetoothDevice, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothReceiver$onDeviceUnbonded$1
        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2(Context context, BluetoothDevice bluetoothDevice) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(bluetoothDevice, "bluetoothDevice");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Context context, BluetoothDevice bluetoothDevice) {
            invoke2(context, bluetoothDevice);
            return Unit.INSTANCE;
        }
    };
    private Function2<? super Context, ? super Integer, Unit> onStateChanged = new Function2<Context, Integer, Unit>() { // from class: tech.rabbit.r1launcher.settings.bluetooth.BluetoothReceiver$onStateChanged$1
        public final void invoke(Context context, int i) {
            Intrinsics.checkNotNullParameter(context, "context");
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Unit invoke(Context context, Integer num) {
            invoke(context, num.intValue());
            return Unit.INSTANCE;
        }
    };

    public final Function2<Context, BluetoothDevice, Unit> getOnDeviceBonded() {
        return this.onDeviceBonded;
    }

    public final Function2<Context, BluetoothDevice, Unit> getOnDeviceUnbonded() {
        return this.onDeviceUnbonded;
    }

    public final Function2<Context, Integer, Unit> getOnStateChanged() {
        return this.onStateChanged;
    }

    public final void setOnDeviceBonded(Function2<? super Context, ? super BluetoothDevice, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onDeviceBonded = function2;
    }

    public final void setOnDeviceUnbonded(Function2<? super Context, ? super BluetoothDevice, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onDeviceUnbonded = function2;
    }

    public final void setOnStateChanged(Function2<? super Context, ? super Integer, Unit> function2) {
        Intrinsics.checkNotNullParameter(function2, "<set-?>");
        this.onStateChanged = function2;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(intent, "intent");
        String action = intent.getAction();
        if (action == null) {
            return;
        }
        if (Intrinsics.areEqual("android.bluetooth.device.action.ACL_CONNECTED", action)) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice == null) {
                return;
            }
            this.onDeviceBonded.invoke(context, bluetoothDevice);
            return;
        }
        if (Intrinsics.areEqual("android.bluetooth.device.action.ACL_DISCONNECTED", action)) {
            BluetoothDevice bluetoothDevice2 = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
            if (bluetoothDevice2 == null) {
                return;
            }
            this.onDeviceUnbonded.invoke(context, bluetoothDevice2);
            return;
        }
        if (Intrinsics.areEqual("android.bluetooth.adapter.action.STATE_CHANGED", action)) {
            this.onStateChanged.invoke(context, Integer.valueOf(intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 0)));
        }
    }
}
