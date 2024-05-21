package tech.rabbit.r1launcher.settings.bluetooth.page;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: BluetoothViewModel.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1", f = "BluetoothViewModel.kt", i = {}, l = {33, 34, 43}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes3.dex */
final class BluetoothViewModel$realConnectToDevice$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ boolean $connected;
    final /* synthetic */ Context $context;
    final /* synthetic */ BluetoothDevice $device;
    int label;
    final /* synthetic */ BluetoothViewModel this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BluetoothViewModel$realConnectToDevice$1(boolean z, BluetoothDevice bluetoothDevice, Context context, BluetoothViewModel bluetoothViewModel, Continuation<? super BluetoothViewModel$realConnectToDevice$1> continuation) {
        super(2, continuation);
        this.$connected = z;
        this.$device = bluetoothDevice;
        this.$context = context;
        this.this$0 = bluetoothViewModel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BluetoothViewModel$realConnectToDevice$1(this.$connected, this.$device, this.$context, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothViewModel$realConnectToDevice$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x005f A[RETURN] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r8) {
        /*
            r7 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r7.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L22
            if (r1 == r4) goto L1e
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            goto L1a
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L1a:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L7d
        L1e:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L3e
        L22:
            kotlin.ResultKt.throwOnFailure(r8)
            boolean r8 = r7.$connected
            if (r8 == 0) goto L60
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r8 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            android.bluetooth.BluetoothDevice r1 = r7.$device
            if (r1 != 0) goto L32
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        L32:
            r2 = r7
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r7.label = r4
            java.lang.Object r8 = r8.disconnectDevice(r1, r2)
            if (r8 != r0) goto L3e
            return r0
        L3e:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$1 r2 = new tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$1
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel r4 = r7.this$0
            r5 = 0
            r2.<init>(r8, r4, r5)
            kotlin.jvm.functions.Function2 r2 = (kotlin.jvm.functions.Function2) r2
            r8 = r7
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            r7.label = r3
            java.lang.Object r7 = kotlinx.coroutines.BuildersKt.withContext(r1, r2, r8)
            if (r7 != r0) goto L7d
            return r0
        L60:
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r8 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            android.content.Context r1 = r7.$context
            android.bluetooth.BluetoothDevice r3 = r7.$device
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$2 r4 = new tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$2
            android.bluetooth.BluetoothDevice r5 = r7.$device
            tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel r6 = r7.this$0
            r4.<init>()
            kotlin.jvm.functions.Function1 r4 = (kotlin.jvm.functions.Function1) r4
            r5 = r7
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r7.label = r2
            java.lang.Object r7 = r8.connectDevice(r1, r3, r4, r5)
            if (r7 != r0) goto L7d
            return r0
        L7d:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothViewModel.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$1", f = "BluetoothViewModel.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.settings.bluetooth.page.BluetoothViewModel$realConnectToDevice$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $result;
        int label;
        final /* synthetic */ BluetoothViewModel this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(boolean z, BluetoothViewModel bluetoothViewModel, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$result = z;
            this.this$0 = bluetoothViewModel;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$result, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                if (this.$result) {
                    this.this$0.getState().setValue(BluetoothState.DISCONNECTED);
                } else {
                    this.this$0.getState().setValue(BluetoothState.NORMAL);
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
