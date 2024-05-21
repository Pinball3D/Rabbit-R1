package tech.rabbit.r1launcher.settings.bluetooth;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BluetoothManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startScan$2", f = "BluetoothManager.kt", i = {}, l = {95, 97}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BluetoothManager$startScan$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BluetoothManager$startScan$2(Continuation<? super BluetoothManager$startScan$2> continuation) {
        super(2, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothManager$startScan$2(continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothManager$startScan$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0051 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x004f -> B:11:0x001e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L1b
            if (r1 == r3) goto L17
            if (r1 != r2) goto Lf
            goto L1b
        Lf:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L17:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L3b
        L1b:
            kotlin.ResultKt.throwOnFailure(r7)
        L1e:
            boolean r7 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.access$getNeedScan$p()
            if (r7 == 0) goto L52
            android.bluetooth.BluetoothAdapter r7 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.access$getBluetoothAdapter$p()
            r7.startDiscovery()
            long r4 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.access$getSCAN_TIME$p()
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.label = r3
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)
            if (r7 != r0) goto L3b
            return r0
        L3b:
            android.bluetooth.BluetoothAdapter r7 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.access$getBluetoothAdapter$p()
            r7.cancelDiscovery()
            long r4 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.access$getSCAN_TIME$p()
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.label = r2
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)
            if (r7 != r0) goto L1e
            return r0
        L52:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startScan$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
