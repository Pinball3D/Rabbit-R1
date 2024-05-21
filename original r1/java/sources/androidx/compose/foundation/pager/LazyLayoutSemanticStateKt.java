package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.ui.semantics.CollectionInfo;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutSemanticState.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0000¨\u0006\u0006"}, d2 = {"LazyLayoutSemanticState", "Landroidx/compose/foundation/lazy/layout/LazyLayoutSemanticState;", SentryThread.JsonKeys.STATE, "Landroidx/compose/foundation/pager/PagerState;", "isVertical", "", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutSemanticStateKt {
    public static final LazyLayoutSemanticState LazyLayoutSemanticState(final PagerState state, final boolean z) {
        Intrinsics.checkNotNullParameter(state, "state");
        return new LazyLayoutSemanticState() { // from class: androidx.compose.foundation.pager.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1
            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public float getCurrentPosition() {
                return PagerState.this.getFirstVisiblePage$foundation_release() + (PagerState.this.getFirstVisiblePageOffset$foundation_release() / 100000.0f);
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public boolean getCanScrollForward() {
                return PagerState.this.getCanScrollForward();
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public Object animateScrollBy(float f, Continuation<? super Unit> continuation) {
                Object animateScrollBy$default = ScrollExtensionsKt.animateScrollBy$default(PagerState.this, f, null, continuation, 2, null);
                return animateScrollBy$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? animateScrollBy$default : Unit.INSTANCE;
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public Object scrollToItem(int i, Continuation<? super Unit> continuation) {
                Object scrollToPage$default = PagerState.scrollToPage$default(PagerState.this, i, 0.0f, continuation, 2, null);
                return scrollToPage$default == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? scrollToPage$default : Unit.INSTANCE;
            }

            @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
            public CollectionInfo collectionInfo() {
                if (z) {
                    return new CollectionInfo(-1, 1);
                }
                return new CollectionInfo(1, -1);
            }
        };
    }
}
