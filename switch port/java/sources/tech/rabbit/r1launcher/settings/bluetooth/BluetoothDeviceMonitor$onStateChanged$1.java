package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothDevice;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothDeviceMonitor.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothDeviceMonitor$onStateChanged$1", f = "BluetoothDeviceMonitor.kt", i = {}, l = {141}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BluetoothDeviceMonitor$onStateChanged$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ BluetoothDeviceMonitor this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothDeviceMonitor$onStateChanged$1(BluetoothDeviceMonitor bluetoothDeviceMonitor, Continuation<? super BluetoothDeviceMonitor$onStateChanged$1> continuation) {
        super(2, continuation);
        this.this$0 = bluetoothDeviceMonitor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothDeviceMonitor$onStateChanged$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothDeviceMonitor$onStateChanged$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ArrayList arrayList;
        Iterator it;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            arrayList = this.this$0.bondedDevices;
            it = arrayList.iterator();
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        while (it.hasNext()) {
            BluetoothDevice bluetoothDevice = (BluetoothDevice) it.next();
            BluetoothManager bluetoothManager = BluetoothManager.INSTANCE;
            this.L$0 = it;
            this.label = 1;
            if (bluetoothManager.disconnectDevice(bluetoothDevice, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
