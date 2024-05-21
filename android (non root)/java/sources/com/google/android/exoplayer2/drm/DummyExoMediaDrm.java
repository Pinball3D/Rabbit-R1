package com.google.android.exoplayer2.drm;

import android.media.MediaDrmException;
import android.os.PersistableBundle;
import com.google.android.exoplayer2.decoder.CryptoConfig;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.ExoMediaDrm;
import com.google.android.exoplayer2.util.Util;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class DummyExoMediaDrm implements ExoMediaDrm {
    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void acquire() {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void closeSession(byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public int getCryptoType() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public PersistableBundle getMetrics() {
        return null;
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public String getPropertyString(String str) {
        return "";
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void release() {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnEventListener(ExoMediaDrm.OnEventListener onEventListener) {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnExpirationUpdateListener(ExoMediaDrm.OnExpirationUpdateListener onExpirationUpdateListener) {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setOnKeyStatusChangeListener(ExoMediaDrm.OnKeyStatusChangeListener onKeyStatusChangeListener) {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setPropertyByteArray(String str, byte[] bArr) {
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void setPropertyString(String str, String str2) {
    }

    public static DummyExoMediaDrm getInstance() {
        return new DummyExoMediaDrm();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] openSession() throws MediaDrmException {
        throw new MediaDrmException("Attempting to open a session using a dummy ExoMediaDrm.");
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public ExoMediaDrm.KeyRequest getKeyRequest(byte[] bArr, List<DrmInitData.SchemeData> list, int i, HashMap<String, String> hashMap) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] provideKeyResponse(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public ExoMediaDrm.ProvisionRequest getProvisionRequest() {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void provideProvisionResponse(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public Map<String, String> queryKeyStatus(byte[] bArr) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public boolean requiresSecureDecoder(byte[] bArr, String str) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public void restoreKeys(byte[] bArr, byte[] bArr2) {
        throw new IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public byte[] getPropertyByteArray(String str) {
        return Util.EMPTY_BYTE_ARRAY;
    }

    @Override // com.google.android.exoplayer2.drm.ExoMediaDrm
    public CryptoConfig createCryptoConfig(byte[] bArr) {
        throw new IllegalStateException();
    }
}
