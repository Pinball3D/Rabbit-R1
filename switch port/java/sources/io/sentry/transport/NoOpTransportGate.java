package io.sentry.transport;

/* loaded from: classes3.dex */
public final class NoOpTransportGate implements ITransportGate {
    private static final NoOpTransportGate instance = new NoOpTransportGate();

    public static NoOpTransportGate getInstance() {
        return instance;
    }

    @Override // io.sentry.transport.ITransportGate
    public boolean isConnected() {
        return true;
    }

    private NoOpTransportGate() {
    }
}
