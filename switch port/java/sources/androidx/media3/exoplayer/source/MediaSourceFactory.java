package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;

@Deprecated
/* loaded from: classes2.dex */
public interface MediaSourceFactory extends MediaSource.Factory {
    public static final MediaSourceFactory UNSUPPORTED = new MediaSourceFactory() { // from class: androidx.media3.exoplayer.source.MediaSourceFactory.1
        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSourceFactory setDrmSessionManagerProvider(DrmSessionManagerProvider drmSessionManagerProvider) {
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSourceFactory setLoadErrorHandlingPolicy(LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            return this;
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public int[] getSupportedTypes() {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.exoplayer.source.MediaSource.Factory
        public MediaSource createMediaSource(MediaItem mediaItem) {
            throw new UnsupportedOperationException();
        }
    };
}
