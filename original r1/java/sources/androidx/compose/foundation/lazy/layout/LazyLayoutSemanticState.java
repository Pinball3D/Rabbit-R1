package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.semantics.CollectionInfo;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;

/* compiled from: LazyLayoutSemantics.kt */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b`\u0018\u00002\u00020\u0001J\u0019\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0007H¦@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\b\u0010\u000e\u001a\u00020\u000fH&J\u0019\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0013R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\u0014À\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", "", "canScrollForward", "", "getCanScrollForward", "()Z", "currentPosition", "", "getCurrentPosition", "()F", "animateScrollBy", "", "delta", "(FLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "collectionInfo", "Landroidx/compose/ui/semantics/CollectionInfo;", "scrollToItem", "index", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyLayoutSemanticState {
    Object animateScrollBy(float f, Continuation<? super Unit> continuation);

    CollectionInfo collectionInfo();

    boolean getCanScrollForward();

    float getCurrentPosition();

    Object scrollToItem(int i, Continuation<? super Unit> continuation);
}
