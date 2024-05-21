package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.Enum;
import java.util.EnumMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

@ElementTypesAreNonnullByDefault
/* loaded from: classes3.dex */
public final class EnumBiMap<K extends Enum<K>, V extends Enum<V>> extends AbstractBiMap<K, V> {
    private static final long serialVersionUID = 0;
    private transient Class<K> keyType;
    private transient Class<V> valueType;

    public Class<K> keyType() {
        return this.keyType;
    }

    public Class<V> valueType() {
        return this.valueType;
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(@CheckForNull Object obj) {
        return super.containsValue(obj);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.BiMap
    @CheckForNull
    public /* bridge */ /* synthetic */ Object forcePut(@ParametricNullness Object obj, @ParametricNullness Object obj2) {
        return super.forcePut(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ BiMap inverse() {
        return super.inverse();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    @CheckForNull
    public /* bridge */ /* synthetic */ Object put(@ParametricNullness Object obj, @ParametricNullness Object obj2) {
        return super.put(obj, obj2);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ void putAll(Map map) {
        super.putAll(map);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map
    @CheckForNull
    public /* bridge */ /* synthetic */ Object remove(@CheckForNull Object obj) {
        return super.remove(obj);
    }

    @Override // com.google.common.collect.AbstractBiMap, com.google.common.collect.ForwardingMap, java.util.Map, com.google.common.collect.BiMap
    public /* bridge */ /* synthetic */ Set values() {
        return super.values();
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Class<K> cls, Class<V> cls2) {
        return new EnumBiMap<>(cls, cls2);
    }

    public static <K extends Enum<K>, V extends Enum<V>> EnumBiMap<K, V> create(Map<K, V> map) {
        EnumBiMap<K, V> create = create(inferKeyType(map), inferValueType(map));
        create.putAll(map);
        return create;
    }

    private EnumBiMap(Class<K> cls, Class<V> cls2) {
        super(new EnumMap(cls), new EnumMap(cls2));
        this.keyType = cls;
        this.valueType = cls2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <K extends Enum<K>> Class<K> inferKeyType(Map<K, ?> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).keyType();
        }
        if (map instanceof EnumHashBiMap) {
            return ((EnumHashBiMap) map).keyType();
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.keySet().iterator().next().getDeclaringClass();
    }

    private static <V extends Enum<V>> Class<V> inferValueType(Map<?, V> map) {
        if (map instanceof EnumBiMap) {
            return ((EnumBiMap) map).valueType;
        }
        Preconditions.checkArgument(!map.isEmpty());
        return map.values().iterator().next().getDeclaringClass();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractBiMap
    public K checkKey(K k) {
        return (K) Preconditions.checkNotNull(k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.common.collect.AbstractBiMap
    public V checkValue(V v) {
        return (V) Preconditions.checkNotNull(v);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.keyType);
        objectOutputStream.writeObject(this.valueType);
        Serialization.writeMap(this, objectOutputStream);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.keyType = (Class) objectInputStream.readObject();
        this.valueType = (Class) objectInputStream.readObject();
        setDelegates(new EnumMap(this.keyType), new EnumMap(this.valueType));
        Serialization.populateMap(this, objectInputStream);
    }
}
