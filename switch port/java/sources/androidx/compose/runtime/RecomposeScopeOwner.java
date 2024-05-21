package androidx.compose.runtime;

import kotlin.Metadata;

/* compiled from: RecomposeScopeImpl.kt */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001H&J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u0001H&ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000bÀ\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/RecomposeScopeOwner;", "", "invalidate", "Landroidx/compose/runtime/InvalidationResult;", "scope", "Landroidx/compose/runtime/RecomposeScopeImpl;", "instance", "recomposeScopeReleased", "", "recordReadOf", "value", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface RecomposeScopeOwner {
    InvalidationResult invalidate(RecomposeScopeImpl scope, Object instance);

    void recomposeScopeReleased(RecomposeScopeImpl scope);

    void recordReadOf(Object value);
}
