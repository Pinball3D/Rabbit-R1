package tech.rabbit.r1launcher.settings.bluetooth;

import androidx.constraintlayout.solver.widgets.Optimizer;
import io.sentry.protocol.Device;
import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothManager.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager", f = "BluetoothManager.kt", i = {0, 0, 0, 1, 1, 1, 1, 3, 3, 3, 3}, l = {234, 253, 257, Optimizer.OPTIMIZATION_STANDARD, 266}, m = "connectDevice", n = {"this", Device.TYPE, "listener", "this", Device.TYPE, "listener", MetricSummary.JsonKeys.COUNT, "this", Device.TYPE, "listener", MetricSummary.JsonKeys.COUNT}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "I$0"})
/* loaded from: classes3.dex */
public final class BluetoothManager$connectDevice$1 extends ContinuationImpl {
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BluetoothManager this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothManager$connectDevice$1(BluetoothManager bluetoothManager, Continuation<? super BluetoothManager$connectDevice$1> continuation) {
        super(continuation);
        this.this$0 = bluetoothManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.connectDevice(null, null, null, this);
    }
}
