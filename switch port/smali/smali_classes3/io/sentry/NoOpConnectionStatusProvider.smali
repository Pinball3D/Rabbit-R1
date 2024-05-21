.class public final Lio/sentry/NoOpConnectionStatusProvider;
.super Ljava/lang/Object;
.source "NoOpConnectionStatusProvider.java"

# interfaces
.implements Lio/sentry/IConnectionStatusProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .locals 0

    .line 11
    sget-object p0, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->UNKNOWN:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    return-object p0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
    .locals 0

    return-void
.end method
