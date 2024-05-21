package androidx.compose.foundation.lazy.layout;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutItemProvider.kt */
@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u001a\u001e\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0001H\u0001¨\u0006\u0006"}, d2 = {"findIndexByKey", "", "Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "key", "", "lastKnownIndex", "foundation_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class LazyLayoutItemProviderKt {
    public static final int findIndexByKey(LazyLayoutItemProvider lazyLayoutItemProvider, Object obj, int i) {
        int index;
        Intrinsics.checkNotNullParameter(lazyLayoutItemProvider, "<this>");
        return (obj == null || lazyLayoutItemProvider.getItemCount() == 0 || (i < lazyLayoutItemProvider.getItemCount() && Intrinsics.areEqual(obj, lazyLayoutItemProvider.getKey(i))) || (index = lazyLayoutItemProvider.getIndex(obj)) == -1) ? i : index;
    }
}
