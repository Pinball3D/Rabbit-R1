.class final Lio/sentry/android/core/AndroidTransportGate;
.super Ljava/lang/Object;
.source "AndroidTransportGate.java"

# interfaces
.implements Lio/sentry/transport/ITransportGate;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/core/AndroidTransportGate;->options:Lio/sentry/SentryOptions;

    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/AndroidTransportGate;->options:Lio/sentry/SentryOptions;

    .line 19
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/AndroidTransportGate;->isConnected(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)Z

    move-result p0

    return p0
.end method

.method isConnected(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)Z
    .locals 1

    .line 26
    sget-object p0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    invoke-virtual {p1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method
