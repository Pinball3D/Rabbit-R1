.class Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/background/greedy/GreedyScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AttemptData"
.end annotation


# instance fields
.field final mRunAttemptCount:I

.field final mTimeStamp:J


# direct methods
.method private constructor <init>(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "runAttemptCount",
            "timeStamp"
        }
    .end annotation

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->mRunAttemptCount:I

    iput-wide p2, p0, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;->mTimeStamp:J

    return-void
.end method

.method synthetic constructor <init>(IJLandroidx/work/impl/background/greedy/GreedyScheduler$1;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2, p3}, Landroidx/work/impl/background/greedy/GreedyScheduler$AttemptData;-><init>(IJ)V

    return-void
.end method
