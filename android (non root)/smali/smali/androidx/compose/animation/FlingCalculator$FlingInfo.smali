.class public final Landroidx/compose/animation/FlingCalculator$FlingInfo;
.super Ljava/lang/Object;
.source "FlingCalculator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/FlingCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlingInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001J\u000e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0006J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001J\u000e\u0010\u001a\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0006R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/animation/FlingCalculator$FlingInfo;",
        "",
        "initialVelocity",
        "",
        "distance",
        "duration",
        "",
        "(FFJ)V",
        "getDistance",
        "()F",
        "getDuration",
        "()J",
        "getInitialVelocity",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "position",
        "time",
        "toString",
        "",
        "velocity",
        "animation_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final distance:F

.field private final duration:J

.field private final initialVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(FFJ)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    iput p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iput-wide p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/animation/FlingCalculator$FlingInfo;FFJILjava/lang/Object;)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/animation/FlingCalculator$FlingInfo;->copy(FFJ)Landroidx/compose/animation/FlingCalculator$FlingInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    return p0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    return-wide v0
.end method

.method public final copy(FFJ)Landroidx/compose/animation/FlingCalculator$FlingInfo;
    .locals 0

    new-instance p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/animation/FlingCalculator$FlingInfo;-><init>(FFJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iget v3, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    iget-wide p0, p1, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getDistance()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    return p0
.end method

.method public final getDuration()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    return-wide v0
.end method

.method public final getInitialVelocity()F
    .locals 0

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final position(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    iget p0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 119
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    mul-float/2addr p2, p0

    .line 120
    sget-object p0, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getDistanceCoefficient()F

    move-result p0

    mul-float/2addr p2, p0

    return p2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlingInfo(initialVelocity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", distance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final velocity(J)F
    .locals 4

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    long-to-float p1, p1

    long-to-float p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 125
    :goto_0
    sget-object p2, Landroidx/compose/animation/AndroidFlingSpline;->INSTANCE:Landroidx/compose/animation/AndroidFlingSpline;

    invoke-virtual {p2, p1}, Landroidx/compose/animation/AndroidFlingSpline;->flingPosition(F)Landroidx/compose/animation/AndroidFlingSpline$FlingResult;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/animation/AndroidFlingSpline$FlingResult;->getVelocityCoefficient()F

    move-result p1

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->initialVelocity:F

    .line 126
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p1, p2

    iget p2, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->distance:F

    mul-float/2addr p1, p2

    iget-wide v0, p0, Landroidx/compose/animation/FlingCalculator$FlingInfo;->duration:J

    long-to-float p0, v0

    div-float/2addr p1, p0

    const/high16 p0, 0x447a0000    # 1000.0f

    mul-float/2addr p1, p0

    return p1
.end method
