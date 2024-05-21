package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableCollection;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.exifinterface.media.ExifInterface;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.AbstractMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: PersistentHashMap.kt */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010&\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\"\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0004\b\u0010\u0018\u0000 ,*\u0004\b\u0000\u0010\u0001*\u0004\b\u0001\u0010\u00022\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00032\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0004:\u0001,B!\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0014\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u001aH\u0016J\u0014\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0004H\u0016J\u0015\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u001fJ\u001a\u0010 \u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f0\u000bH\u0002J\u0018\u0010!\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u001e\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\"J\u001a\u0010\r\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f0#H\u0001J)\u0010$\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u0010%\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010&J*\u0010'\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00042\u0014\u0010(\u001a\u0010\u0012\u0006\b\u0001\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010)H\u0016J!\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u001e\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010+J)\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u00002\u0006\u0010\u001e\u001a\u00028\u00002\u0006\u0010%\u001a\u00028\u0001H\u0016¢\u0006\u0002\u0010&R&\u0010\n\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\f0\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u000eR \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0006X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0007\u001a\u00020\bX\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00010\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018¨\u0006-"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lkotlin/collections/AbstractMap;", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/PersistentMap;", "node", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "size", "", "(Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;I)V", "entries", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;", "", "getEntries", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableSet;", "keys", "getKeys", "getNode$runtime_release", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/TrieNode;", "getSize", "()I", "values", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;", "getValues", "()Landroidx/compose/runtime/external/kotlinx/collections/immutable/ImmutableCollection;", "builder", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;", "clear", "containsKey", "", "key", "(Ljava/lang/Object;)Z", "createEntries", "get", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "put", "value", "(Ljava/lang/Object;Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "putAll", "m", "", "remove", "(Ljava/lang/Object;)Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "Companion", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class PersistentHashMap<K, V> extends AbstractMap<K, V> implements PersistentMap<K, V> {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final PersistentHashMap EMPTY = new PersistentHashMap(TrieNode.INSTANCE.getEMPTY$runtime_release(), 0);
    private final TrieNode<K, V> node;
    private final int size;

    public final TrieNode<K, V> getNode$runtime_release() {
        return this.node;
    }

    @Override // kotlin.collections.AbstractMap
    public int getSize() {
        return this.size;
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ ImmutableSet<Map.Entry<K, V>> entrySet() {
        return getEntries();
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ ImmutableSet<K> keySet() {
        return getKeys();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractMap, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap put(Object obj, Object obj2) {
        return put((PersistentHashMap<K, V>) obj, obj2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractMap, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap remove(Object obj) {
        return remove((PersistentHashMap<K, V>) obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public /* bridge */ /* synthetic */ PersistentMap remove(Object obj, Object obj2) {
        return remove((PersistentHashMap<K, V>) obj, obj2);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public final /* bridge */ ImmutableCollection<V> values() {
        return getValues();
    }

    public PersistentHashMap(TrieNode<K, V> node, int i) {
        Intrinsics.checkNotNullParameter(node, "node");
        this.node = node;
        this.size = i;
    }

    @Override // kotlin.collections.AbstractMap, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<K> getKeys() {
        return new PersistentHashMapKeys(this);
    }

    @Override // kotlin.collections.AbstractMap, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableCollection<V> getValues() {
        return new PersistentHashMapValues(this);
    }

    @Override // kotlin.collections.AbstractMap, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public ImmutableSet<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    private final ImmutableSet<Map.Entry<K, V>> createEntries() {
        return new PersistentHashMapEntries(this);
    }

    @Override // kotlin.collections.AbstractMap, androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableMap
    public final Set<Map.Entry<K, V>> getEntries() {
        return createEntries();
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public boolean containsKey(K key) {
        return this.node.containsKey(key != null ? key.hashCode() : 0, key, 0);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map
    public V get(K key) {
        return this.node.get(key != null ? key.hashCode() : 0, key, 0);
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> put(K key, V value) {
        TrieNode.ModificationResult<K, V> put = this.node.put(key != null ? key.hashCode() : 0, key, value, 0);
        return put == null ? this : new PersistentHashMap<>(put.getNode(), size() + put.getSizeDelta());
    }

    @Override // kotlin.collections.AbstractMap, java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> remove(K key) {
        TrieNode<K, V> remove = this.node.remove(key != null ? key.hashCode() : 0, key, 0);
        if (this.node == remove) {
            return this;
        }
        if (remove == null) {
            return INSTANCE.emptyOf$runtime_release();
        }
        return new PersistentHashMap<>(remove, size() - 1);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentHashMap<K, V> remove(K key, V value) {
        TrieNode<K, V> remove = this.node.remove(key != null ? key.hashCode() : 0, key, value, 0);
        if (this.node == remove) {
            return this;
        }
        if (remove == null) {
            return INSTANCE.emptyOf$runtime_release();
        }
        return new PersistentHashMap<>(remove, size() - 1);
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> putAll(Map<? extends K, ? extends V> m) {
        Intrinsics.checkNotNullParameter(m, "m");
        PersistentHashMap<K, V> persistentHashMap = this;
        Intrinsics.checkNotNull(persistentHashMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate, V of androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt.mutate>");
        PersistentMap.Builder<K, V> builder2 = persistentHashMap.builder2();
        builder2.putAll(m);
        return builder2.build2();
    }

    @Override // java.util.Map, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    public PersistentMap<K, V> clear() {
        return INSTANCE.emptyOf$runtime_release();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentMap
    /* renamed from: builder */
    public PersistentHashMapBuilder<K, V> builder2() {
        return new PersistentHashMapBuilder<>(this);
    }

    /* compiled from: PersistentHashMap.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\b\u0005\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J%\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u0002H\b0\u0004\"\u0004\b\u0002\u0010\u0007\"\u0004\b\u0003\u0010\bH\u0000¢\u0006\u0002\b\tR\u001a\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap$Companion;", "", "()V", "EMPTY", "Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMap;", "", "emptyOf", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "emptyOf$runtime_release", "runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final <K, V> PersistentHashMap<K, V> emptyOf$runtime_release() {
            PersistentHashMap<K, V> persistentHashMap = PersistentHashMap.EMPTY;
            Intrinsics.checkNotNull(persistentHashMap, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap.Companion.emptyOf>");
            return persistentHashMap;
        }
    }
}
