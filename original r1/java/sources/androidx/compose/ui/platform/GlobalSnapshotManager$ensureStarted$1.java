package androidx.compose.ui.platform;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: GlobalSnapshotManager.android.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1", f = "GlobalSnapshotManager.android.kt", i = {0}, l = {63}, m = "invokeSuspend", n = {"$this$consume$iv$iv"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class GlobalSnapshotManager$ensureStarted$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Channel<Unit> $channel;
    Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GlobalSnapshotManager$ensureStarted$1(Channel<Unit> channel, Continuation<? super GlobalSnapshotManager$ensureStarted$1> continuation) {
        super(2, continuation);
        this.$channel = channel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new GlobalSnapshotManager$ensureStarted$1(this.$channel, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((GlobalSnapshotManager$ensureStarted$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0038 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0041 A[Catch: all -> 0x0054, TRY_LEAVE, TryCatch #0 {all -> 0x0054, blocks: (B:6:0x0013, B:7:0x0039, B:9:0x0041, B:10:0x002c, B:20:0x0027), top: B:2:0x0007 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:7:0x0039). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r5) {
        /*
            r4 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r4.label
            r2 = 1
            if (r1 == 0) goto L1f
            if (r1 != r2) goto L17
            java.lang.Object r1 = r4.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r3 = r4.L$0
            kotlinx.coroutines.channels.ReceiveChannel r3 = (kotlinx.coroutines.channels.ReceiveChannel) r3
            kotlin.ResultKt.throwOnFailure(r5)     // Catch: java.lang.Throwable -> L54
            goto L39
        L17:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L1f:
            kotlin.ResultKt.throwOnFailure(r5)
            kotlinx.coroutines.channels.Channel<kotlin.Unit> r5 = r4.$channel
            r3 = r5
            kotlinx.coroutines.channels.ReceiveChannel r3 = (kotlinx.coroutines.channels.ReceiveChannel) r3
            kotlinx.coroutines.channels.ChannelIterator r5 = r3.iterator()     // Catch: java.lang.Throwable -> L54
            r1 = r5
        L2c:
            r4.L$0 = r3     // Catch: java.lang.Throwable -> L54
            r4.L$1 = r1     // Catch: java.lang.Throwable -> L54
            r4.label = r2     // Catch: java.lang.Throwable -> L54
            java.lang.Object r5 = r1.hasNext(r4)     // Catch: java.lang.Throwable -> L54
            if (r5 != r0) goto L39
            return r0
        L39:
            java.lang.Boolean r5 = (java.lang.Boolean) r5     // Catch: java.lang.Throwable -> L54
            boolean r5 = r5.booleanValue()     // Catch: java.lang.Throwable -> L54
            if (r5 == 0) goto L4d
            java.lang.Object r5 = r1.next()     // Catch: java.lang.Throwable -> L54
            kotlin.Unit r5 = (kotlin.Unit) r5     // Catch: java.lang.Throwable -> L54
            androidx.compose.runtime.snapshots.Snapshot$Companion r5 = androidx.compose.runtime.snapshots.Snapshot.INSTANCE     // Catch: java.lang.Throwable -> L54
            r5.sendApplyNotifications()     // Catch: java.lang.Throwable -> L54
            goto L2c
        L4d:
            r4 = 0
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r3, r4)
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            return r4
        L54:
            r4 = move-exception
            throw r4     // Catch: java.lang.Throwable -> L56
        L56:
            r5 = move-exception
            kotlinx.coroutines.channels.ChannelsKt.cancelConsumed(r3, r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.ui.platform.GlobalSnapshotManager$ensureStarted$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
