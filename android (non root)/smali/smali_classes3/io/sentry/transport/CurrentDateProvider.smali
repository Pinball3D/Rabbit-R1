.class public final Lio/sentry/transport/CurrentDateProvider;
.super Ljava/lang/Object;
.source "CurrentDateProvider.java"

# interfaces
.implements Lio/sentry/transport/ICurrentDateProvider;


# static fields
.field private static final instance:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lio/sentry/transport/CurrentDateProvider;

    invoke-direct {v0}, Lio/sentry/transport/CurrentDateProvider;-><init>()V

    sput-object v0, Lio/sentry/transport/CurrentDateProvider;->instance:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/transport/ICurrentDateProvider;
    .locals 1

    sget-object v0, Lio/sentry/transport/CurrentDateProvider;->instance:Lio/sentry/transport/ICurrentDateProvider;

    return-object v0
.end method


# virtual methods
.method public final getCurrentTimeMillis()J
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
