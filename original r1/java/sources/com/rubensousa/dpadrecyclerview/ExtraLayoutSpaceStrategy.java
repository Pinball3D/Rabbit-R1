package com.rubensousa.dpadrecyclerview;

import androidx.recyclerview.widget.RecyclerView;
import io.sentry.protocol.SentryThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ExtraLayoutSpaceStrategy.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/ExtraLayoutSpaceStrategy;", "", "calculateEndExtraLayoutSpace", "", SentryThread.JsonKeys.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "calculateStartExtraLayoutSpace", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ExtraLayoutSpaceStrategy {

    /* compiled from: ExtraLayoutSpaceStrategy.kt */
    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class DefaultImpls {
        public static int calculateEndExtraLayoutSpace(ExtraLayoutSpaceStrategy extraLayoutSpaceStrategy, RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            return 0;
        }

        public static int calculateStartExtraLayoutSpace(ExtraLayoutSpaceStrategy extraLayoutSpaceStrategy, RecyclerView.State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            return 0;
        }
    }

    int calculateEndExtraLayoutSpace(RecyclerView.State state);

    int calculateStartExtraLayoutSpace(RecyclerView.State state);
}
