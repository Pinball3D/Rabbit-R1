.class public final Lio/sentry/SentryLongDate;
.super Lio/sentry/SentryDate;
.source "SentryLongDate.java"


# instance fields
.field private final nanos:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lio/sentry/SentryDate;-><init>()V

    iput-wide p1, p0, Lio/sentry/SentryLongDate;->nanos:J

    return-void
.end method


# virtual methods
.method public nanoTimestamp()J
    .locals 2

    iget-wide v0, p0, Lio/sentry/SentryLongDate;->nanos:J

    return-wide v0
.end method
