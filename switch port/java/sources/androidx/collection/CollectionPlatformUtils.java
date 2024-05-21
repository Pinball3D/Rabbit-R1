package androidx.collection;

import kotlin.Metadata;

/* compiled from: CollectionPlatformUtils.jvm.kt */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÀ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00060\u0004j\u0002`\u0005H\u0080\b¢\u0006\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Landroidx/collection/CollectionPlatformUtils;", "", "()V", "createIndexOutOfBoundsException", "Ljava/lang/IndexOutOfBoundsException;", "Lkotlin/IndexOutOfBoundsException;", "createIndexOutOfBoundsException$collection", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CollectionPlatformUtils {
    public static final CollectionPlatformUtils INSTANCE = new CollectionPlatformUtils();

    private CollectionPlatformUtils() {
    }

    public final IndexOutOfBoundsException createIndexOutOfBoundsException$collection() {
        return new ArrayIndexOutOfBoundsException();
    }
}
