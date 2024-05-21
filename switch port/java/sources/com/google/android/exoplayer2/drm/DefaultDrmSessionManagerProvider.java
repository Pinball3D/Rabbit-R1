package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.MediaItem;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DefaultHttpDataSource;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
import com.google.common.collect.UnmodifiableIterator;
import com.google.common.primitives.Ints;
import java.util.Map;

/* loaded from: classes2.dex */
public final class DefaultDrmSessionManagerProvider implements DrmSessionManagerProvider {
    private MediaItem.DrmConfiguration drmConfiguration;
    private DataSource.Factory drmHttpDataSourceFactory;
    private final Object lock = new Object();
    private DrmSessionManager manager;
    private String userAgent;

    public void setDrmHttpDataSourceFactory(DataSource.Factory factory) {
        this.drmHttpDataSourceFactory = factory;
    }

    @Deprecated
    public void setDrmUserAgent(String str) {
        this.userAgent = str;
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
    public DrmSessionManager get(MediaItem mediaItem) {
        DrmSessionManager drmSessionManager;
        Assertions.checkNotNull(mediaItem.localConfiguration);
        MediaItem.DrmConfiguration drmConfiguration = mediaItem.localConfiguration.drmConfiguration;
        if (drmConfiguration == null || Util.SDK_INT < 18) {
            return DrmSessionManager.DRM_UNSUPPORTED;
        }
        synchronized (this.lock) {
            if (!Util.areEqual(drmConfiguration, this.drmConfiguration)) {
                this.drmConfiguration = drmConfiguration;
                this.manager = createManager(drmConfiguration);
            }
            drmSessionManager = (DrmSessionManager) Assertions.checkNotNull(this.manager);
        }
        return drmSessionManager;
    }

    private DrmSessionManager createManager(MediaItem.DrmConfiguration drmConfiguration) {
        DataSource.Factory factory = this.drmHttpDataSourceFactory;
        if (factory == null) {
            factory = new DefaultHttpDataSource.Factory().setUserAgent(this.userAgent);
        }
        HttpMediaDrmCallback httpMediaDrmCallback = new HttpMediaDrmCallback(drmConfiguration.licenseUri == null ? null : drmConfiguration.licenseUri.toString(), drmConfiguration.forceDefaultLicenseUri, factory);
        UnmodifiableIterator<Map.Entry<String, String>> it = drmConfiguration.licenseRequestHeaders.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, String> next = it.next();
            httpMediaDrmCallback.setKeyRequestProperty(next.getKey(), next.getValue());
        }
        DefaultDrmSessionManager build = new DefaultDrmSessionManager.Builder().setUuidAndExoMediaDrmProvider(drmConfiguration.scheme, FrameworkMediaDrm.DEFAULT_PROVIDER).setMultiSession(drmConfiguration.multiSession).setPlayClearSamplesWithoutKeys(drmConfiguration.playClearContentWithoutKey).setUseDrmSessionsForClearContent(Ints.toArray(drmConfiguration.forcedSessionTrackTypes)).build(httpMediaDrmCallback);
        build.setMode(0, drmConfiguration.getKeySetId());
        return build;
    }
}
