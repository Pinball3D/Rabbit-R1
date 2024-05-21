package org.webrtc;

/* loaded from: classes3.dex */
public class MediaStreamTrack {
    public static final String AUDIO_TRACK_KIND = "audio";
    public static final String VIDEO_TRACK_KIND = "video";
    private long nativeTrack;

    private static native boolean nativeGetEnabled(long j);

    private static native String nativeGetId(long j);

    private static native String nativeGetKind(long j);

    private static native State nativeGetState(long j);

    private static native boolean nativeSetEnabled(long j, boolean z);

    /* loaded from: classes3.dex */
    public enum State {
        LIVE,
        ENDED;

        static State fromNativeIndex(int i) {
            return values()[i];
        }
    }

    /* loaded from: classes3.dex */
    public enum MediaType {
        MEDIA_TYPE_AUDIO(0),
        MEDIA_TYPE_VIDEO(1);

        private final int nativeIndex;

        int getNative() {
            return this.nativeIndex;
        }

        MediaType(int i) {
            this.nativeIndex = i;
        }

        static MediaType fromNativeIndex(int i) {
            for (MediaType mediaType : values()) {
                if (mediaType.getNative() == i) {
                    return mediaType;
                }
            }
            throw new IllegalArgumentException("Unknown native media type: " + i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MediaStreamTrack createMediaStreamTrack(long j) {
        if (j == 0) {
            return null;
        }
        String nativeGetKind = nativeGetKind(j);
        if (nativeGetKind.equals("audio")) {
            return new AudioTrack(j);
        }
        if (nativeGetKind.equals("video")) {
            return new VideoTrack(j);
        }
        return null;
    }

    public MediaStreamTrack(long j) {
        if (j == 0) {
            throw new IllegalArgumentException("nativeTrack may not be null");
        }
        this.nativeTrack = j;
    }

    public String id() {
        checkMediaStreamTrackExists();
        return nativeGetId(this.nativeTrack);
    }

    public String kind() {
        checkMediaStreamTrackExists();
        return nativeGetKind(this.nativeTrack);
    }

    public boolean enabled() {
        checkMediaStreamTrackExists();
        return nativeGetEnabled(this.nativeTrack);
    }

    public boolean setEnabled(boolean z) {
        checkMediaStreamTrackExists();
        return nativeSetEnabled(this.nativeTrack, z);
    }

    public State state() {
        checkMediaStreamTrackExists();
        return nativeGetState(this.nativeTrack);
    }

    public void dispose() {
        checkMediaStreamTrackExists();
        JniCommon.nativeReleaseRef(this.nativeTrack);
        this.nativeTrack = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNativeMediaStreamTrack() {
        checkMediaStreamTrackExists();
        return this.nativeTrack;
    }

    private void checkMediaStreamTrackExists() {
        if (this.nativeTrack == 0) {
            throw new IllegalStateException("MediaStreamTrack has been disposed.");
        }
    }
}
