.class public final Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;
.super Lio/sentry/hints/BlockingFlushHint;
.source "AnrV2Integration.java"

# interfaces
.implements Lio/sentry/hints/Backfillable;
.implements Lio/sentry/hints/AbnormalExit;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AnrV2Integration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AnrV2Hint"
.end annotation


# instance fields
.field private final isBackgroundAnr:Z

.field private final shouldEnrich:Z

.field private final timestamp:J


# direct methods
.method public constructor <init>(JLio/sentry/ILogger;JZZ)V
    .locals 0

    .line 357
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/hints/BlockingFlushHint;-><init>(JLio/sentry/ILogger;)V

    iput-wide p4, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp:J

    iput-boolean p6, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->shouldEnrich:Z

    iput-boolean p7, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->isBackgroundAnr:Z

    return-void
.end method


# virtual methods
.method public ignoreCurrentThread()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFlushable(Lio/sentry/protocol/SentryId;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mechanism()Ljava/lang/String;
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->isBackgroundAnr:Z

    if-eqz p0, :cond_0

    const-string p0, "anr_background"

    goto :goto_0

    :cond_0
    const-string p0, "anr_foreground"

    :goto_0
    return-object p0
.end method

.method public setFlushable(Lio/sentry/protocol/SentryId;)V
    .locals 0

    return-void
.end method

.method public shouldEnrich()Z
    .locals 0

    iget-boolean p0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->shouldEnrich:Z

    return p0
.end method

.method public timestamp()Ljava/lang/Long;
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/AnrV2Integration$AnrV2Hint;->timestamp:J

    .line 370
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
