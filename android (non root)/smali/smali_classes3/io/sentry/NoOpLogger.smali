.class public final Lio/sentry/NoOpLogger;
.super Ljava/lang/Object;
.source "NoOpLogger.java"

# interfaces
.implements Lio/sentry/ILogger;


# static fields
.field private static final instance:Lio/sentry/NoOpLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lio/sentry/NoOpLogger;

    invoke-direct {v0}, Lio/sentry/NoOpLogger;-><init>()V

    sput-object v0, Lio/sentry/NoOpLogger;->instance:Lio/sentry/NoOpLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpLogger;
    .locals 1

    sget-object v0, Lio/sentry/NoOpLogger;->instance:Lio/sentry/NoOpLogger;

    return-object v0
.end method


# virtual methods
.method public isEnabled(Lio/sentry/SentryLevel;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public varargs log(Lio/sentry/SentryLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method
