package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import androidx.exifinterface.media.ExifInterface;
import io.sentry.protocol.SentryStackFrame;
import io.sentry.protocol.SentryStackTrace;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: LruCache.kt */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000e\n\u0002\u0010%\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u0002*\b\b\u0001\u0010\u0003*\u00020\u00022\u00020\u0002B\u000f\u0012\b\b\u0001\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0017\u0010\u0011\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00028\u0000H\u0014¢\u0006\u0002\u0010\u0013J\u0006\u0010\u0007\u001a\u00020\u0005J/\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0018\u001a\u00028\u00012\b\u0010\u0019\u001a\u0004\u0018\u00018\u0001H\u0014¢\u0006\u0002\u0010\u001aJ\u0006\u0010\u001b\u001a\u00020\u0015J\u0006\u0010\b\u001a\u00020\u0005J\u0018\u0010\u001c\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00028\u0000H\u0086\u0002¢\u0006\u0002\u0010\u0013J\u0006\u0010\t\u001a\u00020\u0005J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u000e\u001a\u00020\u0005J\u001d\u0010\u001d\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001¢\u0006\u0002\u0010\u001fJ\u0006\u0010\u000f\u001a\u00020\u0005J\u0015\u0010 \u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0012\u001a\u00028\u0000¢\u0006\u0002\u0010\u0013J\u0012\u0010!\u001a\u00020\u00152\b\b\u0001\u0010\u0004\u001a\u00020\u0005H\u0016J\u001d\u0010\"\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0002¢\u0006\u0002\u0010#J\u0006\u0010\u0010\u001a\u00020\u0005J\u001d\u0010$\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u001e\u001a\u00028\u0001H\u0014¢\u0006\u0002\u0010#J\u0012\u0010%\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010&J\b\u0010'\u001a\u00020(H\u0016J\u0010\u0010)\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u0005H\u0016R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006*"}, d2 = {"Landroidx/collection/LruCache;", "K", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "maxSize", "", "(I)V", "createCount", "evictionCount", "hitCount", SentryStackFrame.JsonKeys.LOCK, "Landroidx/collection/internal/Lock;", "map", "Landroidx/collection/internal/LruHashMap;", "missCount", "putCount", "size", "create", "key", "(Ljava/lang/Object;)Ljava/lang/Object;", "entryRemoved", "", "evicted", "", "oldValue", "newValue", "(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "evictAll", "get", "put", "value", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "remove", "resize", "safeSizeOf", "(Ljava/lang/Object;Ljava/lang/Object;)I", "sizeOf", SentryStackTrace.JsonKeys.SNAPSHOT, "", "toString", "", "trimToSize", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final Lock lock;
    private final LruHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    protected V create(K key) {
        Intrinsics.checkNotNullParameter(key, "key");
        return null;
    }

    protected void entryRemoved(boolean evicted, K key, V oldValue, V newValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(oldValue, "oldValue");
    }

    protected int sizeOf(K key, V value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        return 1;
    }

    public LruCache(int i) {
        this.maxSize = i;
        if (i <= 0) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        this.map = new LruHashMap<>(0, 0.75f);
        this.lock = new Lock();
    }

    private final int safeSizeOf(K key, V value) {
        int sizeOf = sizeOf(key, value);
        if (sizeOf >= 0) {
            return sizeOf;
        }
        throw new IllegalStateException(("Negative size: " + key + '=' + value).toString());
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Map<K, V> snapshot() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        synchronized (this.lock) {
            Iterator<T> it = this.map.getEntries().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            Unit unit = Unit.INSTANCE;
        }
        return linkedHashMap;
    }

    public void resize(int maxSize) {
        if (maxSize <= 0) {
            throw new IllegalArgumentException("maxSize <= 0".toString());
        }
        synchronized (this.lock) {
            this.maxSize = maxSize;
            Unit unit = Unit.INSTANCE;
        }
        trimToSize(maxSize);
    }

    public final V get(K key) {
        V v;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            V v2 = this.map.get(key);
            if (v2 != null) {
                this.hitCount++;
                return v2;
            }
            this.missCount++;
            V create = create(key);
            if (create == null) {
                return null;
            }
            synchronized (this.lock) {
                this.createCount++;
                v = (V) this.map.put(key, create);
                if (v != null) {
                    this.map.put(key, v);
                } else {
                    this.size += safeSizeOf(key, create);
                    Unit unit = Unit.INSTANCE;
                }
            }
            if (v != null) {
                entryRemoved(false, key, create, v);
                return v;
            }
            trimToSize(this.maxSize);
            return create;
        }
    }

    public final V put(K key, V value) {
        V put;
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        synchronized (this.lock) {
            this.putCount++;
            this.size += safeSizeOf(key, value);
            put = this.map.put(key, value);
            if (put != null) {
                this.size -= safeSizeOf(key, put);
            }
            Unit unit = Unit.INSTANCE;
        }
        if (put != null) {
            entryRemoved(false, key, put, value);
        }
        trimToSize(this.maxSize);
        return put;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0061, code lost:
    
        throw new java.lang.IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!".toString());
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void trimToSize(int r6) {
        /*
            r5 = this;
        L0:
            androidx.collection.internal.Lock r0 = r5.lock
            monitor-enter(r0)
            int r1 = r5.size     // Catch: java.lang.Throwable -> L62
            if (r1 < 0) goto L56
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L62
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L62
            if (r1 == 0) goto L13
            int r1 = r5.size     // Catch: java.lang.Throwable -> L62
            if (r1 != 0) goto L56
        L13:
            int r1 = r5.size     // Catch: java.lang.Throwable -> L62
            if (r1 <= r6) goto L54
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L62
            boolean r1 = r1.isEmpty()     // Catch: java.lang.Throwable -> L62
            if (r1 == 0) goto L20
            goto L54
        L20:
            androidx.collection.internal.LruHashMap<K, V> r1 = r5.map     // Catch: java.lang.Throwable -> L62
            java.util.Set r1 = r1.getEntries()     // Catch: java.lang.Throwable -> L62
            java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L62
            java.lang.Object r1 = kotlin.collections.CollectionsKt.firstOrNull(r1)     // Catch: java.lang.Throwable -> L62
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1     // Catch: java.lang.Throwable -> L62
            if (r1 != 0) goto L32
            monitor-exit(r0)
            return
        L32:
            java.lang.Object r2 = r1.getKey()     // Catch: java.lang.Throwable -> L62
            java.lang.Object r1 = r1.getValue()     // Catch: java.lang.Throwable -> L62
            androidx.collection.internal.LruHashMap<K, V> r3 = r5.map     // Catch: java.lang.Throwable -> L62
            r3.remove(r2)     // Catch: java.lang.Throwable -> L62
            int r3 = r5.size     // Catch: java.lang.Throwable -> L62
            int r4 = r5.safeSizeOf(r2, r1)     // Catch: java.lang.Throwable -> L62
            int r3 = r3 - r4
            r5.size = r3     // Catch: java.lang.Throwable -> L62
            int r3 = r5.evictionCount     // Catch: java.lang.Throwable -> L62
            r4 = 1
            int r3 = r3 + r4
            r5.evictionCount = r3     // Catch: java.lang.Throwable -> L62
            monitor-exit(r0)
            r0 = 0
            r5.entryRemoved(r4, r2, r1, r0)
            goto L0
        L54:
            monitor-exit(r0)
            return
        L56:
            java.lang.String r5 = "LruCache.sizeOf() is reporting inconsistent results!"
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L62
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L62
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L62
            throw r6     // Catch: java.lang.Throwable -> L62
        L62:
            r5 = move-exception
            monitor-exit(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.collection.LruCache.trimToSize(int):void");
    }

    public final V remove(K key) {
        V remove;
        Intrinsics.checkNotNullParameter(key, "key");
        synchronized (this.lock) {
            remove = this.map.remove(key);
            if (remove != null) {
                this.size -= safeSizeOf(key, remove);
            }
            Unit unit = Unit.INSTANCE;
        }
        if (remove != null) {
            entryRemoved(false, key, remove, null);
        }
        return remove;
    }

    public final int size() {
        int i;
        synchronized (this.lock) {
            i = this.size;
        }
        return i;
    }

    public final int maxSize() {
        int i;
        synchronized (this.lock) {
            i = this.maxSize;
        }
        return i;
    }

    public final int hitCount() {
        int i;
        synchronized (this.lock) {
            i = this.hitCount;
        }
        return i;
    }

    public final int missCount() {
        int i;
        synchronized (this.lock) {
            i = this.missCount;
        }
        return i;
    }

    public final int createCount() {
        int i;
        synchronized (this.lock) {
            i = this.createCount;
        }
        return i;
    }

    public final int putCount() {
        int i;
        synchronized (this.lock) {
            i = this.putCount;
        }
        return i;
    }

    public final int evictionCount() {
        int i;
        synchronized (this.lock) {
            i = this.evictionCount;
        }
        return i;
    }

    public String toString() {
        String str;
        synchronized (this.lock) {
            int i = this.hitCount;
            int i2 = this.missCount + i;
            str = "LruCache[maxSize=" + this.maxSize + ",hits=" + this.hitCount + ",misses=" + this.missCount + ",hitRate=" + (i2 != 0 ? (i * 100) / i2 : 0) + "%]";
        }
        return str;
    }
}
