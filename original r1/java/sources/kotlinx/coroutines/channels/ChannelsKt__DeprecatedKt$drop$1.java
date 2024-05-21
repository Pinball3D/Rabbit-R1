package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1", f = "Deprecated.kt", i = {0, 0, 1, 2}, l = {164, 169, 170}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "$this$produce"}, s = {"L$0", "I$0", "L$0", "L$0"})
/* loaded from: classes3.dex */
final class ChannelsKt__DeprecatedKt$drop$1<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $n;
    final /* synthetic */ ReceiveChannel<E> $this_drop;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$drop$1(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$drop$1> continuation) {
        super(2, continuation);
        this.$n = i;
        this.$this_drop = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$drop$1 channelsKt__DeprecatedKt$drop$1 = new ChannelsKt__DeprecatedKt$drop$1(this.$n, this.$this_drop, continuation);
        channelsKt__DeprecatedKt$drop$1.L$0 = obj;
        return channelsKt__DeprecatedKt$drop$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$drop$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0078, code lost:
    
        if (r1 == 0) goto L27;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0073  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00ad -> B:7:0x001c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0068 -> B:24:0x006b). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r8.label
            r2 = 3
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L40
            if (r1 == r4) goto L32
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r9)
        L1c:
            r9 = r4
            goto L81
        L1e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L26:
            java.lang.Object r1 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r1 = (kotlinx.coroutines.channels.ChannelIterator) r1
            java.lang.Object r4 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r4 = (kotlinx.coroutines.channels.ProducerScope) r4
            kotlin.ResultKt.throwOnFailure(r9)
            goto L94
        L32:
            int r1 = r8.I$0
            java.lang.Object r5 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r5 = (kotlinx.coroutines.channels.ChannelIterator) r5
            java.lang.Object r6 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r6 = (kotlinx.coroutines.channels.ProducerScope) r6
            kotlin.ResultKt.throwOnFailure(r9)
            goto L6b
        L40:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
            int r1 = r8.$n
            if (r1 < 0) goto L4d
            r5 = r4
            goto L4e
        L4d:
            r5 = 0
        L4e:
            if (r5 == 0) goto Lb3
            if (r1 <= 0) goto L7b
            kotlinx.coroutines.channels.ReceiveChannel<E> r5 = r8.$this_drop
            kotlinx.coroutines.channels.ChannelIterator r5 = r5.iterator()
            r6 = r9
        L59:
            r9 = r8
            kotlin.coroutines.Continuation r9 = (kotlin.coroutines.Continuation) r9
            r8.L$0 = r6
            r8.L$1 = r5
            r8.I$0 = r1
            r8.label = r4
            java.lang.Object r9 = r5.hasNext(r9)
            if (r9 != r0) goto L6b
            return r0
        L6b:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L7a
            r5.next()
            int r1 = r1 + (-1)
            if (r1 != 0) goto L59
        L7a:
            r9 = r6
        L7b:
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r8.$this_drop
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
        L81:
            r4 = r8
            kotlin.coroutines.Continuation r4 = (kotlin.coroutines.Continuation) r4
            r8.L$0 = r9
            r8.L$1 = r1
            r8.label = r3
            java.lang.Object r4 = r1.hasNext(r4)
            if (r4 != r0) goto L91
            return r0
        L91:
            r7 = r4
            r4 = r9
            r9 = r7
        L94:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto Lb0
            java.lang.Object r9 = r1.next()
            r5 = r8
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r8.L$0 = r4
            r8.L$1 = r1
            r8.label = r2
            java.lang.Object r9 = r4.send(r9, r5)
            if (r9 != r0) goto L1c
            return r0
        Lb0:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        Lb3:
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "Requested element count "
            r8.<init>(r9)
            java.lang.StringBuilder r8 = r8.append(r1)
            java.lang.String r9 = " is less than zero."
            java.lang.StringBuilder r8 = r8.append(r9)
            java.lang.String r8 = r8.toString()
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.String r8 = r8.toString()
            r9.<init>(r8)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$drop$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
