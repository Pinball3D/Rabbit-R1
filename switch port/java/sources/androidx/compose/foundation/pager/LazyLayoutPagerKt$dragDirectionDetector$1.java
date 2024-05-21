package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: LazyLayoutPager.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/PointerInputScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1", f = "LazyLayoutPager.kt", i = {}, l = {265}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class LazyLayoutPagerKt$dragDirectionDetector$1 extends SuspendLambda implements Function2<PointerInputScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ PagerState $state;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutPagerKt$dragDirectionDetector$1(PagerState pagerState, Continuation<? super LazyLayoutPagerKt$dragDirectionDetector$1> continuation) {
        super(2, continuation);
        this.$state = pagerState;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        LazyLayoutPagerKt$dragDirectionDetector$1 lazyLayoutPagerKt$dragDirectionDetector$1 = new LazyLayoutPagerKt$dragDirectionDetector$1(this.$state, continuation);
        lazyLayoutPagerKt$dragDirectionDetector$1.L$0 = obj;
        return lazyLayoutPagerKt$dragDirectionDetector$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(PointerInputScope pointerInputScope, Continuation<? super Unit> continuation) {
        return ((LazyLayoutPagerKt$dragDirectionDetector$1) create(pointerInputScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: LazyLayoutPager.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1", f = "LazyLayoutPager.kt", i = {}, l = {266}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ PointerInputScope $$this$pointerInput;
        final /* synthetic */ PagerState $state;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(PointerInputScope pointerInputScope, PagerState pagerState, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$$this$pointerInput = pointerInputScope;
            this.$state = pagerState;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$$this$pointerInput, this.$state, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: LazyLayoutPager.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
        @DebugMetadata(c = "androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1", f = "LazyLayoutPager.kt", i = {0, 1, 1, 1}, l = {268, 271}, m = "invokeSuspend", n = {"$this$awaitEachGesture", "$this$awaitEachGesture", "downEvent", "upEventOrCancellation"}, s = {"L$0", "L$0", "L$1", "L$2"})
        /* renamed from: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public static final class C00141 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ PagerState $state;
            private /* synthetic */ Object L$0;
            Object L$1;
            Object L$2;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C00141(PagerState pagerState, Continuation<? super C00141> continuation) {
                super(2, continuation);
                this.$state = pagerState;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                C00141 c00141 = new C00141(this.$state, continuation);
                c00141.L$0 = obj;
                return c00141;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(AwaitPointerEventScope awaitPointerEventScope, Continuation<? super Unit> continuation) {
                return ((C00141) create(awaitPointerEventScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x004f  */
            /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0080 A[SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:8:0x0070  */
            /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0060 -> B:6:0x0063). Please report as a decompilation issue!!! */
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
                    r2 = 2
                    r3 = 0
                    r4 = 1
                    if (r1 == 0) goto L2f
                    if (r1 == r4) goto L27
                    if (r1 != r2) goto L1f
                    java.lang.Object r1 = r10.L$2
                    androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                    java.lang.Object r4 = r10.L$1
                    androidx.compose.ui.input.pointer.PointerInputChange r4 = (androidx.compose.ui.input.pointer.PointerInputChange) r4
                    java.lang.Object r5 = r10.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L63
                L1f:
                    java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
                    java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
                    r10.<init>(r11)
                    throw r10
                L27:
                    java.lang.Object r1 = r10.L$0
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    kotlin.ResultKt.throwOnFailure(r11)
                    goto L47
                L2f:
                    kotlin.ResultKt.throwOnFailure(r11)
                    java.lang.Object r11 = r10.L$0
                    r1 = r11
                    androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                    androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                    r5 = r10
                    kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
                    r10.L$0 = r1
                    r10.label = r4
                    java.lang.Object r11 = androidx.compose.foundation.gestures.TapGestureDetectorKt.awaitFirstDown(r1, r3, r11, r5)
                    if (r11 != r0) goto L47
                    return r0
                L47:
                    androidx.compose.ui.input.pointer.PointerInputChange r11 = (androidx.compose.ui.input.pointer.PointerInputChange) r11
                    r4 = 0
                    r5 = r1
                    r1 = r4
                    r4 = r11
                L4d:
                    if (r1 != 0) goto L8c
                    androidx.compose.ui.input.pointer.PointerEventPass r11 = androidx.compose.ui.input.pointer.PointerEventPass.Initial
                    r6 = r10
                    kotlin.coroutines.Continuation r6 = (kotlin.coroutines.Continuation) r6
                    r10.L$0 = r5
                    r10.L$1 = r4
                    r10.L$2 = r1
                    r10.label = r2
                    java.lang.Object r11 = r5.awaitPointerEvent(r11, r6)
                    if (r11 != r0) goto L63
                    return r0
                L63:
                    androidx.compose.ui.input.pointer.PointerEvent r11 = (androidx.compose.ui.input.pointer.PointerEvent) r11
                    java.util.List r6 = r11.getChanges()
                    int r7 = r6.size()
                    r8 = r3
                L6e:
                    if (r8 >= r7) goto L80
                    java.lang.Object r9 = r6.get(r8)
                    androidx.compose.ui.input.pointer.PointerInputChange r9 = (androidx.compose.ui.input.pointer.PointerInputChange) r9
                    boolean r9 = androidx.compose.ui.input.pointer.PointerEventKt.changedToUp(r9)
                    if (r9 != 0) goto L7d
                    goto L4d
                L7d:
                    int r8 = r8 + 1
                    goto L6e
                L80:
                    java.util.List r11 = r11.getChanges()
                    java.lang.Object r11 = r11.get(r3)
                    r1 = r11
                    androidx.compose.ui.input.pointer.PointerInputChange r1 = (androidx.compose.ui.input.pointer.PointerInputChange) r1
                    goto L4d
                L8c:
                    androidx.compose.foundation.pager.PagerState r10 = r10.$state
                    long r0 = r1.getPosition()
                    long r2 = r4.getPosition()
                    long r0 = androidx.compose.ui.geometry.Offset.m2404minusMKHz9U(r0, r2)
                    r10.m713setUpDownDifferencek4lQ0M$foundation_release(r0)
                    kotlin.Unit r10 = kotlin.Unit.INSTANCE
                    return r10
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.pager.LazyLayoutPagerKt$dragDirectionDetector$1.AnonymousClass1.C00141.invokeSuspend(java.lang.Object):java.lang.Object");
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (ForEachGestureKt.awaitEachGesture(this.$$this$pointerInput, new C00141(this.$state, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (CoroutineScopeKt.coroutineScope(new AnonymousClass1((PointerInputScope) this.L$0, this.$state, null), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
    }
}
