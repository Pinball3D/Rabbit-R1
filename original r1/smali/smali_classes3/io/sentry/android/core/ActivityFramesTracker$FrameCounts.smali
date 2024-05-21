.class final Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;
.super Ljava/lang/Object;
.source "ActivityFramesTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/core/ActivityFramesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FrameCounts"
.end annotation


# instance fields
.field private final frozenFrames:I

.field private final slowFrames:I

.field private final totalFrames:I


# direct methods
.method private constructor <init>(III)V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->totalFrames:I

    iput p2, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->slowFrames:I

    iput p3, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->frozenFrames:I

    return-void
.end method

.method synthetic constructor <init>(IIILio/sentry/android/core/ActivityFramesTracker$1;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;-><init>(III)V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 0

    .line 238
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->totalFrames:I

    return p0
.end method

.method static synthetic access$200(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 0

    .line 238
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->slowFrames:I

    return p0
.end method

.method static synthetic access$300(Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;)I
    .locals 0

    .line 238
    iget p0, p0, Lio/sentry/android/core/ActivityFramesTracker$FrameCounts;->frozenFrames:I

    return p0
.end method
