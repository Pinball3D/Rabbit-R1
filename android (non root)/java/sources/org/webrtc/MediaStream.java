package org.webrtc;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class MediaStream {
    private static final String TAG = "MediaStream";
    private long nativeStream;
    public final List<AudioTrack> audioTracks = new ArrayList();
    public final List<VideoTrack> videoTracks = new ArrayList();
    public final List<VideoTrack> preservedVideoTracks = new ArrayList();

    private static native boolean nativeAddAudioTrackToNativeStream(long j, long j2);

    private static native boolean nativeAddVideoTrackToNativeStream(long j, long j2);

    private static native String nativeGetId(long j);

    private static native boolean nativeRemoveAudioTrack(long j, long j2);

    private static native boolean nativeRemoveVideoTrack(long j, long j2);

    public MediaStream(long j) {
        this.nativeStream = j;
    }

    public boolean addTrack(AudioTrack audioTrack) {
        checkMediaStreamExists();
        if (!nativeAddAudioTrackToNativeStream(this.nativeStream, audioTrack.getNativeAudioTrack())) {
            return false;
        }
        this.audioTracks.add(audioTrack);
        return true;
    }

    public boolean addTrack(VideoTrack videoTrack) {
        checkMediaStreamExists();
        if (!nativeAddVideoTrackToNativeStream(this.nativeStream, videoTrack.getNativeVideoTrack())) {
            return false;
        }
        this.videoTracks.add(videoTrack);
        return true;
    }

    public boolean addPreservedTrack(VideoTrack videoTrack) {
        checkMediaStreamExists();
        if (!nativeAddVideoTrackToNativeStream(this.nativeStream, videoTrack.getNativeVideoTrack())) {
            return false;
        }
        this.preservedVideoTracks.add(videoTrack);
        return true;
    }

    public boolean removeTrack(AudioTrack audioTrack) {
        checkMediaStreamExists();
        this.audioTracks.remove(audioTrack);
        return nativeRemoveAudioTrack(this.nativeStream, audioTrack.getNativeAudioTrack());
    }

    public boolean removeTrack(VideoTrack videoTrack) {
        checkMediaStreamExists();
        this.videoTracks.remove(videoTrack);
        this.preservedVideoTracks.remove(videoTrack);
        return nativeRemoveVideoTrack(this.nativeStream, videoTrack.getNativeVideoTrack());
    }

    public void dispose() {
        checkMediaStreamExists();
        while (!this.audioTracks.isEmpty()) {
            AudioTrack audioTrack = this.audioTracks.get(0);
            removeTrack(audioTrack);
            audioTrack.dispose();
        }
        while (!this.videoTracks.isEmpty()) {
            VideoTrack videoTrack = this.videoTracks.get(0);
            removeTrack(videoTrack);
            videoTrack.dispose();
        }
        while (!this.preservedVideoTracks.isEmpty()) {
            removeTrack(this.preservedVideoTracks.get(0));
        }
        JniCommon.nativeReleaseRef(this.nativeStream);
        this.nativeStream = 0L;
    }

    public String getId() {
        checkMediaStreamExists();
        return nativeGetId(this.nativeStream);
    }

    public String toString() {
        return "[" + getId() + ":A=" + this.audioTracks.size() + ":V=" + this.videoTracks.size() + "]";
    }

    void addNativeAudioTrack(long j) {
        this.audioTracks.add(new AudioTrack(j));
    }

    void addNativeVideoTrack(long j) {
        this.videoTracks.add(new VideoTrack(j));
    }

    void removeAudioTrack(long j) {
        removeMediaStreamTrack(this.audioTracks, j);
    }

    void removeVideoTrack(long j) {
        removeMediaStreamTrack(this.videoTracks, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNativeMediaStream() {
        checkMediaStreamExists();
        return this.nativeStream;
    }

    private void checkMediaStreamExists() {
        if (this.nativeStream == 0) {
            throw new IllegalStateException("MediaStream has been disposed.");
        }
    }

    private static void removeMediaStreamTrack(List<? extends MediaStreamTrack> list, long j) {
        Iterator<? extends MediaStreamTrack> it = list.iterator();
        while (it.hasNext()) {
            MediaStreamTrack next = it.next();
            if (next.getNativeMediaStreamTrack() == j) {
                next.dispose();
                it.remove();
                return;
            }
        }
        Logging.e(TAG, "Couldn't not find track");
    }
}
