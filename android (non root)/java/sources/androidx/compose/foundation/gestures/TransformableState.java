package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;

/* compiled from: TransformableState.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001JD\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2'\u0010\t\u001a#\b\u0001\u0012\u0004\u0012\u00020\u000b\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f\u0012\u0006\u0012\u0004\u0018\u00010\u00010\n¢\u0006\u0002\b\rH¦@ø\u0001\u0000¢\u0006\u0002\u0010\u000eR\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0002\u0010\u0004ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u000fÀ\u0006\u0003"}, d2 = {"Landroidx/compose/foundation/gestures/TransformableState;", "", "isTransformInProgress", "", "()Z", "transform", "", "transformPriority", "Landroidx/compose/foundation/MutatePriority;", "block", "Lkotlin/Function2;", "Landroidx/compose/foundation/gestures/TransformScope;", "Lkotlin/coroutines/Continuation;", "Lkotlin/ExtensionFunctionType;", "(Landroidx/compose/foundation/MutatePriority;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface TransformableState {
    boolean isTransformInProgress();

    Object transform(MutatePriority mutatePriority, Function2<? super TransformScope, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation);

    /* compiled from: TransformableState.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class DefaultImpls {
    }

    static /* synthetic */ Object transform$default(TransformableState transformableState, MutatePriority mutatePriority, Function2 function2, Continuation continuation, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: transform");
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return transformableState.transform(mutatePriority, function2, continuation);
    }
}
