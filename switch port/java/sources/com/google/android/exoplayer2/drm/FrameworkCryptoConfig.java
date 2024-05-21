package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.util.Util;
import java.util.UUID;

/* loaded from: classes2.dex */
public final class FrameworkCryptoConfig implements CryptoConfig {
    public static final boolean WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC;
    public final boolean forceAllowInsecureDecoderComponents;
    public final byte[] sessionId;
    public final UUID uuid;

    static {
        WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC = "Amazon".equals(Util.MANUFACTURER) && ("AFTM".equals(Util.MODEL) || "AFTB".equals(Util.MODEL));
    }

    public FrameworkCryptoConfig(UUID uuid, byte[] bArr, boolean z) {
        this.uuid = uuid;
        this.sessionId = bArr;
        this.forceAllowInsecureDecoderComponents = z;
    }
}
