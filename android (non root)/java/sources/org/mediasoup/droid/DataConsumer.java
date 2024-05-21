package org.mediasoup.droid;

import java.nio.ByteBuffer;
import org.webrtc.DataChannel;

/* loaded from: classes3.dex */
public class DataConsumer {
    private final long mNativeConsumer;

    /* loaded from: classes3.dex */
    public interface Listener {
        void OnClose(DataConsumer dataConsumer);

        void OnClosing(DataConsumer dataConsumer);

        void OnConnecting(DataConsumer dataConsumer);

        void OnMessage(DataConsumer dataConsumer, DataChannel.Buffer buffer);

        void OnOpen(DataConsumer dataConsumer);

        void OnTransportClose(DataConsumer dataConsumer);
    }

    private static native void nativeClose(long j);

    private static native String nativeGetAppData(long j);

    private static native String nativeGetDataProducerId(long j);

    private static native String nativeGetId(long j);

    private static native String nativeGetLabel(long j);

    private static native String nativeGetLocalId(long j);

    private static native String nativeGetProtocol(long j);

    private static native int nativeGetReadyState(long j);

    private static native String nativeGetSctpStreamParameters(long j);

    private static native boolean nativeIsClosed(long j);

    public static DataChannel.Buffer generateBuffer(ByteBuffer byteBuffer, boolean z) {
        return new DataChannel.Buffer(byteBuffer, z);
    }

    public DataConsumer(long j) {
        this.mNativeConsumer = j;
    }

    public String getId() {
        return nativeGetId(this.mNativeConsumer);
    }

    public String getLocalId() {
        return nativeGetLocalId(this.mNativeConsumer);
    }

    public String getDataProducerId() {
        return nativeGetDataProducerId(this.mNativeConsumer);
    }

    public String getSctpStreamParameters() {
        return nativeGetSctpStreamParameters(this.mNativeConsumer);
    }

    public DataChannel.State getReadyState() {
        return DataChannel.State.values()[nativeGetReadyState(this.mNativeConsumer)];
    }

    public String getLabel() {
        return nativeGetLabel(this.mNativeConsumer);
    }

    public String getProtocol() {
        return nativeGetProtocol(this.mNativeConsumer);
    }

    public String getAppData() {
        return nativeGetAppData(this.mNativeConsumer);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.mNativeConsumer);
    }

    public void close() {
        nativeClose(this.mNativeConsumer);
    }
}
