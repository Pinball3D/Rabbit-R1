.class public final Landroidx/media3/exoplayer/SeekParameters;
.super Ljava/lang/Object;
.source "SeekParameters.java"


# static fields
.field public static final CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

.field public static final DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

.field public static final EXACT:Landroidx/media3/exoplayer/SeekParameters;

.field public static final NEXT_SYNC:Landroidx/media3/exoplayer/SeekParameters;

.field public static final PREVIOUS_SYNC:Landroidx/media3/exoplayer/SeekParameters;


# instance fields
.field public final toleranceAfterUs:J

.field public final toleranceBeforeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 42
    new-instance v0, Landroidx/media3/exoplayer/SeekParameters;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->EXACT:Landroidx/media3/exoplayer/SeekParameters;

    .line 44
    new-instance v3, Landroidx/media3/exoplayer/SeekParameters;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Landroidx/media3/exoplayer/SeekParameters;->CLOSEST_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    .line 47
    new-instance v3, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {v3, v4, v5, v1, v2}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Landroidx/media3/exoplayer/SeekParameters;->PREVIOUS_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    .line 49
    new-instance v3, Landroidx/media3/exoplayer/SeekParameters;

    invoke-direct {v3, v1, v2, v4, v5}, Landroidx/media3/exoplayer/SeekParameters;-><init>(JJ)V

    sput-object v3, Landroidx/media3/exoplayer/SeekParameters;->NEXT_SYNC:Landroidx/media3/exoplayer/SeekParameters;

    sput-object v0, Landroidx/media3/exoplayer/SeekParameters;->DEFAULT:Landroidx/media3/exoplayer/SeekParameters;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ltz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 71
    :goto_0
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 72
    :goto_1
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-wide p1, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    iput-wide p3, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    check-cast p1, Landroidx/media3/exoplayer/SeekParameters;

    iget-wide v2, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    .line 121
    iget-wide v4, p1, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    iget-wide p0, p1, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public resolveSeekPositionUs(JJJ)J
    .locals 8

    iget-wide v2, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceBeforeUs:J

    const-wide/16 v0, 0x0

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    iget-wide v4, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_0

    return-wide p1

    :cond_0
    const-wide/high16 v4, -0x8000000000000000L

    move-wide v0, p1

    .line 92
    invoke-static/range {v0 .. v5}, Landroidx/media3/common/util/Util;->subtractWithOverflowDefault(JJJ)J

    move-result-wide v0

    iget-wide v4, p0, Landroidx/media3/exoplayer/SeekParameters;->toleranceAfterUs:J

    const-wide v6, 0x7fffffffffffffffL

    move-wide v2, p1

    .line 93
    invoke-static/range {v2 .. v7}, Landroidx/media3/common/util/Util;->addWithOverflowDefault(JJJ)J

    move-result-wide v2

    cmp-long p0, v0, p3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gtz p0, :cond_1

    cmp-long p0, p3, v2

    if-gtz p0, :cond_1

    move p0, v4

    goto :goto_0

    :cond_1
    move p0, v5

    :goto_0
    cmp-long v6, v0, p5

    if-gtz v6, :cond_2

    cmp-long v2, p5, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-eqz p0, :cond_4

    if-eqz v4, :cond_4

    sub-long v0, p3, p1

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    sub-long p0, p5, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gtz p0, :cond_3

    return-wide p3

    :cond_3
    return-wide p5

    :cond_4
    if-eqz p0, :cond_5

    return-wide p3

    :cond_5
    if-eqz v4, :cond_6

    return-wide p5

    :cond_6
    return-wide v0
.end method
