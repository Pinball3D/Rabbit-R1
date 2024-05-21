package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Add missing generic type declarations: [T] */
/* compiled from: SafeCollector.common.kt */
@Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u001f\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0005H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0006\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0007¸\u0006\u0000"}, d2 = {"kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1", "Lkotlinx/coroutines/flow/Flow;", "collect", "", "collector", "Lkotlinx/coroutines/flow/FlowCollector;", "(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements Flow<T> {
    final /* synthetic */ Function3 $action$inlined;
    final /* synthetic */ Flow $this_onCompletion$inlined;

    /* compiled from: SafeCollector.common.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", i = {0, 0, 1, 2}, l = {114, 121, 128}, m = "collect", n = {"this", "$this$onCompletion_u24lambda_u242", "e", "sc"}, s = {"L$0", "L$1", "L$0", "L$0"})
    /* renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.collect(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0088 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    @Override // kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object collect(kotlinx.coroutines.flow.FlowCollector<? super T> r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            r8 = this;
            boolean r0 = r10 instanceof kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r10
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r10 = r0.label
            int r10 = r10 - r2
            r0.label = r10
            goto L19
        L14:
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1 r0 = new kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1
            r0.<init>(r10)
        L19:
            java.lang.Object r10 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r2 == 0) goto L54
            if (r2 == r5) goto L47
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.flow.internal.SafeCollector r8 = (kotlinx.coroutines.flow.internal.SafeCollector) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L35
            goto L8a
        L35:
            r9 = move-exception
            goto L92
        L37:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L3f:
            java.lang.Object r8 = r0.L$0
            java.lang.Throwable r8 = (java.lang.Throwable) r8
            kotlin.ResultKt.throwOnFailure(r10)
            goto Lb0
        L47:
            java.lang.Object r8 = r0.L$1
            r9 = r8
            kotlinx.coroutines.flow.FlowCollector r9 = (kotlinx.coroutines.flow.FlowCollector) r9
            java.lang.Object r8 = r0.L$0
            kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 r8 = (kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) r8
            kotlin.ResultKt.throwOnFailure(r10)     // Catch: java.lang.Throwable -> L96
            goto L69
        L54:
            kotlin.ResultKt.throwOnFailure(r10)
            r10 = r0
            kotlin.coroutines.Continuation r10 = (kotlin.coroutines.Continuation) r10
            kotlinx.coroutines.flow.Flow r10 = r8.$this_onCompletion$inlined     // Catch: java.lang.Throwable -> L96
            r0.L$0 = r8     // Catch: java.lang.Throwable -> L96
            r0.L$1 = r9     // Catch: java.lang.Throwable -> L96
            r0.label = r5     // Catch: java.lang.Throwable -> L96
            java.lang.Object r10 = r10.collect(r9, r0)     // Catch: java.lang.Throwable -> L96
            if (r10 != r1) goto L69
            return r1
        L69:
            kotlinx.coroutines.flow.internal.SafeCollector r10 = new kotlinx.coroutines.flow.internal.SafeCollector
            kotlin.coroutines.CoroutineContext r2 = r0.getContext()
            r10.<init>(r9, r2)
            kotlin.jvm.functions.Function3 r8 = r8.$action$inlined     // Catch: java.lang.Throwable -> L90
            r0.L$0 = r10     // Catch: java.lang.Throwable -> L90
            r0.L$1 = r6     // Catch: java.lang.Throwable -> L90
            r0.label = r3     // Catch: java.lang.Throwable -> L90
            r9 = 6
            kotlin.jvm.internal.InlineMarker.mark(r9)     // Catch: java.lang.Throwable -> L90
            java.lang.Object r8 = r8.invoke(r10, r6, r0)     // Catch: java.lang.Throwable -> L90
            r9 = 7
            kotlin.jvm.internal.InlineMarker.mark(r9)     // Catch: java.lang.Throwable -> L90
            if (r8 != r1) goto L89
            return r1
        L89:
            r8 = r10
        L8a:
            r8.releaseIntercepted()
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        L90:
            r9 = move-exception
            r8 = r10
        L92:
            r8.releaseIntercepted()
            throw r9
        L96:
            r9 = move-exception
            r7 = r9
            r9 = r8
            r8 = r7
            kotlinx.coroutines.flow.ThrowingCollector r10 = new kotlinx.coroutines.flow.ThrowingCollector
            r10.<init>(r8)
            kotlinx.coroutines.flow.FlowCollector r10 = (kotlinx.coroutines.flow.FlowCollector) r10
            kotlin.jvm.functions.Function3 r9 = r9.$action$inlined
            r0.L$0 = r8
            r0.L$1 = r6
            r0.label = r4
            java.lang.Object r9 = kotlinx.coroutines.flow.FlowKt__EmittersKt.access$invokeSafely$FlowKt__EmittersKt(r10, r9, r8, r0)
            if (r9 != r1) goto Lb0
            return r1
        Lb0:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.collect(kotlinx.coroutines.flow.FlowCollector, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(Flow flow, Function3 function3) {
        this.$this_onCompletion$inlined = flow;
        this.$action$inlined = function3;
    }
}
