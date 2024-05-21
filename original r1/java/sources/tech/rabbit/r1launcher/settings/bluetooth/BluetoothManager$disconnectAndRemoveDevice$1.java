package tech.rabbit.r1launcher.settings.bluetooth;

import io.sentry.protocol.Device;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothManager.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager", f = "BluetoothManager.kt", i = {0}, l = {170, 179}, m = "disconnectAndRemoveDevice", n = {Device.TYPE}, s = {"L$0"})
/* loaded from: classes3.dex */
public final class BluetoothManager$disconnectAndRemoveDevice$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BluetoothManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothManager$disconnectAndRemoveDevice$1(BluetoothManager bluetoothManager, Continuation<? super BluetoothManager$disconnectAndRemoveDevice$1> continuation) {
        super(continuation);
        this.this$0 = bluetoothManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.disconnectAndRemoveDevice(null, this);
    }
}
