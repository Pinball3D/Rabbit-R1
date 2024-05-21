package com.google.common.collect;

import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class MapMaker {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    static final int UNSET_INT = -1;

    @CheckForNull
    Equivalence<Object> keyEquivalence;

    @CheckForNull
    MapMakerInternalMap.Strength keyStrength;
    boolean useCustomMap;

    @CheckForNull
    MapMakerInternalMap.Strength valueStrength;
    int initialCapacity = -1;
    int concurrencyLevel = -1;

    /* loaded from: classes3.dex */
    enum Dummy {
        VALUE
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getConcurrencyLevel() {
        int i = this.concurrencyLevel;
        if (i == -1) {
            return 4;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getInitialCapacity() {
        int i = this.initialCapacity;
        if (i == -1) {
            return 16;
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMaker keyEquivalence(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.keyEquivalence;
        Preconditions.checkState(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.keyEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        this.useCustomMap = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> getKeyEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.keyEquivalence, getKeyStrength().defaultEquivalence());
    }

    public MapMaker initialCapacity(int i) {
        int i2 = this.initialCapacity;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.initialCapacity = i;
        return this;
    }

    public MapMaker concurrencyLevel(int i) {
        int i2 = this.concurrencyLevel;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.concurrencyLevel = i;
        return this;
    }

    public MapMaker weakKeys() {
        return setKeyStrength(MapMakerInternalMap.Strength.WEAK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMaker setKeyStrength(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.keyStrength;
        Preconditions.checkState(strength2 == null, "Key strength was already set to %s", strength2);
        this.keyStrength = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.useCustomMap = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMakerInternalMap.Strength getKeyStrength() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.keyStrength, MapMakerInternalMap.Strength.STRONG);
    }

    public MapMaker weakValues() {
        return setValueStrength(MapMakerInternalMap.Strength.WEAK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMaker setValueStrength(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.valueStrength;
        Preconditions.checkState(strength2 == null, "Value strength was already set to %s", strength2);
        this.valueStrength = (MapMakerInternalMap.Strength) Preconditions.checkNotNull(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.useCustomMap = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MapMakerInternalMap.Strength getValueStrength() {
        return (MapMakerInternalMap.Strength) MoreObjects.firstNonNull(this.valueStrength, MapMakerInternalMap.Strength.STRONG);
    }

    public <K, V> ConcurrentMap<K, V> makeMap() {
        if (!this.useCustomMap) {
            return new ConcurrentHashMap(getInitialCapacity(), 0.75f, getConcurrencyLevel());
        }
        return MapMakerInternalMap.create(this);
    }

    public String toString() {
        MoreObjects.ToStringHelper stringHelper = MoreObjects.toStringHelper(this);
        int i = this.initialCapacity;
        if (i != -1) {
            stringHelper.add("initialCapacity", i);
        }
        int i2 = this.concurrencyLevel;
        if (i2 != -1) {
            stringHelper.add("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.keyStrength;
        if (strength != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.valueStrength;
        if (strength2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(strength2.toString()));
        }
        if (this.keyEquivalence != null) {
            stringHelper.addValue("keyEquivalence");
        }
        return stringHelper.toString();
    }
}
