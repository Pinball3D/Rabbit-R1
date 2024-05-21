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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1", f = "Deprecated.kt", i = {0, 0, 1, 1}, l = {254, 255}, m = "invokeSuspend", n = {"$this$produce", "remaining", "$this$produce", "remaining"}, s = {"L$0", "I$0", "L$0", "I$0"})
/* loaded from: classes3.dex */
final class ChannelsKt__DeprecatedKt$take$1<E> extends SuspendLambda implements Function2<ProducerScope<? super E>, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $n;
    final /* synthetic */ ReceiveChannel<E> $this_take;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ChannelsKt__DeprecatedKt$take$1(int i, ReceiveChannel<? extends E> receiveChannel, Continuation<? super ChannelsKt__DeprecatedKt$take$1> continuation) {
        super(2, continuation);
        this.$n = i;
        this.$this_take = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ChannelsKt__DeprecatedKt$take$1 channelsKt__DeprecatedKt$take$1 = new ChannelsKt__DeprecatedKt$take$1(this.$n, this.$this_take, continuation);
        channelsKt__DeprecatedKt$take$1.L$0 = obj;
        return channelsKt__DeprecatedKt$take$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super E> producerScope, Continuation<? super Unit> continuation) {
        return ((ChannelsKt__DeprecatedKt$take$1) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007e -> B:6:0x001b). Please report as a decompilation issue!!! */
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
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L33
            if (r1 == r3) goto L25
            if (r1 != r2) goto L1d
            int r1 = r8.I$0
            java.lang.Object r4 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r9)
        L1b:
            r9 = r5
            goto L81
        L1d:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L25:
            int r1 = r8.I$0
            java.lang.Object r4 = r8.L$1
            kotlinx.coroutines.channels.ChannelIterator r4 = (kotlinx.coroutines.channels.ChannelIterator) r4
            java.lang.Object r5 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r5 = (kotlinx.coroutines.channels.ProducerScope) r5
            kotlin.ResultKt.throwOnFailure(r9)
            goto L63
        L33:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.Object r9 = r8.L$0
            kotlinx.coroutines.channels.ProducerScope r9 = (kotlinx.coroutines.channels.ProducerScope) r9
            int r1 = r8.$n
            if (r1 != 0) goto L41
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L41:
            if (r1 < 0) goto L45
            r4 = r3
            goto L46
        L45:
            r4 = 0
        L46:
            if (r4 == 0) goto L8b
            kotlinx.coroutines.channels.ReceiveChannel<E> r4 = r8.$this_take
            kotlinx.coroutines.channels.ChannelIterator r4 = r4.iterator()
        L4e:
            r5 = r8
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r8.L$0 = r9
            r8.L$1 = r4
            r8.I$0 = r1
            r8.label = r3
            java.lang.Object r5 = r4.hasNext(r5)
            if (r5 != r0) goto L60
            return r0
        L60:
            r7 = r5
            r5 = r9
            r9 = r7
        L63:
            java.lang.Boolean r9 = (java.lang.Boolean) r9
            boolean r9 = r9.booleanValue()
            if (r9 == 0) goto L88
            java.lang.Object r9 = r4.next()
            r6 = r8
            kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
            r8.L$0 = r5
            r8.L$1 = r4
            r8.I$0 = r1
            r8.label = r2
            java.lang.Object r9 = r5.send(r9, r6)
            if (r9 != r0) goto L1b
            return r0
        L81:
            int r1 = r1 + (-1)
            if (r1 != 0) goto L4e
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L88:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L8b:
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
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt$take$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
