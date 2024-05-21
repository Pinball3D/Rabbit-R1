.class public final Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;
.super Ljava/lang/Object;
.source "AndroidCurrentDateProvider.java"

# interfaces
.implements Lio/sentry/transport/ICurrentDateProvider;


# static fields
.field private static final instance:Lio/sentry/transport/ICurrentDateProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;

    invoke-direct {v0}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;-><init>()V

    sput-object v0, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->instance:Lio/sentry/transport/ICurrentDateProvider;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/transport/ICurrentDateProvider;
    .locals 1

    sget-object v0, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->instance:Lio/sentry/transport/ICurrentDateProvider;

    return-object v0
.end method


# virtual methods
.method public getCurrentTimeMillis()J
    .locals 2

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
