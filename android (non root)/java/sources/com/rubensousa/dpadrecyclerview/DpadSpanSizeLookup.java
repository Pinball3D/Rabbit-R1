package com.rubensousa.dpadrecyclerview;

import android.util.SparseIntArray;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DpadSpanSizeLookup.kt */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0005\b&\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0005¢\u0006\u0002\u0010\u0002J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u0016\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nJ\u0018\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\nH\u0016J\u0010\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&J\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "", "()V", "cacheSpanGroupIndices", "", "cacheSpanIndices", "spanGroupIndexCache", "Landroid/util/SparseIntArray;", "spanIndexCache", "getCachedSpanGroupIndex", "", "position", "spanCount", "getCachedSpanIndex", "getSpanGroupIndex", "getSpanIndex", "getSpanSize", "invalidateCache", "", "setSpanGroupIndexCacheEnabled", "enabled", "setSpanIndexCacheEnabled", "Companion", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class DpadSpanSizeLookup {

    /* renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final DpadSpanSizeLookup DEFAULT = new DpadSpanSizeLookup() { // from class: com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup$Companion$DEFAULT$1
        @Override // com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup
        public int getSpanSize(int position) {
            return 1;
        }

        @Override // com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup
        public int getSpanIndex(int position, int spanCount) {
            return position % spanCount;
        }

        @Override // com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup
        public int getSpanGroupIndex(int position, int spanCount) {
            return position / spanCount;
        }
    };
    private boolean cacheSpanGroupIndices;
    private boolean cacheSpanIndices;
    private final SparseIntArray spanIndexCache = new SparseIntArray();
    private final SparseIntArray spanGroupIndexCache = new SparseIntArray();

    public abstract int getSpanSize(int position);

    /* compiled from: DpadSpanSizeLookup.kt */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001d\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0001¢\u0006\u0002\b\fR\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup$Companion;", "", "()V", "DEFAULT", "Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "getDEFAULT$dpadrecyclerview_release", "()Lcom/rubensousa/dpadrecyclerview/DpadSpanSizeLookup;", "findFirstKeyLessThan", "", "cache", "Landroid/util/SparseIntArray;", "position", "findFirstKeyLessThan$dpadrecyclerview_release", "dpadrecyclerview_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final DpadSpanSizeLookup getDEFAULT$dpadrecyclerview_release() {
            return DpadSpanSizeLookup.DEFAULT;
        }

        @JvmStatic
        public final int findFirstKeyLessThan$dpadrecyclerview_release(SparseIntArray cache, int position) {
            Intrinsics.checkNotNullParameter(cache, "cache");
            int size = cache.size() - 1;
            int i = 0;
            while (i <= size) {
                int i2 = (i + size) >>> 1;
                if (cache.keyAt(i2) < position) {
                    i = i2 + 1;
                } else {
                    size = i2 - 1;
                }
            }
            int i3 = i - 1;
            if (i3 < 0 || i3 >= cache.size()) {
                return -1;
            }
            return cache.keyAt(i3);
        }
    }

    public final void setSpanIndexCacheEnabled(boolean enabled) {
        if (!enabled) {
            this.spanGroupIndexCache.clear();
        }
        this.cacheSpanIndices = enabled;
    }

    public final void setSpanGroupIndexCacheEnabled(boolean enabled) {
        if (!enabled) {
            this.spanGroupIndexCache.clear();
        }
        this.cacheSpanGroupIndices = enabled;
    }

    public final void invalidateCache() {
        this.spanIndexCache.clear();
        this.spanGroupIndexCache.clear();
    }

    public final int getCachedSpanIndex(int position, int spanCount) {
        if (!this.cacheSpanIndices) {
            return getSpanIndex(position, spanCount);
        }
        int i = this.spanIndexCache.get(position, -1);
        if (i != -1) {
            return i;
        }
        int spanIndex = getSpanIndex(position, spanCount);
        this.spanIndexCache.put(position, spanIndex);
        return spanIndex;
    }

    public final int getCachedSpanGroupIndex(int position, int spanCount) {
        if (!this.cacheSpanGroupIndices) {
            return getSpanGroupIndex(position, spanCount);
        }
        int i = this.spanGroupIndexCache.get(position, -1);
        if (i != -1) {
            return i;
        }
        int spanGroupIndex = getSpanGroupIndex(position, spanCount);
        this.spanGroupIndexCache.put(position, spanGroupIndex);
        return spanGroupIndex;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0026  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0035  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x002d -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002f -> B:10:0x0032). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0031 -> B:10:0x0032). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int getSpanIndex(int r6, int r7) {
        /*
            r5 = this;
            int r0 = r5.getSpanSize(r6)
            r1 = 0
            if (r0 != r7) goto L8
            return r1
        L8:
            boolean r2 = r5.cacheSpanIndices
            if (r2 == 0) goto L22
            com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup$Companion r2 = com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup.INSTANCE
            android.util.SparseIntArray r3 = r5.spanIndexCache
            int r2 = r2.findFirstKeyLessThan$dpadrecyclerview_release(r3, r6)
            if (r2 < 0) goto L22
            android.util.SparseIntArray r3 = r5.spanIndexCache
            int r3 = r3.get(r2)
            int r4 = r5.getSpanSize(r2)
            int r3 = r3 + r4
            goto L32
        L22:
            r2 = r1
            r3 = r2
        L24:
            if (r2 >= r6) goto L35
            int r4 = r5.getSpanSize(r2)
            int r3 = r3 + r4
            if (r3 != r7) goto L2f
            r3 = r1
            goto L32
        L2f:
            if (r3 <= r7) goto L32
            r3 = r4
        L32:
            int r2 = r2 + 1
            goto L24
        L35:
            int r0 = r0 + r3
            if (r0 > r7) goto L39
            r1 = r3
        L39:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rubensousa.dpadrecyclerview.DpadSpanSizeLookup.getSpanIndex(int, int):int");
    }

    public int getSpanGroupIndex(int position, int spanCount) {
        int i;
        int i2;
        int i3;
        int findFirstKeyLessThan$dpadrecyclerview_release;
        if (!this.cacheSpanGroupIndices || (findFirstKeyLessThan$dpadrecyclerview_release = INSTANCE.findFirstKeyLessThan$dpadrecyclerview_release(this.spanGroupIndexCache, position)) == -1) {
            i = 0;
            i2 = 0;
            i3 = 0;
        } else {
            i = this.spanGroupIndexCache.get(findFirstKeyLessThan$dpadrecyclerview_release);
            i2 = findFirstKeyLessThan$dpadrecyclerview_release + 1;
            i3 = getCachedSpanIndex(findFirstKeyLessThan$dpadrecyclerview_release, spanCount) + getSpanSize(findFirstKeyLessThan$dpadrecyclerview_release);
            if (i3 == spanCount) {
                i++;
                i3 = 0;
            }
        }
        int spanSize = getSpanSize(position);
        while (i2 < position) {
            int spanSize2 = getSpanSize(i2);
            i3 += spanSize2;
            if (i3 == spanCount) {
                i++;
                i3 = 0;
            } else if (i3 > spanCount) {
                i++;
                i3 = spanSize2;
            }
            i2++;
        }
        return i3 + spanSize > spanCount ? i + 1 : i;
    }
}
