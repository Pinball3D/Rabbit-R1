package org.webrtc.audio;

/* loaded from: classes3.dex */
public interface AudioDeviceModule {
    long getNativeAudioDeviceModulePointer();

    void release();

    void setMicrophoneMute(boolean z);

    void setSpeakerMute(boolean z);
}
