package com.google.common.collect;

import io.flutter.embedding.android.KeyboardMap;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public class CompactLinkedHashMap<K, V> extends CompactHashMap<K, V> {
    private static final int ENDPOINT = -2;
    private final boolean accessOrder;
    private transient int firstEntry;
    private transient int lastEntry;

    @CheckForNull
    transient long[] links;

    @Override // com.google.common.collect.CompactHashMap
    int firstEntryIndex() {
        return this.firstEntry;
    }

    public static <K, V> CompactLinkedHashMap<K, V> create() {
        return new CompactLinkedHashMap<>();
    }

    public static <K, V> CompactLinkedHashMap<K, V> createWithExpectedSize(int i) {
        return new CompactLinkedHashMap<>(i);
    }

    CompactLinkedHashMap() {
        this(3);
    }

    CompactLinkedHashMap(int i) {
        this(i, false);
    }

    CompactLinkedHashMap(int i, boolean z) {
        super(i);
        this.accessOrder = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public void init(int i) {
        super.init(i);
        this.firstEntry = -2;
        this.lastEntry = -2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public int allocArrays() {
        int allocArrays = super.allocArrays();
        this.links = new long[allocArrays];
        return allocArrays;
    }

    @Override // com.google.common.collect.CompactHashMap
    Map<K, V> createHashFloodingResistantDelegate(int i) {
        return new LinkedHashMap(i, 1.0f, this.accessOrder);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public Map<K, V> convertToHashFloodingResistantImplementation() {
        Map<K, V> convertToHashFloodingResistantImplementation = super.convertToHashFloodingResistantImplementation();
        this.links = null;
        return convertToHashFloodingResistantImplementation;
    }

    private int getPredecessor(int i) {
        return ((int) (link(i) >>> 32)) - 1;
    }

    @Override // com.google.common.collect.CompactHashMap
    int getSuccessor(int i) {
        return ((int) link(i)) - 1;
    }

    private void setSuccessor(int i, int i2) {
        setLink(i, (link(i) & (-4294967296L)) | ((i2 + 1) & KeyboardMap.kValueMask));
    }

    private void setPredecessor(int i, int i2) {
        setLink(i, (link(i) & KeyboardMap.kValueMask) | ((i2 + 1) << 32));
    }

    private void setSucceeds(int i, int i2) {
        if (i == -2) {
            this.firstEntry = i2;
        } else {
            setSuccessor(i, i2);
        }
        if (i2 == -2) {
            this.lastEntry = i;
        } else {
            setPredecessor(i2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public void insertEntry(int i, @ParametricNullness K k, @ParametricNullness V v, int i2, int i3) {
        super.insertEntry(i, k, v, i2, i3);
        setSucceeds(this.lastEntry, i);
        setSucceeds(i, -2);
    }

    @Override // com.google.common.collect.CompactHashMap
    void accessEntry(int i) {
        if (this.accessOrder) {
            setSucceeds(getPredecessor(i), getSuccessor(i));
            setSucceeds(this.lastEntry, i);
            setSucceeds(i, -2);
            incrementModCount();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public void moveLastEntry(int i, int i2) {
        int size = size() - 1;
        super.moveLastEntry(i, i2);
        setSucceeds(getPredecessor(i), getSuccessor(i));
        if (i < size) {
            setSucceeds(getPredecessor(size), i);
            setSucceeds(i, getSuccessor(size));
        }
        setLink(size, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.CompactHashMap
    public void resizeEntries(int i) {
        super.resizeEntries(i);
        this.links = Arrays.copyOf(requireLinks(), i);
    }

    @Override // com.google.common.collect.CompactHashMap
    int adjustAfterRemove(int i, int i2) {
        return i >= size() ? i2 : i;
    }

    @Override // com.google.common.collect.CompactHashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        if (needsAllocArrays()) {
            return;
        }
        this.firstEntry = -2;
        this.lastEntry = -2;
        long[] jArr = this.links;
        if (jArr != null) {
            Arrays.fill(jArr, 0, size(), 0L);
        }
        super.clear();
    }

    private long[] requireLinks() {
        return (long[]) Objects.requireNonNull(this.links);
    }

    private long link(int i) {
        return requireLinks()[i];
    }

    private void setLink(int i, long j) {
        requireLinks()[i] = j;
    }
}
