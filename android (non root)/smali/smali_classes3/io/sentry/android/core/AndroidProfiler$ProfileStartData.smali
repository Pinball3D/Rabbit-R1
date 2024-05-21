.class public Lio/sentry/android/core/AndroidProfiler$ProfileStartData;
.super Ljava/lang/Object;
.source "AndroidProfiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/AndroidProfiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProfileStartData"
.end annotation


# instance fields
.field public final startCpuMillis:J

.field public final startNanos:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startNanos:J

    iput-wide p3, p0, Lio/sentry/android/core/AndroidProfiler$ProfileStartData;->startCpuMillis:J

    return-void
.end method
