package com.google.android.exoplayer2.drm;

import android.os.Looper;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.analytics.PlayerId;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.DrmSessionEventListener;
import com.google.android.exoplayer2.drm.DrmSessionManager;

/* loaded from: classes2.dex */
public interface DrmSessionManager {
    public static final DrmSessionManager DRM_UNSUPPORTED;

    @Deprecated
    public static final DrmSessionManager DUMMY;

    /* loaded from: classes2.dex */
    public interface DrmSessionReference {
        public static final DrmSessionReference EMPTY = new DrmSessionReference() { // from class: com.google.android.exoplayer2.drm.DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager.DrmSessionReference
            public final void release() {
                DrmSessionManager.DrmSessionReference.lambda$static$0();
            }
        };

        static /* synthetic */ void lambda$static$0() {
        }

        void release();
    }

    @Deprecated
    static DrmSessionManager getDummyDrmSessionManager() {
        return DRM_UNSUPPORTED;
    }

    DrmSession acquireSession(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    int getCryptoType(Format format);

    default void prepare() {
    }

    default void release() {
    }

    void setPlayer(Looper looper, PlayerId playerId);

    static {
        DrmSessionManager drmSessionManager = new DrmSessionManager() { // from class: com.google.android.exoplayer2.drm.DrmSessionManager.1
            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public void setPlayer(Looper looper, PlayerId playerId) {
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public DrmSession acquireSession(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
            }

            @Override // com.google.android.exoplayer2.drm.DrmSessionManager
            public int getCryptoType(Format format) {
                return format.drmInitData != null ? 1 : 0;
            }
        };
        DRM_UNSUPPORTED = drmSessionManager;
        DUMMY = drmSessionManager;
    }

    default DrmSessionReference preacquireSession(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
        return DrmSessionReference.EMPTY;
    }
}
