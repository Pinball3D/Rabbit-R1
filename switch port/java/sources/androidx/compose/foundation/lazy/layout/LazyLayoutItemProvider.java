package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.Composer;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LazyLayoutItemProvider.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\bg\u0018\u00002\u00020\u0001J\u001d\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0001H'¢\u0006\u0002\u0010\nJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00012\u0006\u0010\b\u001a\u00020\u0003H\u0016J\u0010\u0010\f\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0001H\u0016J\u0010\u0010\r\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0003H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u000eÀ\u0006\u0001"}, d2 = {"Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;", "", "itemCount", "", "getItemCount", "()I", "Item", "", "index", "key", "(ILjava/lang/Object;Landroidx/compose/runtime/Composer;I)V", "getContentType", "getIndex", "getKey", "foundation_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface LazyLayoutItemProvider {
    void Item(int i, Object obj, Composer composer, int i2);

    default Object getContentType(int index) {
        return null;
    }

    default int getIndex(Object key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return -1;
    }

    int getItemCount();

    default Object getKey(int index) {
        return Lazy_androidKt.getDefaultLazyLayoutKey(index);
    }
}
