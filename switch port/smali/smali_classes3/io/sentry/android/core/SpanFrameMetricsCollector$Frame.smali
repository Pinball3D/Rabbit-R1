.class Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;
.super Ljava/lang/Object;
.source "SpanFrameMetricsCollector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/SpanFrameMetricsCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Frame"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;",
        ">;"
    }
.end annotation


# instance fields
.field private final delayNanos:J

.field private final durationNanos:J

.field private final endNanos:J

.field private final expectedDurationNanos:J

.field private final isFrozen:Z

.field private final isSlow:Z

.field private final startNanos:J


# direct methods
.method constructor <init>(J)V
    .locals 13

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 319
    invoke-direct/range {v0 .. v12}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;-><init>(JJJJZZJ)V

    return-void
.end method

.method constructor <init>(JJJJZZJ)V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    iput-wide p3, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    iput-wide p5, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    iput-wide p7, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    iput-boolean p9, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    iput-boolean p10, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    iput-wide p11, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    return-void
.end method

.method static synthetic access$000(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 309
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->startNanos:J

    return-wide v0
.end method

.method static synthetic access$100(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 309
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    return-wide v0
.end method

.method static synthetic access$200(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 309
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->durationNanos:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 309
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->delayNanos:J

    return-wide v0
.end method

.method static synthetic access$400(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isSlow:Z

    return p0
.end method

.method static synthetic access$500(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)Z
    .locals 0

    .line 309
    iget-boolean p0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->isFrozen:Z

    return p0
.end method

.method static synthetic access$600(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)J
    .locals 2

    .line 309
    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->expectedDurationNanos:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I
    .locals 2

    iget-wide v0, p0, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    .line 341
    iget-wide p0, p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->endNanos:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 309
    check-cast p1, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;

    invoke-virtual {p0, p1}, Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;->compareTo(Lio/sentry/android/core/SpanFrameMetricsCollector$Frame;)I

    move-result p0

    return p0
.end method
