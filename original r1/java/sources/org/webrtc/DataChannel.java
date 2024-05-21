package org.webrtc;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class DataChannel {
    private long nativeDataChannel;
    private long nativeObserver;

    /* loaded from: classes3.dex */
    public static class Init {
        public boolean negotiated;
        public boolean ordered = true;
        public int maxRetransmitTimeMs = -1;
        public int maxRetransmits = -1;
        public String protocol = "";
        public int id = -1;

        int getId() {
            return this.id;
        }

        int getMaxRetransmitTimeMs() {
            return this.maxRetransmitTimeMs;
        }

        int getMaxRetransmits() {
            return this.maxRetransmits;
        }

        boolean getNegotiated() {
            return this.negotiated;
        }

        boolean getOrdered() {
            return this.ordered;
        }

        String getProtocol() {
            return this.protocol;
        }
    }

    /* loaded from: classes3.dex */
    public interface Observer {
        void onBufferedAmountChange(long j);

        void onMessage(Buffer buffer);

        void onStateChange();
    }

    private native long nativeBufferedAmount();

    private native void nativeClose();

    private native int nativeId();

    private native String nativeLabel();

    private native long nativeRegisterObserver(Observer observer);

    private native boolean nativeSend(byte[] bArr, boolean z);

    private native State nativeState();

    private native void nativeUnregisterObserver(long j);

    long getNativeDataChannel() {
        return this.nativeDataChannel;
    }

    /* loaded from: classes3.dex */
    public static class Buffer {
        public final boolean binary;
        public final ByteBuffer data;

        public Buffer(ByteBuffer byteBuffer, boolean z) {
            this.data = byteBuffer;
            this.binary = z;
        }
    }

    /* loaded from: classes3.dex */
    public enum State {
        CONNECTING,
        OPEN,
        CLOSING,
        CLOSED;

        static State fromNativeIndex(int i) {
            return values()[i];
        }
    }

    public DataChannel(long j) {
        this.nativeDataChannel = j;
    }

    public void registerObserver(Observer observer) {
        checkDataChannelExists();
        long j = this.nativeObserver;
        if (j != 0) {
            nativeUnregisterObserver(j);
        }
        this.nativeObserver = nativeRegisterObserver(observer);
    }

    public void unregisterObserver() {
        checkDataChannelExists();
        nativeUnregisterObserver(this.nativeObserver);
        this.nativeObserver = 0L;
    }

    public String label() {
        checkDataChannelExists();
        return nativeLabel();
    }

    public int id() {
        checkDataChannelExists();
        return nativeId();
    }

    public State state() {
        checkDataChannelExists();
        return nativeState();
    }

    public long bufferedAmount() {
        checkDataChannelExists();
        return nativeBufferedAmount();
    }

    public void close() {
        checkDataChannelExists();
        nativeClose();
    }

    public boolean send(Buffer buffer) {
        checkDataChannelExists();
        byte[] bArr = new byte[buffer.data.remaining()];
        buffer.data.get(bArr);
        return nativeSend(bArr, buffer.binary);
    }

    public void dispose() {
        checkDataChannelExists();
        JniCommon.nativeReleaseRef(this.nativeDataChannel);
        this.nativeDataChannel = 0L;
    }

    private void checkDataChannelExists() {
        if (this.nativeDataChannel == 0) {
            throw new IllegalStateException("DataChannel has been disposed.");
        }
    }
}
