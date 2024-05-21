package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ProducerScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Delay.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/channels/ProducerScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$3", f = "Delay.kt", i = {0, 1, 2}, l = {313, 315, 316}, m = "invokeSuspend", n = {"$this$produce", "$this$produce", "$this$produce"}, s = {"L$0", "L$0", "L$0"})
/* loaded from: classes3.dex */
public final class FlowKt__DelayKt$fixedPeriodTicker$3 extends SuspendLambda implements Function2<ProducerScope<? super Unit>, Continuation<? super Unit>, Object> {
    final /* synthetic */ long $delayMillis;
    final /* synthetic */ long $initialDelayMillis;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__DelayKt$fixedPeriodTicker$3(long j, long j2, Continuation<? super FlowKt__DelayKt$fixedPeriodTicker$3> continuation) {
        super(2, continuation);
        this.$initialDelayMillis = j;
        this.$delayMillis = j2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        FlowKt__DelayKt$fixedPeriodTicker$3 flowKt__DelayKt$fixedPeriodTicker$3 = new FlowKt__DelayKt$fixedPeriodTicker$3(this.$initialDelayMillis, this.$delayMillis, continuation);
        flowKt__DelayKt$fixedPeriodTicker$3.L$0 = obj;
        return flowKt__DelayKt$fixedPeriodTicker$3;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ProducerScope<? super Unit> producerScope, Continuation<? super Unit> continuation) {
        return ((FlowKt__DelayKt$fixedPeriodTicker$3) create(producerScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0055 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0065 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0063 -> B:12:0x0042). Please report as a decompilation issue!!! */
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
            if (r1 == 0) goto L2a
            if (r1 == r4) goto L22
            if (r1 == r3) goto L1a
            if (r1 != r2) goto L12
            goto L22
        L12:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r8)
            throw r7
        L1a:
            java.lang.Object r1 = r7.L$0
            kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L56
        L22:
            java.lang.Object r1 = r7.L$0
            kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
            kotlin.ResultKt.throwOnFailure(r8)
            goto L42
        L2a:
            kotlin.ResultKt.throwOnFailure(r8)
            java.lang.Object r8 = r7.L$0
            r1 = r8
            kotlinx.coroutines.channels.ProducerScope r1 = (kotlinx.coroutines.channels.ProducerScope) r1
            long r5 = r7.$initialDelayMillis
            r8 = r7
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            r7.L$0 = r1
            r7.label = r4
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r5, r8)
            if (r8 != r0) goto L42
            return r0
        L42:
            kotlinx.coroutines.channels.SendChannel r8 = r1.getChannel()
            kotlin.Unit r4 = kotlin.Unit.INSTANCE
            r5 = r7
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r7.L$0 = r1
            r7.label = r3
            java.lang.Object r8 = r8.send(r4, r5)
            if (r8 != r0) goto L56
            return r0
        L56:
            long r4 = r7.$delayMillis
            r8 = r7
            kotlin.coroutines.Continuation r8 = (kotlin.coroutines.Continuation) r8
            r7.L$0 = r1
            r7.label = r2
            java.lang.Object r8 = kotlinx.coroutines.DelayKt.delay(r4, r8)
            if (r8 != r0) goto L42
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$fixedPeriodTicker$3.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
