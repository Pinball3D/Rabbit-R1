.class final Lio/sentry/transport/TransportResult$ErrorTransportResult;
.super Lio/sentry/transport/TransportResult;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/TransportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ErrorTransportResult"
.end annotation


# instance fields
.field private final responseCode:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, v0}, Lio/sentry/transport/TransportResult;-><init>(Lio/sentry/transport/TransportResult$1;)V

    iput p1, p0, Lio/sentry/transport/TransportResult$ErrorTransportResult;->responseCode:I

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 0

    iget p0, p0, Lio/sentry/transport/TransportResult$ErrorTransportResult;->responseCode:I

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
