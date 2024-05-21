package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.DataSpec;

/* loaded from: classes2.dex */
public interface CacheKeyFactory {
    public static final CacheKeyFactory DEFAULT = new CacheKeyFactory() { // from class: com.google.android.exoplayer2.upstream.cache.CacheKeyFactory$$ExternalSyntheticLambda0
        @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
        public final String buildCacheKey(DataSpec dataSpec) {
            return CacheKeyFactory.lambda$static$0(dataSpec);
        }
    };

    String buildCacheKey(DataSpec dataSpec);

    static /* synthetic */ String lambda$static$0(DataSpec dataSpec) {
        return dataSpec.key != null ? dataSpec.key : dataSpec.uri.toString();
    }
}
