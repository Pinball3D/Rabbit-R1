package tech.rabbit.r1launcher.settings.bluetooth.page;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothSettingFragment.kt */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment", f = "BluetoothSettingFragment.kt", i = {0, 0}, l = {430}, m = "queryDeviceUpdateState", n = {"this", "myDevices"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment$queryDeviceUpdateState$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ BluetoothSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothSettingFragment$queryDeviceUpdateState$1(BluetoothSettingFragment bluetoothSettingFragment, Continuation<? super BluetoothSettingFragment$queryDeviceUpdateState$1> continuation) {
        super(continuation);
        this.this$0 = bluetoothSettingFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object queryDeviceUpdateState;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        queryDeviceUpdateState = this.this$0.queryDeviceUpdateState(this);
        return queryDeviceUpdateState;
    }
}
