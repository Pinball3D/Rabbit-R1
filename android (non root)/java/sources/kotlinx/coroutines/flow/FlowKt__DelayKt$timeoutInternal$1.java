package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: Delay.kt */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "downStream", "Lkotlinx/coroutines/flow/FlowCollector;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1", f = "Delay.kt", i = {0, 0}, l = {414}, m = "invokeSuspend", n = {"downStream", "values"}, s = {"L$0", "L$1"})
/* loaded from: classes3.dex */
public final class FlowKt__DelayKt$timeoutInternal$1<T> extends SuspendLambda implements Function3<CoroutineScope, FlowCollector<? super T>, Continuation<? super Unit>, Object> {
    final /* synthetic */ Flow<T> $this_timeoutInternal;
    final /* synthetic */ long $timeout;
    long J$0;
    private /* synthetic */ Object L$0;
    /* synthetic */ Object L$1;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__DelayKt$timeoutInternal$1(long j, Flow<? extends T> flow, Continuation<? super FlowKt__DelayKt$timeoutInternal$1> continuation) {
        super(3, continuation);
        this.$timeout = j;
        this.$this_timeoutInternal = flow;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(CoroutineScope coroutineScope, FlowCollector<? super T> flowCollector, Continuation<? super Unit> continuation) {
        FlowKt__DelayKt$timeoutInternal$1 flowKt__DelayKt$timeoutInternal$1 = new FlowKt__DelayKt$timeoutInternal$1(this.$timeout, this.$this_timeoutInternal, continuation);
        flowKt__DelayKt$timeoutInternal$1.L$0 = coroutineScope;
        flowKt__DelayKt$timeoutInternal$1.L$1 = flowCollector;
        return flowKt__DelayKt$timeoutInternal$1.invokeSuspend(Unit.INSTANCE);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x007d A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:8:0x007b -> B:5:0x007e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r11) {
        /*
            r10 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r10.label
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L22
            if (r1 != r2) goto L1a
            long r4 = r10.J$0
            java.lang.Object r1 = r10.L$1
            kotlinx.coroutines.channels.ReceiveChannel r1 = (kotlinx.coroutines.channels.ReceiveChannel) r1
            java.lang.Object r6 = r10.L$0
            kotlinx.coroutines.flow.FlowCollector r6 = (kotlinx.coroutines.flow.FlowCollector) r6
            kotlin.ResultKt.throwOnFailure(r11)
            goto L7e
        L1a:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L22:
            kotlin.ResultKt.throwOnFailure(r11)
            java.lang.Object r11 = r10.L$0
            kotlinx.coroutines.CoroutineScope r11 = (kotlinx.coroutines.CoroutineScope) r11
            java.lang.Object r1 = r10.L$1
            kotlinx.coroutines.flow.FlowCollector r1 = (kotlinx.coroutines.flow.FlowCollector) r1
            long r4 = r10.$timeout
            kotlin.time.Duration$Companion r6 = kotlin.time.Duration.INSTANCE
            long r6 = r6.m7127getZEROUwyO8pc()
            int r4 = kotlin.time.Duration.m7023compareToLRDsOJo(r4, r6)
            if (r4 <= 0) goto L89
            kotlinx.coroutines.flow.Flow<T> r4 = r10.$this_timeoutInternal
            r5 = 0
            r6 = 2
            kotlinx.coroutines.flow.Flow r4 = kotlinx.coroutines.flow.FlowKt.buffer$default(r4, r5, r3, r6, r3)
            kotlinx.coroutines.channels.ReceiveChannel r11 = kotlinx.coroutines.flow.FlowKt.produceIn(r4, r11)
            long r4 = r10.$timeout
            r6 = r1
            r1 = r11
        L4b:
            kotlinx.coroutines.selects.SelectImplementation r11 = new kotlinx.coroutines.selects.SelectImplementation
            kotlin.coroutines.CoroutineContext r7 = r10.get$context()
            r11.<init>(r7)
            r7 = r11
            kotlinx.coroutines.selects.SelectBuilder r7 = (kotlinx.coroutines.selects.SelectBuilder) r7
            kotlinx.coroutines.selects.SelectClause1 r8 = r1.getOnReceiveCatching()
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1 r9 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$1
            r9.<init>(r6, r3)
            kotlin.jvm.functions.Function2 r9 = (kotlin.jvm.functions.Function2) r9
            r7.invoke(r8, r9)
            kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2 r8 = new kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1$1$2
            r8.<init>(r4, r3)
            kotlin.jvm.functions.Function1 r8 = (kotlin.jvm.functions.Function1) r8
            kotlinx.coroutines.selects.OnTimeoutKt.m7269onTimeout8Mi8wO0(r7, r4, r8)
            r10.L$0 = r6
            r10.L$1 = r1
            r10.J$0 = r4
            r10.label = r2
            java.lang.Object r11 = r11.doSelect(r10)
            if (r11 != r0) goto L7e
            return r0
        L7e:
            java.lang.Boolean r11 = (java.lang.Boolean) r11
            boolean r11 = r11.booleanValue()
            if (r11 != 0) goto L4b
            kotlin.Unit r10 = kotlin.Unit.INSTANCE
            return r10
        L89:
            kotlinx.coroutines.TimeoutCancellationException r10 = new kotlinx.coroutines.TimeoutCancellationException
            java.lang.String r11 = "Timed out immediately"
            r10.<init>(r11)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__DelayKt$timeoutInternal$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
