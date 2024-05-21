.class public final Lio/sentry/android/core/AppState;
.super Ljava/lang/Object;
.source "AppState.java"


# static fields
.field private static instance:Lio/sentry/android/core/AppState;


# instance fields
.field private inBackground:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lio/sentry/android/core/AppState;

    invoke-direct {v0}, Lio/sentry/android/core/AppState;-><init>()V

    sput-object v0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/AppState;
    .locals 1

    sget-object v0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-object v0
.end method


# virtual methods
.method public isInBackground()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;

    return-object p0
.end method

.method resetInstance()V
    .locals 0

    .line 23
    new-instance p0, Lio/sentry/android/core/AppState;

    invoke-direct {p0}, Lio/sentry/android/core/AppState;-><init>()V

    sput-object p0, Lio/sentry/android/core/AppState;->instance:Lio/sentry/android/core/AppState;

    return-void
.end method

.method declared-synchronized setInBackground(Z)V
    .locals 0

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lio/sentry/android/core/AppState;->inBackground:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
