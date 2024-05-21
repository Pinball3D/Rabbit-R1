.class public final Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
.super Ljava/lang/Object;
.source "VelocityTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/ui/input/pointer/util/DataPointAtTime;",
        "",
        "time",
        "",
        "dataPoint",
        "",
        "(JF)V",
        "getDataPoint",
        "()F",
        "setDataPoint",
        "(F)V",
        "getTime",
        "()J",
        "setTime",
        "(J)V",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private dataPoint:F

.field private time:J


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    iput p3, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/input/pointer/util/DataPointAtTime;JFILjava/lang/Object;)Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget p3, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->copy(JF)Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    return-wide v0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    return p0
.end method

.method public final copy(JF)Landroidx/compose/ui/input/pointer/util/DataPointAtTime;
    .locals 0

    new-instance p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;-><init>(JF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    iget-wide v5, p1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    iget p1, p1, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDataPoint()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    return p0
.end method

.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setDataPoint(F)V
    .locals 0

    iput p1, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    return-void
.end method

.method public final setTime(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataPointAtTime(time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataPoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/input/pointer/util/DataPointAtTime;->dataPoint:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
