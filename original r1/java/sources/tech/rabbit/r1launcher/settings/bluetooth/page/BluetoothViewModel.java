package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import io.sentry.protocol.Device;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager;

/* compiled from: BluetoothViewModel.kt */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0007\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u000e"}, d2 = {"Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothViewModel;", "Landroidx/lifecycle/ViewModel;", "()V", SentryThread.JsonKeys.STATE, "Landroidx/lifecycle/MutableLiveData;", "Ltech/rabbit/r1launcher/settings/bluetooth/page/BluetoothState;", "getState", "()Landroidx/lifecycle/MutableLiveData;", "realConnectToDevice", "", "context", "Landroid/content/Context;", Device.TYPE, "Landroid/bluetooth/BluetoothDevice;", "app_productionEnvRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BluetoothViewModel extends ViewModel {
    public static final int $stable = 8;
    private final MutableLiveData<BluetoothState> state = new MutableLiveData<>();

    public final MutableLiveData<BluetoothState> getState() {
        return this.state;
    }

    public final void realConnectToDevice(Context context, BluetoothDevice device) {
        Intrinsics.checkNotNullParameter(context, "context");
        boolean isDeviceConnected = BluetoothManager.INSTANCE.isDeviceConnected(device);
        if (isDeviceConnected) {
            this.state.setValue(BluetoothState.DISCONNECTED);
        } else {
            this.state.setValue(BluetoothState.CONNECTING);
        }
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new BluetoothViewModel$realConnectToDevice$1(isDeviceConnected, device, context, this, null), 3, null);
    }
}
