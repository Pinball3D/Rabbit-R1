package io.sentry.android.core;

import io.sentry.IConnectionStatusProvider;
import io.sentry.SentryOptions;
import io.sentry.transport.ITransportGate;

/* loaded from: classes3.dex */
final class AndroidTransportGate implements ITransportGate {
    private final SentryOptions options;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AndroidTransportGate(SentryOptions sentryOptions) {
        this.options = sentryOptions;
    }

    @Override // io.sentry.transport.ITransportGate
    public boolean isConnected() {
        return isConnected(this.options.getConnectionStatusProvider().getConnectionStatus());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.sentry.android.core.AndroidTransportGate$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus;

        static {
            int[] iArr = new int[IConnectionStatusProvider.ConnectionStatus.values().length];
            $SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus = iArr;
            try {
                iArr[IConnectionStatusProvider.ConnectionStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus[IConnectionStatusProvider.ConnectionStatus.UNKNOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus[IConnectionStatusProvider.ConnectionStatus.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    boolean isConnected(IConnectionStatusProvider.ConnectionStatus connectionStatus) {
        int i = AnonymousClass1.$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus[connectionStatus.ordinal()];
        return i == 1 || i == 2 || i == 3;
    }
}
