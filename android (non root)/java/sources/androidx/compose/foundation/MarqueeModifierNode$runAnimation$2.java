package androidx.compose.foundation;

import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: BasicMarquee.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2", f = "BasicMarquee.kt", i = {}, l = {352}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class MarqueeModifierNode$runAnimation$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ MarqueeModifierNode this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MarqueeModifierNode$runAnimation$2(MarqueeModifierNode marqueeModifierNode, Continuation<? super MarqueeModifierNode$runAnimation$2> continuation) {
        super(2, continuation);
        this.this$0 = marqueeModifierNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MarqueeModifierNode$runAnimation$2(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((MarqueeModifierNode$runAnimation$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            final MarqueeModifierNode marqueeModifierNode = this.this$0;
            this.label = 1;
            if (FlowKt.collectLatest(SnapshotStateKt.snapshotFlow(new Function0<Float>() { // from class: androidx.compose.foundation.MarqueeModifierNode$runAnimation$2.1
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final Float invoke() {
                    int contentWidth;
                    int containerWidth;
                    int contentWidth2;
                    int spacingPx;
                    boolean hasFocus;
                    contentWidth = MarqueeModifierNode.this.getContentWidth();
                    containerWidth = MarqueeModifierNode.this.getContainerWidth();
                    if (contentWidth <= containerWidth) {
                        return null;
                    }
                    if (MarqueeAnimationMode.m234equalsimpl0(MarqueeModifierNode.this.m246getAnimationModeZbEOnfQ(), MarqueeAnimationMode.INSTANCE.m241getWhileFocusedZbEOnfQ())) {
                        hasFocus = MarqueeModifierNode.this.getHasFocus();
                        if (!hasFocus) {
                            return null;
                        }
                    }
                    contentWidth2 = MarqueeModifierNode.this.getContentWidth();
                    spacingPx = MarqueeModifierNode.this.getSpacingPx();
                    return Float.valueOf(contentWidth2 + spacingPx);
                }
            }), new AnonymousClass2(this.this$0, null), this) == coroutine_suspended) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BasicMarquee.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\u0010\u0000\u001a\u00020\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u008a@"}, d2 = {"<anonymous>", "", "contentWithSpacingWidth", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2", f = "BasicMarquee.kt", i = {0, 0}, l = {365, 367, 369, 369}, m = "invokeSuspend", n = {"contentWithSpacingWidth", "spec"}, s = {"L$0", "L$1"})
    /* renamed from: androidx.compose.foundation.MarqueeModifierNode$runAnimation$2$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public static final class AnonymousClass2 extends SuspendLambda implements Function2<Float, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        Object L$1;
        int label;
        final /* synthetic */ MarqueeModifierNode this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(MarqueeModifierNode marqueeModifierNode, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = marqueeModifierNode;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(this.this$0, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(Float f, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(f, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c5 A[RETURN] */
        /* JADX WARN: Type inference failed for: r3v0 */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Float, java.lang.Object] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r19) {
            /*
                Method dump skipped, instructions count: 228
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MarqueeModifierNode$runAnimation$2.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }
}
