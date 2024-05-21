package androidx.compose.material3;

import androidx.compose.foundation.gestures.DragScope;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: SwipeableV2.kt */
@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002H\u008a@"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.compose.material3.SwipeableV2State$swipeDraggableState$1$drag$2", f = "SwipeableV2.kt", i = {}, l = {188}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
final class SwipeableV2State$swipeDraggableState$1$drag$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    final /* synthetic */ Function2<DragScope, Continuation<? super Unit>, Object> $block;
    int label;
    final /* synthetic */ SwipeableV2State$swipeDraggableState$1<T> this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SwipeableV2State$swipeDraggableState$1$drag$2(Function2<? super DragScope, ? super Continuation<? super Unit>, ? extends Object> function2, SwipeableV2State$swipeDraggableState$1<T> swipeableV2State$swipeDraggableState$1, Continuation<? super SwipeableV2State$swipeDraggableState$1$drag$2> continuation) {
        super(1, continuation);
        this.$block = function2;
        this.this$0 = swipeableV2State$swipeDraggableState$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Continuation<?> continuation) {
        return new SwipeableV2State$swipeDraggableState$1$drag$2(this.$block, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Continuation<? super Unit> continuation) {
        return ((SwipeableV2State$swipeDraggableState$1$drag$2) create(continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        SwipeableV2State$swipeDraggableState$1$dragScope$1 swipeableV2State$swipeDraggableState$1$dragScope$1;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Function2<DragScope, Continuation<? super Unit>, Object> function2 = this.$block;
            swipeableV2State$swipeDraggableState$1$dragScope$1 = ((SwipeableV2State$swipeDraggableState$1) this.this$0).dragScope;
            this.label = 1;
            if (function2.invoke(swipeableV2State$swipeDraggableState$1$dragScope$1, this) == coroutine_suspended) {
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
