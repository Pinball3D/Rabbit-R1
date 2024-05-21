package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.ui.layout.Remeasurement;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;
import okhttp3.internal.http.StatusLine;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PagerState.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Landroidx/compose/foundation/gestures/ScrollScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState$scrollToPage$2", f = "PagerState.kt", i = {}, l = {StatusLine.HTTP_MISDIRECTED_REQUEST}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class PagerState$scrollToPage$2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $page;
    final /* synthetic */ float $pageOffsetFraction;
    int label;
    final /* synthetic */ PagerState this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$scrollToPage$2(PagerState pagerState, float f, int i, Continuation<? super PagerState$scrollToPage$2> continuation) {
        super(2, continuation);
        this.this$0 = pagerState;
        this.$pageOffsetFraction = f;
        this.$page = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PagerState$scrollToPage$2(this.this$0, this.$pageOffsetFraction, this.$page, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(ScrollScope scrollScope, Continuation<? super Unit> continuation) {
        return ((PagerState$scrollToPage$2) create(scrollScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object awaitScrollDependencies;
        int coerceInPageRange;
        PagerScrollPosition pagerScrollPosition;
        int pageAvailableSpace;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            awaitScrollDependencies = this.this$0.awaitScrollDependencies(this);
            if (awaitScrollDependencies == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        float f = this.$pageOffsetFraction;
        double d = f;
        if (-0.5d <= d && d <= 0.5d) {
            coerceInPageRange = this.this$0.coerceInPageRange(this.$page);
            pagerScrollPosition = this.this$0.scrollPosition;
            pageAvailableSpace = this.this$0.getPageAvailableSpace();
            pagerScrollPosition.requestPosition(coerceInPageRange, MathKt.roundToInt(pageAvailableSpace * this.$pageOffsetFraction));
            Remeasurement remeasurement$foundation_release = this.this$0.getRemeasurement$foundation_release();
            if (remeasurement$foundation_release != null) {
                remeasurement$foundation_release.forceRemeasure();
            }
            return Unit.INSTANCE;
        }
        throw new IllegalArgumentException(("pageOffsetFraction " + f + " is not within the range -0.5 to 0.5").toString());
    }
}
