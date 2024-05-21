package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.TransactionInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: ImmutableList.kt */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\b`\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003:\u0001\bJ\u001e\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\tÀ\u0006\u0001"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;", ExifInterface.LONGITUDE_EAST, "", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;", "subList", "fromIndex", "", "toIndex", "SubList", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public interface ImmutableList<E> extends List<E>, ImmutableCollection<E>, KMappedMarker {
    @Override // java.util.List
    default ImmutableList<E> subList(int fromIndex, int toIndex) {
        return new SubList(this, fromIndex, toIndex);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ImmutableList.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u0000*\u0004\b\u0001\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B#\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0016\u0010\r\u001a\u00028\u00012\u0006\u0010\u000e\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u000fJ\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0016R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList$SubList;", ExifInterface.LONGITUDE_EAST, "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;", "Lkotlin/collections/AbstractList;", TransactionInfo.JsonKeys.SOURCE, "fromIndex", "", "toIndex", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableList;II)V", "_size", "size", "getSize", "()I", "get", "index", "(I)Ljava/lang/Object;", "subList", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class SubList<E> extends AbstractList<E> implements ImmutableList<E> {
        private int _size;
        private final int fromIndex;
        private final ImmutableList<E> source;
        private final int toIndex;

        @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
        /* renamed from: getSize, reason: from getter */
        public int get_size() {
            return this._size;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public SubList(ImmutableList<? extends E> source, int i, int i2) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.source = source;
            this.fromIndex = i;
            this.toIndex = i2;
            ListImplementation.checkRangeIndexes$runtime_release(i, i2, source.size());
            this._size = i2 - i;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public E get(int index) {
            ListImplementation.checkElementIndex$runtime_release(index, this._size);
            return this.source.get(this.fromIndex + index);
        }

        @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList
        public ImmutableList<E> subList(int fromIndex, int toIndex) {
            ListImplementation.checkRangeIndexes$runtime_release(fromIndex, toIndex, this._size);
            ImmutableList<E> immutableList = this.source;
            int i = this.fromIndex;
            return new SubList(immutableList, fromIndex + i, i + toIndex);
        }
    }
}
