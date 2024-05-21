package kotlin.collections.builders;

import io.sentry.protocol.ViewHierarchyNode;
import java.io.Externalizable;
import java.io.InvalidObjectException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: ListBuilder.kt */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0007\b\u0016¢\u0006\u0002\u0010\u0002B\u0019\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0012\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lkotlin/collections/builders/SerializedCollection;", "Ljava/io/Externalizable;", "()V", "collection", "", ViewHierarchyNode.JsonKeys.TAG, "", "(Ljava/util/Collection;I)V", "readExternal", "", "input", "Ljava/io/ObjectInput;", "readResolve", "", "writeExternal", "output", "Ljava/io/ObjectOutput;", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SerializedCollection implements Externalizable {
    private static final long serialVersionUID = 0;
    public static final int tagList = 0;
    public static final int tagSet = 1;
    private Collection<?> collection;
    private final int tag;

    private final Object readResolve() {
        return this.collection;
    }

    public SerializedCollection(Collection<?> collection, int i) {
        Intrinsics.checkNotNullParameter(collection, "collection");
        this.collection = collection;
        this.tag = i;
    }

    public SerializedCollection() {
        this(CollectionsKt.emptyList(), 0);
    }

    @Override // java.io.Externalizable
    public void writeExternal(ObjectOutput output) {
        Intrinsics.checkNotNullParameter(output, "output");
        output.writeByte(this.tag);
        output.writeInt(this.collection.size());
        Iterator<?> it = this.collection.iterator();
        while (it.hasNext()) {
            output.writeObject(it.next());
        }
    }

    @Override // java.io.Externalizable
    public void readExternal(ObjectInput input) {
        List build;
        Intrinsics.checkNotNullParameter(input, "input");
        byte readByte = input.readByte();
        int i = readByte & 1;
        if ((readByte & (-2)) != 0) {
            throw new InvalidObjectException("Unsupported flags value: " + ((int) readByte) + '.');
        }
        int readInt = input.readInt();
        if (readInt < 0) {
            throw new InvalidObjectException("Illegal size value: " + readInt + '.');
        }
        int i2 = 0;
        if (i == 0) {
            List createListBuilder = CollectionsKt.createListBuilder(readInt);
            while (i2 < readInt) {
                createListBuilder.add(input.readObject());
                i2++;
            }
            build = CollectionsKt.build(createListBuilder);
        } else if (i == 1) {
            Set createSetBuilder = SetsKt.createSetBuilder(readInt);
            while (i2 < readInt) {
                createSetBuilder.add(input.readObject());
                i2++;
            }
            build = SetsKt.build(createSetBuilder);
        } else {
            throw new InvalidObjectException("Unsupported collection type tag: " + i + '.');
        }
        this.collection = build;
    }
}
