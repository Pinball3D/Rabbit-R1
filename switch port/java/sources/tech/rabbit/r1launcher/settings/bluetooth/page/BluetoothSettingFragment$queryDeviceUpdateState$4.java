package tech.rabbit.r1launcher.settings.bluetooth.page;

import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import tech.rabbit.r1launcher.models.settings.BluetoothListData;
import tech.rabbit.r1launcher.settings.adapter.BluetoothSettingAdapter;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothSettingFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$queryDeviceUpdateState$4", f = "BluetoothSettingFragment.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment$queryDeviceUpdateState$4 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ List<BluetoothListData> $myDevices;
    int label;
    final /* synthetic */ BluetoothSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothSettingFragment$queryDeviceUpdateState$4(BluetoothSettingFragment bluetoothSettingFragment, List<BluetoothListData> list, Continuation<? super BluetoothSettingFragment$queryDeviceUpdateState$4> continuation) {
        super(2, continuation);
        this.this$0 = bluetoothSettingFragment;
        this.$myDevices = list;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothSettingFragment$queryDeviceUpdateState$4(this.this$0, this.$myDevices, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothSettingFragment$queryDeviceUpdateState$4) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        BluetoothSettingAdapter bluetoothSettingAdapter;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label == 0) {
            ResultKt.throwOnFailure(obj);
            bluetoothSettingAdapter = this.this$0.adapter;
            if (bluetoothSettingAdapter == null) {
                return null;
            }
            bluetoothSettingAdapter.notifyItemRangeInserted(1, this.$myDevices.size() + 1);
            return Unit.INSTANCE;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
