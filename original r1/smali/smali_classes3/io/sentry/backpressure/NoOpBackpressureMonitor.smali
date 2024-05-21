.class public final Lio/sentry/backpressure/NoOpBackpressureMonitor;
.super Ljava/lang/Object;
.source "NoOpBackpressureMonitor.java"

# interfaces
.implements Lio/sentry/backpressure/IBackpressureMonitor;


# static fields
.field private static final instance:Lio/sentry/backpressure/NoOpBackpressureMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    new-instance v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;

    invoke-direct {v0}, Lio/sentry/backpressure/NoOpBackpressureMonitor;-><init>()V

    sput-object v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;->instance:Lio/sentry/backpressure/NoOpBackpressureMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/backpressure/NoOpBackpressureMonitor;
    .locals 1

    sget-object v0, Lio/sentry/backpressure/NoOpBackpressureMonitor;->instance:Lio/sentry/backpressure/NoOpBackpressureMonitor;

    return-object v0
.end method


# virtual methods
.method public getDownsampleFactor()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public start()V
    .locals 0

    return-void
.end method
