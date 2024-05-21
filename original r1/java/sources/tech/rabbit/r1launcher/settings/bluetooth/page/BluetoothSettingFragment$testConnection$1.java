package tech.rabbit.r1launcher.settings.bluetooth.page;

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
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$testConnection$1", f = "BluetoothSettingFragment.kt", i = {}, l = {401, 403, 405}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
public final class BluetoothSettingFragment$testConnection$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BluetoothSettingFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothSettingFragment$testConnection$1(BluetoothSettingFragment bluetoothSettingFragment, Continuation<? super BluetoothSettingFragment$testConnection$1> continuation) {
        super(2, continuation);
        this.this$0 = bluetoothSettingFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothSettingFragment$testConnection$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothSettingFragment$testConnection$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006d A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x006b -> B:12:0x0033). Please report as a decompilation issue!!! */
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
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            goto L1e
        L12:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L1a:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L59
        L1e:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L33
        L22:
            kotlin.ResultKt.throwOnFailure(r7)
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.label = r4
            r4 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)
            if (r7 != r0) goto L33
            return r0
        L33:
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r7 = r6.this$0
            boolean r7 = r7.isDetached()
            if (r7 != 0) goto L6e
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r7 = r6.this$0
            boolean r7 = r7.isAdded()
            if (r7 == 0) goto L6e
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r7 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            boolean r7 = r7.isBluetoothOpened()
            if (r7 == 0) goto L6e
            r7 = r6
            kotlin.coroutines.Continuation r7 = (kotlin.coroutines.Continuation) r7
            r6.label = r3
            r4 = 2000(0x7d0, double:9.88E-321)
            java.lang.Object r7 = kotlinx.coroutines.DelayKt.delay(r4, r7)
            if (r7 != r0) goto L59
            return r0
        L59:
            java.lang.String r7 = "TAG"
            java.lang.String r1 = "testConnection: "
            android.util.Log.i(r7, r1)
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment r7 = r6.this$0
            r1 = r6
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r6.label = r2
            java.lang.Object r7 = tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment.access$queryDeviceUpdateState(r7, r1)
            if (r7 != r0) goto L33
            return r0
        L6e:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothSettingFragment$testConnection$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
