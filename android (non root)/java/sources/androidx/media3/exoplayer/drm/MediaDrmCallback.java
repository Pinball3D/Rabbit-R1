package androidx.media3.exoplayer.drm;

import androidx.media3.exoplayer.drm.ExoMediaDrm;
import java.util.UUID;

/* loaded from: classes2.dex */
public interface MediaDrmCallback {
    byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException;

    byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws MediaDrmCallbackException;
}
