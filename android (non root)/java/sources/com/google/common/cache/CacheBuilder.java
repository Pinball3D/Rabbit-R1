package com.google.common.cache;

import com.google.common.base.Ascii;
import com.google.common.base.Equivalence;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import com.google.common.base.Suppliers;
import com.google.common.base.Ticker;
import com.google.common.cache.AbstractCache;
import com.google.common.cache.LocalCache;
import com.google.errorprone.annotations.CheckReturnValue;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class CacheBuilder<K, V> {
    private static final int DEFAULT_CONCURRENCY_LEVEL = 4;
    private static final int DEFAULT_EXPIRATION_NANOS = 0;
    private static final int DEFAULT_INITIAL_CAPACITY = 16;
    private static final int DEFAULT_REFRESH_NANOS = 0;
    static final int UNSET_INT = -1;
    Equivalence<Object> keyEquivalence;
    LocalCache.Strength keyStrength;
    RemovalListener<? super K, ? super V> removalListener;
    Ticker ticker;
    Equivalence<Object> valueEquivalence;
    LocalCache.Strength valueStrength;
    Weigher<? super K, ? super V> weigher;
    static final Supplier<? extends AbstractCache.StatsCounter> NULL_STATS_COUNTER = Suppliers.ofInstance(new AbstractCache.StatsCounter() { // from class: com.google.common.cache.CacheBuilder.1
        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return CacheBuilder.EMPTY_STATS;
        }
    });
    static final CacheStats EMPTY_STATS = new CacheStats(0, 0, 0, 0, 0, 0);
    static final Supplier<AbstractCache.StatsCounter> CACHE_STATS_COUNTER = new Supplier<AbstractCache.StatsCounter>() { // from class: com.google.common.cache.CacheBuilder.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.common.base.Supplier
        public AbstractCache.StatsCounter get() {
            return new AbstractCache.SimpleStatsCounter();
        }
    };
    static final Ticker NULL_TICKER = new Ticker() { // from class: com.google.common.cache.CacheBuilder.3
        @Override // com.google.common.base.Ticker
        public long read() {
            return 0L;
        }
    };
    private static final Logger logger = Logger.getLogger(CacheBuilder.class.getName());
    boolean strictParsing = true;
    int initialCapacity = -1;
    int concurrencyLevel = -1;
    long maximumSize = -1;
    long maximumWeight = -1;
    long expireAfterWriteNanos = -1;
    long expireAfterAccessNanos = -1;
    long refreshNanos = -1;
    Supplier<? extends AbstractCache.StatsCounter> statsCounterSupplier = NULL_STATS_COUNTER;

    /* loaded from: classes2.dex */
    enum NullListener implements RemovalListener<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.RemovalListener
        public void onRemoval(RemovalNotification<Object, Object> removalNotification) {
        }
    }

    /* loaded from: classes2.dex */
    enum OneWeigher implements Weigher<Object, Object> {
        INSTANCE;

        @Override // com.google.common.cache.Weigher
        public int weigh(Object obj, Object obj2) {
            return 1;
        }
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
    public long getExpireAfterAccessNanos() {
        long j = this.expireAfterAccessNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getExpireAfterWriteNanos() {
        long j = this.expireAfterWriteNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
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
    public long getMaximumWeight() {
        if (this.expireAfterWriteNanos == 0 || this.expireAfterAccessNanos == 0) {
            return 0L;
        }
        return this.weigher == null ? this.maximumSize : this.maximumWeight;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getRefreshNanos() {
        long j = this.refreshNanos;
        if (j == -1) {
            return 0L;
        }
        return j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Supplier<? extends AbstractCache.StatsCounter> getStatsCounterSupplier() {
        return this.statsCounterSupplier;
    }

    boolean isRecordingStats() {
        return this.statsCounterSupplier == CACHE_STATS_COUNTER;
    }

    CacheBuilder<K, V> lenientParsing() {
        this.strictParsing = false;
        return this;
    }

    public CacheBuilder<K, V> recordStats() {
        this.statsCounterSupplier = CACHE_STATS_COUNTER;
        return this;
    }

    private CacheBuilder() {
    }

    @CheckReturnValue
    public static CacheBuilder<Object, Object> newBuilder() {
        return new CacheBuilder<>();
    }

    @CheckReturnValue
    public static CacheBuilder<Object, Object> from(CacheBuilderSpec cacheBuilderSpec) {
        return cacheBuilderSpec.toCacheBuilder().lenientParsing();
    }

    @CheckReturnValue
    public static CacheBuilder<Object, Object> from(String str) {
        return from(CacheBuilderSpec.parse(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheBuilder<K, V> keyEquivalence(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.keyEquivalence;
        Preconditions.checkState(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.keyEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> getKeyEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.keyEquivalence, getKeyStrength().defaultEquivalence());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheBuilder<K, V> valueEquivalence(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.valueEquivalence;
        Preconditions.checkState(equivalence2 == null, "value equivalence was already set to %s", equivalence2);
        this.valueEquivalence = (Equivalence) Preconditions.checkNotNull(equivalence);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Equivalence<Object> getValueEquivalence() {
        return (Equivalence) MoreObjects.firstNonNull(this.valueEquivalence, getValueStrength().defaultEquivalence());
    }

    public CacheBuilder<K, V> initialCapacity(int i) {
        int i2 = this.initialCapacity;
        Preconditions.checkState(i2 == -1, "initial capacity was already set to %s", i2);
        Preconditions.checkArgument(i >= 0);
        this.initialCapacity = i;
        return this;
    }

    public CacheBuilder<K, V> concurrencyLevel(int i) {
        int i2 = this.concurrencyLevel;
        Preconditions.checkState(i2 == -1, "concurrency level was already set to %s", i2);
        Preconditions.checkArgument(i > 0);
        this.concurrencyLevel = i;
        return this;
    }

    public CacheBuilder<K, V> maximumSize(long j) {
        long j2 = this.maximumSize;
        Preconditions.checkState(j2 == -1, "maximum size was already set to %s", j2);
        long j3 = this.maximumWeight;
        Preconditions.checkState(j3 == -1, "maximum weight was already set to %s", j3);
        Preconditions.checkState(this.weigher == null, "maximum size can not be combined with weigher");
        Preconditions.checkArgument(j >= 0, "maximum size must not be negative");
        this.maximumSize = j;
        return this;
    }

    public CacheBuilder<K, V> maximumWeight(long j) {
        long j2 = this.maximumWeight;
        Preconditions.checkState(j2 == -1, "maximum weight was already set to %s", j2);
        long j3 = this.maximumSize;
        Preconditions.checkState(j3 == -1, "maximum size was already set to %s", j3);
        Preconditions.checkArgument(j >= 0, "maximum weight must not be negative");
        this.maximumWeight = j;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> weigher(Weigher<? super K1, ? super V1> weigher) {
        Preconditions.checkState(this.weigher == null);
        if (this.strictParsing) {
            long j = this.maximumSize;
            Preconditions.checkState(j == -1, "weigher can not be combined with maximum size", j);
        }
        this.weigher = (Weigher) Preconditions.checkNotNull(weigher);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> Weigher<K1, V1> getWeigher() {
        return (Weigher) MoreObjects.firstNonNull(this.weigher, OneWeigher.INSTANCE);
    }

    public CacheBuilder<K, V> weakKeys() {
        return setKeyStrength(LocalCache.Strength.WEAK);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheBuilder<K, V> setKeyStrength(LocalCache.Strength strength) {
        LocalCache.Strength strength2 = this.keyStrength;
        Preconditions.checkState(strength2 == null, "Key strength was already set to %s", strength2);
        this.keyStrength = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalCache.Strength getKeyStrength() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.keyStrength, LocalCache.Strength.STRONG);
    }

    public CacheBuilder<K, V> weakValues() {
        return setValueStrength(LocalCache.Strength.WEAK);
    }

    public CacheBuilder<K, V> softValues() {
        return setValueStrength(LocalCache.Strength.SOFT);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CacheBuilder<K, V> setValueStrength(LocalCache.Strength strength) {
        LocalCache.Strength strength2 = this.valueStrength;
        Preconditions.checkState(strength2 == null, "Value strength was already set to %s", strength2);
        this.valueStrength = (LocalCache.Strength) Preconditions.checkNotNull(strength);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LocalCache.Strength getValueStrength() {
        return (LocalCache.Strength) MoreObjects.firstNonNull(this.valueStrength, LocalCache.Strength.STRONG);
    }

    public CacheBuilder<K, V> expireAfterWrite(long j, TimeUnit timeUnit) {
        long j2 = this.expireAfterWriteNanos;
        Preconditions.checkState(j2 == -1, "expireAfterWrite was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.expireAfterWriteNanos = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> expireAfterAccess(long j, TimeUnit timeUnit) {
        long j2 = this.expireAfterAccessNanos;
        Preconditions.checkState(j2 == -1, "expireAfterAccess was already set to %s ns", j2);
        Preconditions.checkArgument(j >= 0, "duration cannot be negative: %s %s", j, timeUnit);
        this.expireAfterAccessNanos = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> refreshAfterWrite(long j, TimeUnit timeUnit) {
        Preconditions.checkNotNull(timeUnit);
        long j2 = this.refreshNanos;
        Preconditions.checkState(j2 == -1, "refresh was already set to %s ns", j2);
        Preconditions.checkArgument(j > 0, "duration must be positive: %s %s", j, timeUnit);
        this.refreshNanos = timeUnit.toNanos(j);
        return this;
    }

    public CacheBuilder<K, V> ticker(Ticker ticker) {
        Preconditions.checkState(this.ticker == null);
        this.ticker = (Ticker) Preconditions.checkNotNull(ticker);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Ticker getTicker(boolean z) {
        Ticker ticker = this.ticker;
        return ticker != null ? ticker : z ? Ticker.systemTicker() : NULL_TICKER;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @CheckReturnValue
    public <K1 extends K, V1 extends V> CacheBuilder<K1, V1> removalListener(RemovalListener<? super K1, ? super V1> removalListener) {
        Preconditions.checkState(this.removalListener == null);
        this.removalListener = (RemovalListener) Preconditions.checkNotNull(removalListener);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <K1 extends K, V1 extends V> RemovalListener<K1, V1> getRemovalListener() {
        return (RemovalListener) MoreObjects.firstNonNull(this.removalListener, NullListener.INSTANCE);
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> LoadingCache<K1, V1> build(CacheLoader<? super K1, V1> cacheLoader) {
        checkWeightWithWeigher();
        return new LocalCache.LocalLoadingCache(this, cacheLoader);
    }

    @CheckReturnValue
    public <K1 extends K, V1 extends V> Cache<K1, V1> build() {
        checkWeightWithWeigher();
        checkNonLoadingCache();
        return new LocalCache.LocalManualCache(this);
    }

    private void checkNonLoadingCache() {
        Preconditions.checkState(this.refreshNanos == -1, "refreshAfterWrite requires a LoadingCache");
    }

    private void checkWeightWithWeigher() {
        if (this.weigher == null) {
            Preconditions.checkState(this.maximumWeight == -1, "maximumWeight requires weigher");
        } else if (this.strictParsing) {
            Preconditions.checkState(this.maximumWeight != -1, "weigher requires maximumWeight");
        } else if (this.maximumWeight == -1) {
            logger.log(Level.WARNING, "ignoring weigher specified without maximumWeight");
        }
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
        long j = this.maximumSize;
        if (j != -1) {
            stringHelper.add("maximumSize", j);
        }
        long j2 = this.maximumWeight;
        if (j2 != -1) {
            stringHelper.add("maximumWeight", j2);
        }
        long j3 = this.expireAfterWriteNanos;
        if (j3 != -1) {
            stringHelper.add("expireAfterWrite", new StringBuilder(22).append(j3).append("ns").toString());
        }
        long j4 = this.expireAfterAccessNanos;
        if (j4 != -1) {
            stringHelper.add("expireAfterAccess", new StringBuilder(22).append(j4).append("ns").toString());
        }
        LocalCache.Strength strength = this.keyStrength;
        if (strength != null) {
            stringHelper.add("keyStrength", Ascii.toLowerCase(strength.toString()));
        }
        LocalCache.Strength strength2 = this.valueStrength;
        if (strength2 != null) {
            stringHelper.add("valueStrength", Ascii.toLowerCase(strength2.toString()));
        }
        if (this.keyEquivalence != null) {
            stringHelper.addValue("keyEquivalence");
        }
        if (this.valueEquivalence != null) {
            stringHelper.addValue("valueEquivalence");
        }
        if (this.removalListener != null) {
            stringHelper.addValue("removalListener");
        }
        return stringHelper.toString();
    }
}
