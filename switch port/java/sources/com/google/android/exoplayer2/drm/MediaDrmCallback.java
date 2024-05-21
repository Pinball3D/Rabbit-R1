package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.drm.ExoMediaDrm;
import java.util.UUID;

/* loaded from: classes2.dex */
public interface MediaDrmCallback {
    byte[] executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) throws MediaDrmCallbackException;

    byte[] executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) throws MediaDrmCallbackException;
}
