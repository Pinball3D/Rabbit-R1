package tech.rabbit.r1launcher.settings.bluetooth.page;

import io.sentry.protocol.MetricSummary;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothSettingFragment.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$enableBluetooth$1", f = "BluetoothSettingFragment.kt", i = {0}, l = {330}, m = "invokeSuspend", n = {MetricSummary.JsonKeys.COUNT}, s = {"I$0"})
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment$enableBluetooth$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int I$0;
    int label;
    final /* synthetic */ BluetoothSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothSettingFragment$enableBluetooth$1(BluetoothSettingFragment bluetoothSettingFragment, Continuation<? super BluetoothSettingFragment$enableBluetooth$1> continuation) {
        super(2, continuation);
        this.this$0 = bluetoothSettingFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothSettingFragment$enableBluetooth$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothSettingFragment$enableBluetooth$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x003b -> B:5:0x003e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r6) {
        /*
            r5 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L19
            if (r1 != r2) goto L11
            int r1 = r5.I$0
            kotlin.ResultKt.throwOnFailure(r6)
            goto L3e
        L11:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L19:
            kotlin.ResultKt.throwOnFailure(r6)
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r6 = r5.this$0
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$findMyDeviceList(r6)
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r6 = r5.this$0
            boolean r6 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$hasMyDevicesTitleInList(r6)
            if (r6 != 0) goto L50
            r6 = 10
            r1 = r6
        L2c:
            if (r1 <= 0) goto L50
            r6 = r5
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r5.I$0 = r1
            r5.label = r2
            r3 = 1000(0x3e8, double:4.94E-321)
            java.lang.Object r6 = kotlinx.coroutines.DelayKt.delay(r3, r6)
            if (r6 != r0) goto L3e
            return r0
        L3e:
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r6 = r5.this$0
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$findMyDeviceList(r6)
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r6 = r5.this$0
            boolean r6 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$hasMyDevicesTitleInList(r6)
            if (r6 == 0) goto L4d
            r1 = 0
            goto L2c
        L4d:
            int r1 = r1 + (-1)
            goto L2c
        L50:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$enableBluetooth$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
