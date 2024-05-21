package androidx.media3.exoplayer.drm;

import androidx.media3.common.C;
import androidx.media3.common.util.Assertions;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class ErrorStateDrmSession implements DrmSession {
    private final DrmSession.DrmSessionException error;

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void acquire(DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public CryptoConfig getCryptoConfig() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public DrmSession.DrmSessionException getError() {
        return this.error;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public byte[] getOfflineLicenseKeySetId() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public int getState() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean playClearSamplesWithoutKeys() {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public Map<String, String> queryKeyStatus() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public void release(DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public boolean requiresSecureDecoder(String str) {
        return false;
    }

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.error = (DrmSession.DrmSessionException) Assertions.checkNotNull(drmSessionException);
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID getSchemeUuid() {
        return C.UUID_NIL;
    }
}
