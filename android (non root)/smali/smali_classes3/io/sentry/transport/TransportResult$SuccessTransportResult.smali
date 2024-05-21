.class final Lio/sentry/transport/TransportResult$SuccessTransportResult;
.super Lio/sentry/transport/TransportResult;
.source "TransportResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/transport/TransportResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SuccessTransportResult"
.end annotation


# static fields
.field static final INSTANCE:Lio/sentry/transport/TransportResult$SuccessTransportResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lio/sentry/transport/TransportResult$SuccessTransportResult;

    invoke-direct {v0}, Lio/sentry/transport/TransportResult$SuccessTransportResult;-><init>()V

    sput-object v0, Lio/sentry/transport/TransportResult$SuccessTransportResult;->INSTANCE:Lio/sentry/transport/TransportResult$SuccessTransportResult;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lio/sentry/transport/TransportResult;-><init>(Lio/sentry/transport/TransportResult$1;)V

    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public isSuccess()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
