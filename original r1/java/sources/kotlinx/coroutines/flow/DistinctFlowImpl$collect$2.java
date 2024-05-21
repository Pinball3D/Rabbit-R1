package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Distinct.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DistinctFlowImpl$collect$2<T> implements FlowCollector {
    final /* synthetic */ FlowCollector<T> $collector;
    final /* synthetic */ Ref.ObjectRef<Object> $previousKey;
    final /* synthetic */ DistinctFlowImpl<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public DistinctFlowImpl$collect$2(DistinctFlowImpl<T> distinctFlowImpl, Ref.ObjectRef<Object> objectRef, FlowCollector<? super T> flowCollector) {
        this.this$0 = distinctFlowImpl;
        this.$previousKey = objectRef;
        this.$collector = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r6, kotlin.coroutines.Continuation<? super kotlin.Unit> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            if (r0 == 0) goto L14
            r0 = r7
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = (kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1 r0 = new kotlinx.coroutines.flow.DistinctFlowImpl$collect$2$emit$1
            r0.<init>(r5, r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L32
            if (r2 != r3) goto L2a
            kotlin.ResultKt.throwOnFailure(r7)
            goto L6c
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r7)
            kotlinx.coroutines.flow.DistinctFlowImpl<T> r7 = r5.this$0
            kotlin.jvm.functions.Function1<T, java.lang.Object> r7 = r7.keySelector
            java.lang.Object r7 = r7.invoke(r6)
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r2 = r5.$previousKey
            T r2 = r2.element
            kotlinx.coroutines.internal.Symbol r4 = kotlinx.coroutines.flow.internal.NullSurrogateKt.NULL
            if (r2 == r4) goto L5d
            kotlinx.coroutines.flow.DistinctFlowImpl<T> r2 = r5.this$0
            kotlin.jvm.functions.Function2<java.lang.Object, java.lang.Object, java.lang.Boolean> r2 = r2.areEquivalent
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r4 = r5.$previousKey
            T r4 = r4.element
            java.lang.Object r2 = r2.invoke(r4, r7)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 != 0) goto L5a
            goto L5d
        L5a:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        L5d:
            kotlin.jvm.internal.Ref$ObjectRef<java.lang.Object> r2 = r5.$previousKey
            r2.element = r7
            kotlinx.coroutines.flow.FlowCollector<T> r5 = r5.$collector
            r0.label = r3
            java.lang.Object r5 = r5.emit(r6, r0)
            if (r5 != r1) goto L6c
            return r1
        L6c:
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.DistinctFlowImpl$collect$2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
