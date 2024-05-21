package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.foundation.ScrollState;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TabRow.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.ScrollableTabData$onLaidOut$1$1", f = "TabRow.kt", i = {}, l = {458}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ScrollableTabData$onLaidOut$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ int $calculatedOffset;
    int label;
    final /* synthetic */ ScrollableTabData this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollableTabData$onLaidOut$1$1(ScrollableTabData scrollableTabData, int i, Continuation<? super ScrollableTabData$onLaidOut$1$1> continuation) {
        super(2, continuation);
        this.this$0 = scrollableTabData;
        this.$calculatedOffset = i;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ScrollableTabData$onLaidOut$1$1(this.this$0, this.$calculatedOffset, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((ScrollableTabData$onLaidOut$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ScrollState scrollState;
        AnimationSpec<Float> animationSpec;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            scrollState = this.this$0.scrollState;
            int i2 = this.$calculatedOffset;
            animationSpec = TabRowKt.ScrollableTabRowScrollSpec;
            this.label = 1;
            if (scrollState.animateScrollTo(i2, animationSpec, this) == coroutine_suspended) {
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
