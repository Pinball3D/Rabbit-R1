package org.webrtc;

/* loaded from: classes3.dex */
public enum VideoCodecStatus {
    REQUEST_SLI(2),
    NO_OUTPUT(1),
    OK(0),
    ERROR(-1),
    LEVEL_EXCEEDED(-2),
    MEMORY(-3),
    ERR_PARAMETER(-4),
    ERR_SIZE(-5),
    TIMEOUT(-6),
    UNINITIALIZED(-7),
    ERR_REQUEST_SLI(-12),
    FALLBACK_SOFTWARE(-13),
    TARGET_BITRATE_OVERSHOOT(-14);

    private final int number;

    public int getNumber() {
        return this.number;
    }

    VideoCodecStatus(int i) {
        this.number = i;
    }
}
