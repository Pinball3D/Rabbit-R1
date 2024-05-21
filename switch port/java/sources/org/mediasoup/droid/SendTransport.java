package org.mediasoup.droid;

import java.util.List;
import org.mediasoup.droid.DataProducer;
import org.mediasoup.droid.Producer;
import org.mediasoup.droid.Transport;
import org.webrtc.MediaStreamTrack;
import org.webrtc.RTCUtils;
import org.webrtc.RtpParameters;

/* loaded from: classes3.dex */
public class SendTransport extends Transport {
    private long mNativeTransport;

    /* loaded from: classes3.dex */
    public interface Listener extends Transport.Listener {
        String onProduce(Transport transport, String str, String str2, String str3);

        String onProduceData(Transport transport, String str, String str2, String str3, String str4);
    }

    private static native void nativeFreeTransport(long j);

    private static native long nativeGetNativeTransport(long j);

    private static native Producer nativeProduce(long j, Producer.Listener listener, long j2, RtpParameters.Encoding[] encodingArr, String str, String str2, String str3);

    private static native DataProducer nativeProduceData(long j, DataProducer.Listener listener, String str, String str2, boolean z, int i, int i2, String str3);

    public SendTransport(long j) {
        this.mNativeTransport = j;
    }

    public void dispose() {
        checkTransportExists();
        nativeFreeTransport(this.mNativeTransport);
        this.mNativeTransport = 0L;
    }

    private void checkTransportExists() {
        if (this.mNativeTransport == 0) {
            throw new IllegalStateException("SendTransport has been disposed.");
        }
    }

    @Override // org.mediasoup.droid.Transport
    public long getNativeTransport() {
        return nativeGetNativeTransport(this.mNativeTransport);
    }

    public Producer produce(Producer.Listener listener, MediaStreamTrack mediaStreamTrack, List<RtpParameters.Encoding> list, String str, String str2) throws MediasoupException {
        return produce(listener, mediaStreamTrack, list, str, str2, null);
    }

    public Producer produce(Producer.Listener listener, MediaStreamTrack mediaStreamTrack, List<RtpParameters.Encoding> list, String str, String str2, String str3) throws MediasoupException {
        RtpParameters.Encoding[] encodingArr;
        checkTransportExists();
        long nativeMediaStreamTrack = RTCUtils.getNativeMediaStreamTrack(mediaStreamTrack);
        if (list == null || list.isEmpty()) {
            encodingArr = null;
        } else {
            encodingArr = new RtpParameters.Encoding[list.size()];
            list.toArray(encodingArr);
        }
        return nativeProduce(this.mNativeTransport, listener, nativeMediaStreamTrack, encodingArr, str, str2, str3);
    }

    public DataProducer produceData(DataProducer.Listener listener) {
        return nativeProduceData(this.mNativeTransport, listener, null, null, true, 0, 0, null);
    }

    public DataProducer produceData(DataProducer.Listener listener, String str, String str2, boolean z, int i, int i2, String str3) {
        return nativeProduceData(this.mNativeTransport, listener, str, str2, z, i, i2, str3);
    }
}
