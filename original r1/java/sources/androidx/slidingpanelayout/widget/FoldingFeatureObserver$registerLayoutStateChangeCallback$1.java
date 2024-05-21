package androidx.slidingpanelayout.widget;

import android.app.Activity;
import androidx.slidingpanelayout.widget.FoldingFeatureObserver;
import androidx.window.layout.FoldingFeature;
import androidx.window.layout.WindowInfoTracker;
import androidx.window.layout.WindowLayoutInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FoldingFeatureObserver.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 6, 0}, xi = 48)
@DebugMetadata(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1", f = "FoldingFeatureObserver.kt", i = {}, l = {97}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes2.dex */
public final class FoldingFeatureObserver$registerLayoutStateChangeCallback$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Activity $activity;
    int label;
    final /* synthetic */ FoldingFeatureObserver this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FoldingFeatureObserver$registerLayoutStateChangeCallback$1(FoldingFeatureObserver foldingFeatureObserver, Activity activity, Continuation<? super FoldingFeatureObserver$registerLayoutStateChangeCallback$1> continuation) {
        super(2, continuation);
        this.this$0 = foldingFeatureObserver;
        this.$activity = activity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new FoldingFeatureObserver$registerLayoutStateChangeCallback$1(this.this$0, this.$activity, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((FoldingFeatureObserver$registerLayoutStateChangeCallback$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        WindowInfoTracker windowInfoTracker;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            windowInfoTracker = this.this$0.windowInfoTracker;
            final Flow<WindowLayoutInfo> windowLayoutInfo = windowInfoTracker.windowLayoutInfo(this.$activity);
            final FoldingFeatureObserver foldingFeatureObserver = this.this$0;
            Flow distinctUntilChanged = FlowKt.distinctUntilChanged(new Flow<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1

                /* compiled from: Collect.kt */
                @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0006¸\u0006\b"}, d2 = {"kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3", "Lkotlinx/coroutines/flow/FlowCollector;", "emit", "", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$lambda-1$$inlined$collect$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$mapNotNull$$inlined$unsafeTransform$1$2"}, k = 1, mv = {1, 6, 0}, xi = 48)
                /* renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2, reason: invalid class name */
                /* loaded from: classes2.dex */
                public static final class AnonymousClass2 implements FlowCollector<WindowLayoutInfo> {
                    final /* synthetic */ FlowCollector $this_unsafeFlow$inlined;
                    final /* synthetic */ FoldingFeatureObserver this$0;

                    @Metadata(k = 3, mv = {1, 6, 0}, xi = 48)
                    @DebugMetadata(c = "androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "FoldingFeatureObserver.kt", i = {}, l = {138}, m = "emit", n = {}, s = {})
                    /* renamed from: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1, reason: invalid class name */
                    /* loaded from: classes2.dex */
                    public static final class AnonymousClass1 extends ContinuationImpl {
                        Object L$0;
                        int label;
                        /* synthetic */ Object result;

                        public AnonymousClass1(Continuation continuation) {
                            super(continuation);
                        }

                        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                        public final Object invokeSuspend(Object obj) {
                            this.result = obj;
                            this.label |= Integer.MIN_VALUE;
                            return AnonymousClass2.this.emit(null, this);
                        }
                    }

                    public AnonymousClass2(FlowCollector flowCollector, FoldingFeatureObserver foldingFeatureObserver) {
                        this.$this_unsafeFlow$inlined = flowCollector;
                        this.this$0 = foldingFeatureObserver;
                    }

                    /* JADX WARN: Removed duplicated region for block: B:15:0x0032  */
                    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public java.lang.Object emit(androidx.window.layout.WindowLayoutInfo r5, kotlin.coroutines.Continuation r6) {
                        /*
                            r4 = this;
                            boolean r0 = r6 instanceof androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1
                            if (r0 == 0) goto L14
                            r0 = r6
                            androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = (androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.AnonymousClass1) r0
                            int r1 = r0.label
                            r2 = -2147483648(0xffffffff80000000, float:-0.0)
                            r1 = r1 & r2
                            if (r1 == 0) goto L14
                            int r6 = r0.label
                            int r6 = r6 - r2
                            r0.label = r6
                            goto L19
                        L14:
                            androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1 r0 = new androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1$2$1
                            r0.<init>(r6)
                        L19:
                            java.lang.Object r6 = r0.result
                            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                            int r2 = r0.label
                            r3 = 1
                            if (r2 == 0) goto L32
                            if (r2 != r3) goto L2a
                            kotlin.ResultKt.throwOnFailure(r6)
                            goto L4e
                        L2a:
                            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                            r4.<init>(r5)
                            throw r4
                        L32:
                            kotlin.ResultKt.throwOnFailure(r6)
                            kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow$inlined
                            r2 = r0
                            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                            androidx.window.layout.WindowLayoutInfo r5 = (androidx.window.layout.WindowLayoutInfo) r5
                            androidx.slidingpanelayout.widget.FoldingFeatureObserver r4 = r4.this$0
                            androidx.window.layout.FoldingFeature r4 = androidx.slidingpanelayout.widget.FoldingFeatureObserver.access$getFoldingFeature(r4, r5)
                            if (r4 != 0) goto L45
                            goto L4e
                        L45:
                            r0.label = r3
                            java.lang.Object r4 = r6.emit(r4, r0)
                            if (r4 != r1) goto L4e
                            return r1
                        L4e:
                            kotlin.Unit r4 = kotlin.Unit.INSTANCE
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$mapNotNull$1.AnonymousClass2.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                    }
                }

                @Override // kotlinx.coroutines.flow.Flow
                public Object collect(FlowCollector<? super FoldingFeature> flowCollector, Continuation continuation) {
                    Object collect = Flow.this.collect(new AnonymousClass2(flowCollector, foldingFeatureObserver), continuation);
                    return collect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? collect : Unit.INSTANCE;
                }
            });
            final FoldingFeatureObserver foldingFeatureObserver2 = this.this$0;
            this.label = 1;
            if (distinctUntilChanged.collect(new FlowCollector<FoldingFeature>() { // from class: androidx.slidingpanelayout.widget.FoldingFeatureObserver$registerLayoutStateChangeCallback$1$invokeSuspend$$inlined$collect$1
                @Override // kotlinx.coroutines.flow.FlowCollector
                public Object emit(FoldingFeature foldingFeature, Continuation<? super Unit> continuation) {
                    FoldingFeatureObserver.OnFoldingFeatureChangeListener onFoldingFeatureChangeListener;
                    Unit unit;
                    FoldingFeature foldingFeature2 = foldingFeature;
                    onFoldingFeatureChangeListener = FoldingFeatureObserver.this.onFoldingFeatureChangeListener;
                    if (onFoldingFeatureChangeListener == null) {
                        unit = null;
                    } else {
                        onFoldingFeatureChangeListener.onFoldingFeatureChange(foldingFeature2);
                        unit = Unit.INSTANCE;
                    }
                    return unit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? unit : Unit.INSTANCE;
                }
            }, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else if (i == 1) {
            ResultKt.throwOnFailure(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return Unit.INSTANCE;
    }
}
