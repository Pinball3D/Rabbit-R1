package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Limit.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FlowKt__LimitKt$dropWhile$1$1<T> implements FlowCollector {
    final /* synthetic */ Ref.BooleanRef $matched;
    final /* synthetic */ Function2<T, Continuation<? super Boolean>, Object> $predicate;
    final /* synthetic */ FlowCollector<T> $this_unsafeFlow;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    public FlowKt__LimitKt$dropWhile$1$1(Ref.BooleanRef booleanRef, FlowCollector<? super T> flowCollector, Function2<? super T, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        this.$matched = booleanRef;
        this.$this_unsafeFlow = flowCollector;
        this.$predicate = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object emit(T r7, kotlin.coroutines.Continuation<? super kotlin.Unit> r8) {
        /*
            r6 = this;
            boolean r0 = r8 instanceof kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            if (r0 == 0) goto L14
            r0 = r8
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1 r0 = new kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1$emit$1
            r0.<init>(r6, r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            if (r2 == 0) goto L46
            if (r2 == r5) goto L42
            if (r2 == r4) goto L38
            if (r2 != r3) goto L30
            kotlin.ResultKt.throwOnFailure(r8)
            goto L88
        L30:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L38:
            java.lang.Object r7 = r0.L$1
            java.lang.Object r6 = r0.L$0
            kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1 r6 = (kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1) r6
            kotlin.ResultKt.throwOnFailure(r8)
            goto L6c
        L42:
            kotlin.ResultKt.throwOnFailure(r8)
            goto L5a
        L46:
            kotlin.ResultKt.throwOnFailure(r8)
            kotlin.jvm.internal.Ref$BooleanRef r8 = r6.$matched
            boolean r8 = r8.element
            if (r8 == 0) goto L5d
            kotlinx.coroutines.flow.FlowCollector<T> r6 = r6.$this_unsafeFlow
            r0.label = r5
            java.lang.Object r6 = r6.emit(r7, r0)
            if (r6 != r1) goto L5a
            return r1
        L5a:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L5d:
            kotlin.jvm.functions.Function2<T, kotlin.coroutines.Continuation<? super java.lang.Boolean>, java.lang.Object> r8 = r6.$predicate
            r0.L$0 = r6
            r0.L$1 = r7
            r0.label = r4
            java.lang.Object r8 = r8.invoke(r7, r0)
            if (r8 != r1) goto L6c
            return r1
        L6c:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 != 0) goto L8b
            kotlin.jvm.internal.Ref$BooleanRef r8 = r6.$matched
            r8.element = r5
            kotlinx.coroutines.flow.FlowCollector<T> r6 = r6.$this_unsafeFlow
            r8 = 0
            r0.L$0 = r8
            r0.L$1 = r8
            r0.label = r3
            java.lang.Object r6 = r6.emit(r7, r0)
            if (r6 != r1) goto L88
            return r1
        L88:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        L8b:
            kotlin.Unit r6 = kotlin.Unit.INSTANCE
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
