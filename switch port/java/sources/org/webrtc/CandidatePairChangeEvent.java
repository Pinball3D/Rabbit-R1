package org.webrtc;

/* loaded from: classes3.dex */
public final class CandidatePairChangeEvent {
    public final int estimatedDisconnectedTimeMs;
    public final int lastDataReceivedMs;
    public final IceCandidate local;
    public final String reason;
    public final IceCandidate remote;

    CandidatePairChangeEvent(IceCandidate iceCandidate, IceCandidate iceCandidate2, int i, String str, int i2) {
        this.local = iceCandidate;
        this.remote = iceCandidate2;
        this.lastDataReceivedMs = i;
        this.reason = str;
        this.estimatedDisconnectedTimeMs = i2;
    }
}
