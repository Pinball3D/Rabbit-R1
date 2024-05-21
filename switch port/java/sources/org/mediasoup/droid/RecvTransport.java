package org.mediasoup.droid;

import org.mediasoup.droid.Consumer;
import org.mediasoup.droid.DataConsumer;
import org.mediasoup.droid.Transport;

/* loaded from: classes3.dex */
public class RecvTransport extends Transport {
    private long mNativeTransport;

    /* loaded from: classes3.dex */
    public interface Listener extends Transport.Listener {
    }

    private static native Consumer nativeConsume(long j, Consumer.Listener listener, String str, String str2, String str3, String str4, String str5);

    private static native DataConsumer nativeConsumeData(long j, DataConsumer.Listener listener, String str, String str2, long j2, String str3, String str4, String str5);

    private static native void nativeFreeTransport(long j);

    private static native long nativeGetNativeTransport(long j);

    public RecvTransport(long j) {
        this.mNativeTransport = j;
    }

    public void dispose() {
        checkTransportExists();
        nativeFreeTransport(this.mNativeTransport);
        this.mNativeTransport = 0L;
    }

    @Override // org.mediasoup.droid.Transport
    public long getNativeTransport() {
        return nativeGetNativeTransport(this.mNativeTransport);
    }

    private void checkTransportExists() {
        if (this.mNativeTransport == 0) {
            throw new IllegalStateException("RecvTransport has been disposed.");
        }
    }

    public Consumer consume(Consumer.Listener listener, String str, String str2, String str3, String str4) throws MediasoupException {
        return consume(listener, str, str2, str3, str4, null);
    }

    public Consumer consume(Consumer.Listener listener, String str, String str2, String str3, String str4, String str5) throws MediasoupException {
        checkTransportExists();
        return nativeConsume(this.mNativeTransport, listener, str, str2, str3, str4, str5);
    }

    public DataConsumer consumeData(DataConsumer.Listener listener, String str, String str2, long j, String str3) {
        return consumeData(listener, str, str2, j, str3, null, null);
    }

    public DataConsumer consumeData(DataConsumer.Listener listener, String str, String str2, long j, String str3, String str4, String str5) {
        checkTransportExists();
        return nativeConsumeData(this.mNativeTransport, listener, str, str2, j, str3, str4, str5);
    }
}
