package androidx.media3.exoplayer.drm;

import androidx.media3.common.util.Assertions;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class LocalMediaDrmCallback implements MediaDrmCallback {
    private final byte[] keyResponse;

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) {
        return this.keyResponse;
    }

    public LocalMediaDrmCallback(byte[] bArr) {
        this.keyResponse = (byte[]) Assertions.checkNotNull(bArr);
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) {
        throw new UnsupportedOperationException();
    }
}
