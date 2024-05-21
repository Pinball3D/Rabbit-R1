package io.sentry;

import io.sentry.IConnectionStatusProvider;

/* loaded from: classes3.dex */
public final class NoOpConnectionStatusProvider implements IConnectionStatusProvider {
    @Override // io.sentry.IConnectionStatusProvider
    public boolean addConnectionStatusObserver(IConnectionStatusProvider.IConnectionStatusObserver iConnectionStatusObserver) {
        return false;
    }

    @Override // io.sentry.IConnectionStatusProvider
    public String getConnectionType() {
        return null;
    }

    @Override // io.sentry.IConnectionStatusProvider
    public void removeConnectionStatusObserver(IConnectionStatusProvider.IConnectionStatusObserver iConnectionStatusObserver) {
    }

    @Override // io.sentry.IConnectionStatusProvider
    public IConnectionStatusProvider.ConnectionStatus getConnectionStatus() {
        return IConnectionStatusProvider.ConnectionStatus.UNKNOWN;
    }
}
