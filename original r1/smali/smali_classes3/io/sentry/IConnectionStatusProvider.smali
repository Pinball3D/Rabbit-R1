.class public interface abstract Lio/sentry/IConnectionStatusProvider;
.super Ljava/lang/Object;
.source "IConnectionStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;,
        Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    }
.end annotation


# virtual methods
.method public abstract addConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)Z
.end method

.method public abstract getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
.end method

.method public abstract getConnectionType()Ljava/lang/String;
.end method

.method public abstract removeConnectionStatusObserver(Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;)V
.end method
