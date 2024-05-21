package org.mediasoup.droid;

import org.webrtc.DataChannel;

/* loaded from: classes3.dex */
public class DataProducer {
    private final long mNativeProducer;

    /* loaded from: classes3.dex */
    public interface Listener {
        void onBufferedAmountChange(DataProducer dataProducer, long j);

        void onClose(DataProducer dataProducer);

        void onOpen(DataProducer dataProducer);

        void onTransportClose(DataProducer dataProducer);
    }

    private static native void nativeClose(long j);

    private static native String nativeGetAppData(long j);

    private static native long nativeGetBufferedAmount(long j);

    private static native String nativeGetId(long j);

    private static native String nativeGetLabel(long j);

    private static native String nativeGetLocalId(long j);

    private static native String nativeGetProtocol(long j);

    private static native int nativeGetReadyState(long j);

    private static native String nativeGetSctpStreamParameters(long j);

    private static native boolean nativeIsClosed(long j);

    private static native void nativeSend(long j, byte[] bArr, boolean z);

    public DataProducer(long j) {
        this.mNativeProducer = j;
    }

    public String getId() {
        return nativeGetId(this.mNativeProducer);
    }

    public String getLocalId() {
        return nativeGetLocalId(this.mNativeProducer);
    }

    public String getSctpStreamParameters() {
        return nativeGetSctpStreamParameters(this.mNativeProducer);
    }

    public DataChannel.State getReadyState() {
        return DataChannel.State.values()[nativeGetReadyState(this.mNativeProducer)];
    }

    public String getLabel() {
        return nativeGetLabel(this.mNativeProducer);
    }

    public String getProtocol() {
        return nativeGetProtocol(this.mNativeProducer);
    }

    public long getBufferedAmount() {
        return nativeGetBufferedAmount(this.mNativeProducer);
    }

    public String getAppData() {
        return nativeGetAppData(this.mNativeProducer);
    }

    public boolean isClosed() {
        return nativeIsClosed(this.mNativeProducer);
    }

    public void close() {
        nativeClose(this.mNativeProducer);
    }

    public void send(DataChannel.Buffer buffer) {
        byte[] bArr = new byte[buffer.data.remaining()];
        buffer.data.get(bArr);
        nativeSend(this.mNativeProducer, bArr, buffer.binary);
    }
}
