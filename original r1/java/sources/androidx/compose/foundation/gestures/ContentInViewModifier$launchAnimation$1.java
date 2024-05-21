package androidx.compose.foundation.gestures;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobKt__JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ContentInViewModifier.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewModifier$launchAnimation$1", f = "ContentInViewModifier.kt", i = {}, l = {193}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ContentInViewModifier$launchAnimation$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ ContentInViewModifier this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContentInViewModifier$launchAnimation$1(ContentInViewModifier contentInViewModifier, Continuation<? super ContentInViewModifier$launchAnimation$1> continuation) {
        super(2, continuation);
        this.this$0 = contentInViewModifier;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        ContentInViewModifier$launchAnimation$1 contentInViewModifier$launchAnimation$1 = new ContentInViewModifier$launchAnimation$1(this.this$0, continuation);
        contentInViewModifier$launchAnimation$1.L$0 = obj;
        return contentInViewModifier$launchAnimation$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ContentInViewModifier$launchAnimation$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ScrollableState scrollableState;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        CancellationException cancellationException = null;
        try {
            try {
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    Job job = JobKt.getJob(((CoroutineScope) this.L$0).getCoroutineContext());
                    this.this$0.isAnimationRunning = true;
                    scrollableState = this.this$0.scrollState;
                    this.label = 1;
                    if (ScrollableState.scroll$default(scrollableState, null, new AnonymousClass1(this.this$0, job, null), this, 1, null) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
                this.this$0.bringIntoViewRequests.resumeAndRemoveAll();
                this.this$0.isAnimationRunning = false;
                this.this$0.bringIntoViewRequests.cancelAndRemoveAll(null);
                this.this$0.trackingFocusedChild = false;
                return Unit.INSTANCE;
            } catch (CancellationException e) {
                cancellationException = e;
                throw cancellationException;
            }
        } catch (Throwable th) {
            this.this$0.isAnimationRunning = false;
            this.this$0.bringIntoViewRequests.cancelAndRemoveAll(cancellationException);
            this.this$0.trackingFocusedChild = false;
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ContentInViewModifier.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.gestures.ContentInViewModifier$launchAnimation$1$1", f = "ContentInViewModifier.kt", i = {}, l = {198}, m = "invokeSuspend", n = {}, s = {})
    /* renamed from: androidx.compose.foundation.gestures.ContentInViewModifier$launchAnimation$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass1 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Job $animationJob;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ ContentInViewModifier this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ContentInViewModifier contentInViewModifier, Job job, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.this$0 = contentInViewModifier;
            this.$animationJob = job;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, this.$animationJob, continuation);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(ScrollScope scrollScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(scrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            UpdatableAnimationState updatableAnimationState;
            float calculateScrollDelta;
            UpdatableAnimationState updatableAnimationState2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                final ScrollScope scrollScope = (ScrollScope) this.L$0;
                updatableAnimationState = this.this$0.animationState;
                calculateScrollDelta = this.this$0.calculateScrollDelta();
                updatableAnimationState.setValue(calculateScrollDelta);
                updatableAnimationState2 = this.this$0.animationState;
                final ContentInViewModifier contentInViewModifier = this.this$0;
                final Job job = this.$animationJob;
                Function1<Float, Unit> function1 = new Function1<Float, Unit>() { // from class: androidx.compose.foundation.gestures.ContentInViewModifier.launchAnimation.1.1.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Float f) {
                        invoke(f.floatValue());
                        return Unit.INSTANCE;
                    }

                    public final void invoke(float f) {
                        boolean z;
                        z = ContentInViewModifier.this.reverseDirection;
                        float f2 = z ? 1.0f : -1.0f;
                        float scrollBy = f2 * scrollScope.scrollBy(f2 * f);
                        if (scrollBy < f) {
                            JobKt__JobKt.cancel$default(job, "Scroll animation cancelled because scroll was not consumed (" + scrollBy + " < " + f + ')', null, 2, null);
                        }
                    }
                };
                final ContentInViewModifier contentInViewModifier2 = this.this$0;
                this.label = 1;
                if (updatableAnimationState2.animateToZero(function1, new Function0<Unit>() { // from class: androidx.compose.foundation.gestures.ContentInViewModifier.launchAnimation.1.1.2
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Code restructure failed: missing block: B:11:0x0063, code lost:
                    
                        r2 = r1.getFocusedChildBounds();
                     */
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public final void invoke2() {
                        /*
                            r9 = this;
                            androidx.compose.foundation.gestures.ContentInViewModifier r0 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue r0 = androidx.compose.foundation.gestures.ContentInViewModifier.access$getBringIntoViewRequests$p(r0)
                            androidx.compose.foundation.gestures.ContentInViewModifier r7 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                        L8:
                            androidx.compose.runtime.collection.MutableVector r1 = androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue.access$getRequests$p(r0)
                            boolean r1 = r1.isNotEmpty()
                            r8 = 1
                            if (r1 == 0) goto L5b
                            androidx.compose.runtime.collection.MutableVector r1 = androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue.access$getRequests$p(r0)
                            java.lang.Object r1 = r1.last()
                            androidx.compose.foundation.gestures.ContentInViewModifier$Request r1 = (androidx.compose.foundation.gestures.ContentInViewModifier.Request) r1
                            kotlin.jvm.functions.Function0 r1 = r1.getCurrentBounds()
                            java.lang.Object r1 = r1.invoke()
                            r2 = r1
                            androidx.compose.ui.geometry.Rect r2 = (androidx.compose.ui.geometry.Rect) r2
                            if (r2 != 0) goto L2b
                            goto L36
                        L2b:
                            r3 = 0
                            r5 = 1
                            r6 = 0
                            r1 = r7
                            boolean r1 = androidx.compose.foundation.gestures.ContentInViewModifier.m258isMaxVisibleO0kMr_c$default(r1, r2, r3, r5, r6)
                            if (r1 == 0) goto L5b
                        L36:
                            androidx.compose.runtime.collection.MutableVector r1 = androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue.access$getRequests$p(r0)
                            androidx.compose.runtime.collection.MutableVector r2 = androidx.compose.foundation.gestures.BringIntoViewRequestPriorityQueue.access$getRequests$p(r0)
                            int r2 = r2.getSize()
                            int r2 = r2 - r8
                            java.lang.Object r1 = r1.removeAt(r2)
                            androidx.compose.foundation.gestures.ContentInViewModifier$Request r1 = (androidx.compose.foundation.gestures.ContentInViewModifier.Request) r1
                            kotlinx.coroutines.CancellableContinuation r1 = r1.getContinuation()
                            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
                            kotlin.Unit r2 = kotlin.Unit.INSTANCE
                            kotlin.Result$Companion r3 = kotlin.Result.INSTANCE
                            java.lang.Object r2 = kotlin.Result.m5698constructorimpl(r2)
                            r1.resumeWith(r2)
                            goto L8
                        L5b:
                            androidx.compose.foundation.gestures.ContentInViewModifier r0 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            boolean r0 = androidx.compose.foundation.gestures.ContentInViewModifier.access$getTrackingFocusedChild$p(r0)
                            if (r0 == 0) goto L7d
                            androidx.compose.foundation.gestures.ContentInViewModifier r0 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            androidx.compose.ui.geometry.Rect r2 = androidx.compose.foundation.gestures.ContentInViewModifier.access$getFocusedChildBounds(r0)
                            if (r2 == 0) goto L7d
                            androidx.compose.foundation.gestures.ContentInViewModifier r1 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            r3 = 0
                            r5 = 1
                            r6 = 0
                            boolean r0 = androidx.compose.foundation.gestures.ContentInViewModifier.m258isMaxVisibleO0kMr_c$default(r1, r2, r3, r5, r6)
                            if (r0 != r8) goto L7d
                            androidx.compose.foundation.gestures.ContentInViewModifier r0 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            r1 = 0
                            androidx.compose.foundation.gestures.ContentInViewModifier.access$setTrackingFocusedChild$p(r0, r1)
                        L7d:
                            androidx.compose.foundation.gestures.ContentInViewModifier r0 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            androidx.compose.foundation.gestures.UpdatableAnimationState r0 = androidx.compose.foundation.gestures.ContentInViewModifier.access$getAnimationState$p(r0)
                            androidx.compose.foundation.gestures.ContentInViewModifier r9 = androidx.compose.foundation.gestures.ContentInViewModifier.this
                            float r9 = androidx.compose.foundation.gestures.ContentInViewModifier.access$calculateScrollDelta(r9)
                            r0.setValue(r9)
                            return
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.ContentInViewModifier$launchAnimation$1.AnonymousClass1.AnonymousClass2.invoke2():void");
                    }
                }, this) == coroutine_suspended) {
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
}
