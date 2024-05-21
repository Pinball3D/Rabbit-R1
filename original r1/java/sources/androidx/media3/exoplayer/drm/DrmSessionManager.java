package androidx.media3.exoplayer.drm;

import android.os.Looper;
import androidx.media3.common.Format;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManager;

/* loaded from: classes2.dex */
public interface DrmSessionManager {
    public static final DrmSessionManager DRM_UNSUPPORTED;

    @Deprecated
    public static final DrmSessionManager DUMMY;

    /* loaded from: classes2.dex */
    public interface DrmSessionReference {
        public static final DrmSessionReference EMPTY = new DrmSessionReference() { // from class: androidx.media3.exoplayer.drm.DrmSessionManager$DrmSessionReference$$ExternalSyntheticLambda0
            @Override // androidx.media3.exoplayer.drm.DrmSessionManager.DrmSessionReference
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
        DrmSessionManager drmSessionManager = new DrmSessionManager() { // from class: androidx.media3.exoplayer.drm.DrmSessionManager.1
            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public void setPlayer(Looper looper, PlayerId playerId) {
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
            public DrmSession acquireSession(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
                if (format.drmInitData == null) {
                    return null;
                }
                return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new UnsupportedDrmException(1), 6001));
            }

            @Override // androidx.media3.exoplayer.drm.DrmSessionManager
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
