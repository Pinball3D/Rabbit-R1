package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Broadcast.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BroadcastKt$broadcast$2", f = "Broadcast.kt", i = {0, 1}, l = {56, 57}, m = "invokeSuspend", n = {"$this$broadcast", "$this$broadcast"}, s = {"L$0", "L$0"})
/* loaded from: classes3.dex */
final class BroadcastKt$broadcast$2<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ ReceiveChannel<E> $channel;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public BroadcastKt$broadcast$2(ReceiveChannel<? extends E> receiveChannel, Continuation<? super BroadcastKt$broadcast$2> continuation) {
        super(2, continuation);
        this.$channel = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        BroadcastKt$broadcast$2 broadcastKt$broadcast$2 = new BroadcastKt$broadcast$2(this.$channel, continuation);
        broadcastKt$broadcast$2.L$0 = obj;
        return broadcastKt$broadcast$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((BroadcastKt$broadcast$2) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x004b A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0068 -> B:6:0x0019). Please report as a decompilation issue!!! */
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
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2f
            if (r1 == r3) goto L23
            if (r1 != r2) goto L1b
            java.lang.Object r1 = r7.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r7.L$0
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r8)
        L19:
            r8 = r4
            goto L3c
        L1b:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L23:
            java.lang.Object r1 = r7.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r7.L$0
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r8)
            goto L4f
        L2f:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r7.$channel
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
        L3c:
            r4 = r7
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r7.L$0 = r8
            r7.L$1 = r1
            r7.label = r3
            java.lang.Object r4 = r1.hasNext(r4)
            if (r4 != r0) goto L4c
            return r0
        L4c:
            r6 = r4
            r4 = r8
            r8 = r6
        L4f:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L6b
            java.lang.Object r8 = r1.next()
            r5 = r7
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r7.L$0 = r4
            r7.L$1 = r1
            r7.label = r2
            java.lang.Object r8 = r4.send(r8, r5)
            if (r8 != r0) goto L19
            return r0
        L6b:
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.BroadcastKt$broadcast$2.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
