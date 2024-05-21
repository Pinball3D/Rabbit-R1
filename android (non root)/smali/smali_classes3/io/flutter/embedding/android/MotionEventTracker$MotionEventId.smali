.class public Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
.super Ljava/lang/Object;
.source "MotionEventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/MotionEventTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MotionEventId"
.end annotation


# static fields
.field private static final ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final id:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->id:J

    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;)J
    .locals 2

    .line 14
    iget-wide v0, p0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->id:J

    return-wide v0
.end method

.method public static createUnique()Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    .locals 2

    sget-object v0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->ID_COUNTER:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->from(J)Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;

    move-result-object v0

    return-object v0
.end method

.method public static from(J)Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;
    .locals 1

    .line 24
    new-instance v0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;

    invoke-direct {v0, p0, p1}, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;-><init>(J)V

    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Lio/flutter/embedding/android/MotionEventTracker$MotionEventId;->id:J

    return-wide v0
.end method
