package kotlinx.coroutines.channels;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [E] */
/* compiled from: Deprecated.kt */
@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.LONGITUDE_EAST, "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1", f = "Deprecated.kt", i = {0, 0, 1, 1, 1, 2, 2}, l = {211, 212, 212}, m = "invokeSuspend", n = {"$this$produce", "index", "$this$produce", "e", "index", "$this$produce", "index"}, s = {"L$0", "I$0", "L$0", "L$2", "I$0", "L$0", "I$0"})
/* loaded from: classes3.dex */
final class ChannelsKt__DeprecatedKt$filterIndexed$1<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Function3<Integer, E, Continuation<? super Boolean>, Object> $predicate;
    final /* synthetic */ ReceiveChannel<E> $this_filterIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$filterIndexed$1(ReceiveChannel<? extends E> receiveChannel, Function3<? super Integer, ? super E, ? super Continuation<? super Boolean>, ? extends Object> function3, Continuation<? super ChannelsKt__DeprecatedKt$filterIndexed$1> continuation) {
        super(2, continuation);
        this.$this_filterIndexed = receiveChannel;
        this.$predicate = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$filterIndexed$1 channelsKt__DeprecatedKt$filterIndexed$1 = new ChannelsKt__DeprecatedKt$filterIndexed$1(this.$this_filterIndexed, this.$predicate, continuation);
        channelsKt__DeprecatedKt$filterIndexed$1.L$0 = obj;
        return channelsKt__DeprecatedKt$filterIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$filterIndexed$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x005b, code lost:
    
        r7 = r8;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b6  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 0
            r3 = 3
            r4 = 2
            r5 = 1
            if (r1 == 0) goto L49
            if (r1 == r5) goto L3b
            if (r1 == r4) goto L28
            if (r1 != r3) goto L20
            int r1 = r11.I$0
            java.lang.Object r6 = r11.L$1
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
            kotlin.ResultKt.throwOnFailure(r12)
            goto L5b
        L20:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L28:
            int r1 = r11.I$0
            java.lang.Object r6 = r11.L$2
            java.lang.Object r7 = r11.L$1
            kotlinx.coroutines.channels.ChannelIterator r7 = (kotlinx.coroutines.channels.ChannelIterator) r7
            java.lang.Object r8 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r8 = (kotlinx.coroutines.channels.ProducerScope) r8
            kotlin.ResultKt.throwOnFailure(r12)
            r10 = r7
            r7 = r6
            r6 = r10
            goto L98
        L3b:
            int r1 = r11.I$0
            java.lang.Object r6 = r11.L$1
            kotlinx.coroutines.channels.ChannelIterator r6 = (kotlinx.coroutines.channels.ChannelIterator) r6
            java.lang.Object r7 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r7 = (kotlinx.coroutines.channels.ProducerScope) r7
            kotlin.ResultKt.throwOnFailure(r12)
            goto L6f
        L49:
            kotlin.ResultKt.throwOnFailure(r12)
            java.lang.Object r12 = r11.L$0
            kotlinx.coroutines.channels.ProducerScope r12 = (kotlinx.coroutines.channels.ProducerScope) r12
            kotlinx.coroutines.channels.ReceiveChannel<E> r1 = r11.$this_filterIndexed
            kotlinx.coroutines.channels.ChannelIterator r1 = r1.iterator()
            r6 = 0
            r7 = r12
            r10 = r6
            r6 = r1
            r1 = r10
        L5b:
            r12 = r11
            kotlin.coroutines.Continuation r12 = (kotlin.coroutines.Continuation) r12
            r11.L$0 = r7
            r11.L$1 = r6
            r11.L$2 = r2
            r11.I$0 = r1
            r11.label = r5
            java.lang.Object r12 = r6.hasNext(r12)
            if (r12 != r0) goto L6f
            return r0
        L6f:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Lb6
            java.lang.Object r12 = r6.next()
            kotlin.jvm.functions.Function3<java.lang.Integer, E, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r8 = r11.$predicate
            int r9 = r1 + 1
            java.lang.Integer r1 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r1)
            r11.L$0 = r7
            r11.L$1 = r6
            r11.L$2 = r12
            r11.I$0 = r9
            r11.label = r4
            java.lang.Object r1 = r8.invoke(r1, r12, r11)
            if (r1 != r0) goto L94
            return r0
        L94:
            r8 = r7
            r7 = r12
            r12 = r1
            r1 = r9
        L98:
            java.lang.Boolean r12 = (java.lang.Boolean) r12
            boolean r12 = r12.booleanValue()
            if (r12 == 0) goto Lb4
            r12 = r11
            kotlin.coroutines.Continuation r12 = (kotlin.coroutines.Continuation) r12
            r11.L$0 = r8
            r11.L$1 = r6
            r11.L$2 = r2
            r11.I$0 = r1
            r11.label = r3
            java.lang.Object r12 = r8.send(r7, r12)
            if (r12 != r0) goto Lb4
            return r0
        Lb4:
            r7 = r8
            goto L5b
        Lb6:
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$filterIndexed$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
