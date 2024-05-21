package io.sentry.android.core;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import io.sentry.Breadcrumb;
import io.sentry.DateUtils;
import io.sentry.Hint;
import io.sentry.IHub;
import io.sentry.ILogger;
import io.sentry.Integration;
import io.sentry.SentryDateProvider;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.TypeCheckHint;
import io.sentry.android.core.internal.util.AndroidConnectionStatusProvider;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class NetworkBreadcrumbsIntegration implements Integration, Closeable {
    private final BuildInfoProvider buildInfoProvider;
    private final Context context;
    private final ILogger logger;
    NetworkBreadcrumbsNetworkCallback networkCallback;

    public NetworkBreadcrumbsIntegration(Context context, BuildInfoProvider buildInfoProvider, ILogger iLogger) {
        this.context = (Context) Objects.requireNonNull(context, "Context is required");
        this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
        this.logger = (ILogger) Objects.requireNonNull(iLogger, "ILogger is required");
    }

    @Override // io.sentry.Integration
    public void register(IHub iHub, SentryOptions sentryOptions) {
        Objects.requireNonNull(iHub, "Hub is required");
        SentryAndroidOptions sentryAndroidOptions = (SentryAndroidOptions) Objects.requireNonNull(sentryOptions instanceof SentryAndroidOptions ? (SentryAndroidOptions) sentryOptions : null, "SentryAndroidOptions is required");
        this.logger.log(SentryLevel.DEBUG, "NetworkBreadcrumbsIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isEnableNetworkEventBreadcrumbs()));
        if (sentryAndroidOptions.isEnableNetworkEventBreadcrumbs()) {
            if (this.buildInfoProvider.getSdkInfoVersion() < 21) {
                this.networkCallback = null;
                this.logger.log(SentryLevel.DEBUG, "NetworkBreadcrumbsIntegration requires Android 5+", new Object[0]);
                return;
            }
            NetworkBreadcrumbsNetworkCallback networkBreadcrumbsNetworkCallback = new NetworkBreadcrumbsNetworkCallback(iHub, this.buildInfoProvider, sentryOptions.getDateProvider());
            this.networkCallback = networkBreadcrumbsNetworkCallback;
            if (!AndroidConnectionStatusProvider.registerNetworkCallback(this.context, this.logger, this.buildInfoProvider, networkBreadcrumbsNetworkCallback)) {
                this.networkCallback = null;
                this.logger.log(SentryLevel.DEBUG, "NetworkBreadcrumbsIntegration not installed.", new Object[0]);
            } else {
                this.logger.log(SentryLevel.DEBUG, "NetworkBreadcrumbsIntegration installed.", new Object[0]);
                IntegrationUtils.addIntegrationToSdkVersion(getClass());
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        NetworkBreadcrumbsNetworkCallback networkBreadcrumbsNetworkCallback = this.networkCallback;
        if (networkBreadcrumbsNetworkCallback != null) {
            AndroidConnectionStatusProvider.unregisterNetworkCallback(this.context, this.logger, this.buildInfoProvider, networkBreadcrumbsNetworkCallback);
            this.logger.log(SentryLevel.DEBUG, "NetworkBreadcrumbsIntegration remove.", new Object[0]);
        }
        this.networkCallback = null;
    }

    /* loaded from: classes3.dex */
    static final class NetworkBreadcrumbsNetworkCallback extends ConnectivityManager.NetworkCallback {
        final BuildInfoProvider buildInfoProvider;
        final SentryDateProvider dateProvider;
        final IHub hub;
        Network currentNetwork = null;
        NetworkCapabilities lastCapabilities = null;
        long lastCapabilityNanos = 0;

        NetworkBreadcrumbsNetworkCallback(IHub iHub, BuildInfoProvider buildInfoProvider, SentryDateProvider sentryDateProvider) {
            this.hub = (IHub) Objects.requireNonNull(iHub, "Hub is required");
            this.buildInfoProvider = (BuildInfoProvider) Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
            this.dateProvider = (SentryDateProvider) Objects.requireNonNull(sentryDateProvider, "SentryDateProvider is required");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (network.equals(this.currentNetwork)) {
                return;
            }
            this.hub.addBreadcrumb(createBreadcrumb("NETWORK_AVAILABLE"));
            this.currentNetwork = network;
            this.lastCapabilities = null;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            if (network.equals(this.currentNetwork)) {
                long nanoTimestamp = this.dateProvider.now().nanoTimestamp();
                NetworkBreadcrumbConnectionDetail newConnectionDetails = getNewConnectionDetails(this.lastCapabilities, networkCapabilities, this.lastCapabilityNanos, nanoTimestamp);
                if (newConnectionDetails == null) {
                    return;
                }
                this.lastCapabilities = networkCapabilities;
                this.lastCapabilityNanos = nanoTimestamp;
                Breadcrumb createBreadcrumb = createBreadcrumb("NETWORK_CAPABILITIES_CHANGED");
                createBreadcrumb.setData("download_bandwidth", Integer.valueOf(newConnectionDetails.downBandwidth));
                createBreadcrumb.setData("upload_bandwidth", Integer.valueOf(newConnectionDetails.upBandwidth));
                createBreadcrumb.setData("vpn_active", Boolean.valueOf(newConnectionDetails.isVpn));
                createBreadcrumb.setData("network_type", newConnectionDetails.type);
                if (newConnectionDetails.signalStrength != 0) {
                    createBreadcrumb.setData("signal_strength", Integer.valueOf(newConnectionDetails.signalStrength));
                }
                Hint hint = new Hint();
                hint.set(TypeCheckHint.ANDROID_NETWORK_CAPABILITIES, newConnectionDetails);
                this.hub.addBreadcrumb(createBreadcrumb, hint);
            }
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            if (network.equals(this.currentNetwork)) {
                this.hub.addBreadcrumb(createBreadcrumb("NETWORK_LOST"));
                this.currentNetwork = null;
                this.lastCapabilities = null;
            }
        }

        private Breadcrumb createBreadcrumb(String str) {
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.setType("system");
            breadcrumb.setCategory("network.event");
            breadcrumb.setData("action", str);
            breadcrumb.setLevel(SentryLevel.INFO);
            return breadcrumb;
        }

        private NetworkBreadcrumbConnectionDetail getNewConnectionDetails(NetworkCapabilities networkCapabilities, NetworkCapabilities networkCapabilities2, long j, long j2) {
            if (networkCapabilities == null) {
                return new NetworkBreadcrumbConnectionDetail(networkCapabilities2, this.buildInfoProvider, j2);
            }
            NetworkBreadcrumbConnectionDetail networkBreadcrumbConnectionDetail = new NetworkBreadcrumbConnectionDetail(networkCapabilities, this.buildInfoProvider, j);
            NetworkBreadcrumbConnectionDetail networkBreadcrumbConnectionDetail2 = new NetworkBreadcrumbConnectionDetail(networkCapabilities2, this.buildInfoProvider, j2);
            if (networkBreadcrumbConnectionDetail.isSimilar(networkBreadcrumbConnectionDetail2)) {
                return null;
            }
            return networkBreadcrumbConnectionDetail2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class NetworkBreadcrumbConnectionDetail {
        final int downBandwidth;
        final boolean isVpn;
        final int signalStrength;
        private long timestampNanos;
        final String type;
        final int upBandwidth;

        NetworkBreadcrumbConnectionDetail(NetworkCapabilities networkCapabilities, BuildInfoProvider buildInfoProvider, long j) {
            Objects.requireNonNull(networkCapabilities, "NetworkCapabilities is required");
            Objects.requireNonNull(buildInfoProvider, "BuildInfoProvider is required");
            this.downBandwidth = networkCapabilities.getLinkDownstreamBandwidthKbps();
            this.upBandwidth = networkCapabilities.getLinkUpstreamBandwidthKbps();
            int signalStrength = buildInfoProvider.getSdkInfoVersion() >= 29 ? networkCapabilities.getSignalStrength() : 0;
            this.signalStrength = signalStrength > -100 ? signalStrength : 0;
            this.isVpn = networkCapabilities.hasTransport(4);
            String connectionType = AndroidConnectionStatusProvider.getConnectionType(networkCapabilities, buildInfoProvider);
            this.type = connectionType == null ? "" : connectionType;
            this.timestampNanos = j;
        }

        boolean isSimilar(NetworkBreadcrumbConnectionDetail networkBreadcrumbConnectionDetail) {
            int abs = Math.abs(this.signalStrength - networkBreadcrumbConnectionDetail.signalStrength);
            int abs2 = Math.abs(this.downBandwidth - networkBreadcrumbConnectionDetail.downBandwidth);
            int abs3 = Math.abs(this.upBandwidth - networkBreadcrumbConnectionDetail.upBandwidth);
            boolean z = DateUtils.nanosToMillis((double) Math.abs(this.timestampNanos - networkBreadcrumbConnectionDetail.timestampNanos)) < 5000.0d;
            return this.isVpn == networkBreadcrumbConnectionDetail.isVpn && this.type.equals(networkBreadcrumbConnectionDetail.type) && (z || abs <= 5) && (z || (((double) abs2) > Math.max(1000.0d, ((double) Math.abs(this.downBandwidth)) * 0.1d) ? 1 : (((double) abs2) == Math.max(1000.0d, ((double) Math.abs(this.downBandwidth)) * 0.1d) ? 0 : -1)) <= 0) && (z || (((double) abs3) > Math.max(1000.0d, ((double) Math.abs(this.upBandwidth)) * 0.1d) ? 1 : (((double) abs3) == Math.max(1000.0d, ((double) Math.abs(this.upBandwidth)) * 0.1d) ? 0 : -1)) <= 0);
        }
    }
}
