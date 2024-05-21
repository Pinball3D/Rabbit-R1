.class public abstract Lio/sentry/transport/TransportResult;
.super Ljava/lang/Object;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/transport/TransportResult$SuccessTransportResult;,
        Lio/sentry/transport/TransportResult$ErrorTransportResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/transport/TransportResult$1;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lio/sentry/transport/TransportResult;-><init>()V

    return-void
.end method

.method public static error()Lio/sentry/transport/TransportResult;
    .locals 1

    const/4 v0, -0x1

    .line 38
    invoke-static {v0}, Lio/sentry/transport/TransportResult;->error(I)Lio/sentry/transport/TransportResult;

    move-result-object v0

    return-object v0
.end method

.method public static error(I)Lio/sentry/transport/TransportResult;
    .locals 1

    .line 28
    new-instance v0, Lio/sentry/transport/TransportResult$ErrorTransportResult;

    invoke-direct {v0, p0}, Lio/sentry/transport/TransportResult$ErrorTransportResult;-><init>(I)V

    return-object v0
.end method

.method public static success()Lio/sentry/transport/TransportResult;
    .locals 1

    .line 18
    sget-object v0, Lio/sentry/transport/TransportResult$SuccessTransportResult;->INSTANCE:Lio/sentry/transport/TransportResult$SuccessTransportResult;

    return-object v0
.end method


# virtual methods
.method public abstract getResponseCode()I
.end method

.method public abstract isSuccess()Z
.end method
