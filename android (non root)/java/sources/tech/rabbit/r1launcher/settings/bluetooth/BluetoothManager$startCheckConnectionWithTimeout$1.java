package tech.rabbit.r1launcher.settings.bluetooth;

import android.bluetooth.BluetoothDevice;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import okhttp3.internal.http.StatusLine;

/* compiled from: BluetoothManager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1", f = "BluetoothManager.kt", i = {0, 0, 1, 1, 2, 2}, l = {StatusLine.HTTP_TEMP_REDIRECT, 310, 315}, m = "invokeSuspend", n = {"$this$launch", "start", "$this$launch", "start", "$this$launch", "start"}, s = {"L$0", "J$0", "L$0", "J$0", "L$0", "J$0"})
/* loaded from: classes3.dex */
final class BluetoothManager$startCheckConnectionWithTimeout$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function1<Boolean, Unit> $connectingListener;
    final /* synthetic */ BluetoothDevice $device;
    final /* synthetic */ long $interval;
    final /* synthetic */ long $timeout;
    long J$0;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BluetoothManager$startCheckConnectionWithTimeout$1(long j, BluetoothDevice bluetoothDevice, long j2, Function1<? super Boolean, Unit> function1, Continuation<? super BluetoothManager$startCheckConnectionWithTimeout$1> continuation) {
        super(2, continuation);
        this.$interval = j;
        this.$device = bluetoothDevice;
        this.$timeout = j2;
        this.$connectingListener = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BluetoothManager$startCheckConnectionWithTimeout$1 bluetoothManager$startCheckConnectionWithTimeout$1 = new BluetoothManager$startCheckConnectionWithTimeout$1(this.$interval, this.$device, this.$timeout, this.$connectingListener, continuation);
        bluetoothManager$startCheckConnectionWithTimeout$1.L$0 = obj;
        return bluetoothManager$startCheckConnectionWithTimeout$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BluetoothManager$startCheckConnectionWithTimeout$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0063 -> B:9:0x0047). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0094 -> B:9:0x0047). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0096 -> B:9:0x0047). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a3 -> B:9:0x0047). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x00c1 -> B:7:0x00c4). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r13) {
        /*
            r12 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r12.label
            r2 = 3
            r3 = 2
            r4 = 1
            r5 = 0
            if (r1 == 0) goto L3c
            if (r1 == r4) goto L31
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            long r6 = r12.J$0
            java.lang.Object r1 = r12.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r1
            goto Lc4
        L1e:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L26:
            long r6 = r12.J$0
            java.lang.Object r1 = r12.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r1
            goto L8e
        L31:
            long r6 = r12.J$0
            java.lang.Object r1 = r12.L$0
            kotlinx.coroutines.CoroutineScope r1 = (kotlinx.coroutines.CoroutineScope) r1
            kotlin.ResultKt.throwOnFailure(r13)
            r13 = r1
            goto L5f
        L3c:
            kotlin.ResultKt.throwOnFailure(r13)
            java.lang.Object r13 = r12.L$0
            kotlinx.coroutines.CoroutineScope r13 = (kotlinx.coroutines.CoroutineScope) r13
            long r6 = java.lang.System.currentTimeMillis()
        L47:
            boolean r1 = kotlinx.coroutines.CoroutineScopeKt.isActive(r13)
            if (r1 == 0) goto Ld1
            long r8 = r12.$interval
            r1 = r12
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r12.L$0 = r13
            r12.J$0 = r6
            r12.label = r4
            java.lang.Object r1 = kotlinx.coroutines.DelayKt.delay(r8, r1)
            if (r1 != r0) goto L5f
            return r0
        L5f:
            boolean r1 = kotlinx.coroutines.CoroutineScopeKt.isActive(r13)
            if (r1 == 0) goto L47
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r1 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            android.bluetooth.BluetoothDevice r8 = r12.$device
            boolean r1 = r1.isDeviceConnected(r8)
            if (r1 == 0) goto L9a
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$1 r8 = new tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$1
            kotlin.jvm.functions.Function1<java.lang.Boolean, kotlin.Unit> r9 = r12.$connectingListener
            r8.<init>(r9, r5)
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            r9 = r12
            kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
            r12.L$0 = r13
            r12.J$0 = r6
            r12.label = r3
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r1, r8, r9)
            if (r1 != r0) goto L8e
            return r0
        L8e:
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r1 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            kotlinx.coroutines.Job r1 = r1.getTimeoutJob()
            if (r1 == 0) goto L47
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r1, r5, r4, r5)
            goto L47
        L9a:
            long r8 = java.lang.System.currentTimeMillis()
            long r8 = r8 - r6
            long r10 = r12.$timeout
            int r1 = (r8 > r10 ? 1 : (r8 == r10 ? 0 : -1))
            if (r1 <= 0) goto L47
            kotlinx.coroutines.MainCoroutineDispatcher r1 = kotlinx.coroutines.Dispatchers.getMain()
            kotlin.coroutines.CoroutineContext r1 = (kotlin.coroutines.CoroutineContext) r1
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$2 r8 = new tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$2
            kotlin.jvm.functions.Function1<java.lang.Boolean, kotlin.Unit> r9 = r12.$connectingListener
            r8.<init>(r9, r5)
            kotlin.jvm.functions.Function2 r8 = (kotlin.jvm.functions.Function2) r8
            r9 = r12
            kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
            r12.L$0 = r13
            r12.J$0 = r6
            r12.label = r2
            java.lang.Object r1 = kotlinx.coroutines.BuildersKt.withContext(r1, r8, r9)
            if (r1 != r0) goto Lc4
            return r0
        Lc4:
            tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager r1 = tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager.INSTANCE
            kotlinx.coroutines.Job r1 = r1.getTimeoutJob()
            if (r1 == 0) goto L47
            kotlinx.coroutines.Job.DefaultImpls.cancel$default(r1, r5, r4, r5)
            goto L47
        Ld1:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$1", f = "BluetoothManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Boolean, Unit> $connectingListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(Function1<? super Boolean, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$connectingListener = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$connectingListener, continuation);
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
                this.$connectingListener.invoke(Boxing.boxBoolean(true));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BluetoothManager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 9, 0}, xi = 48)
    @DebugMetadata(c = "tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$2", f = "BluetoothManager.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: tech.rabbit.r1launcher.settings.bluetooth.BluetoothManager$startCheckConnectionWithTimeout$1$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<Boolean, Unit> $connectingListener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function1<? super Boolean, Unit> function1, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$connectingListener = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$connectingListener, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                this.$connectingListener.invoke(Boxing.boxBoolean(false));
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }
}
