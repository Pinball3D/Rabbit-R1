.class public final Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;
.super Landroidx/compose/ui/graphics/vector/PathNode;
.source "PathNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/vector/PathNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReflectiveCurveTo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J1\u0010\u0011\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;",
        "Landroidx/compose/ui/graphics/vector/PathNode;",
        "x1",
        "",
        "y1",
        "x2",
        "y2",
        "(FFFF)V",
        "getX1",
        "()F",
        "getX2",
        "getY1",
        "getY2",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
        "ui-graphics_release"
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
.field private final x1:F

.field private final x2:F

.field private final y1:F

.field private final y2:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/ui/graphics/vector/PathNode;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    iput p2, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    iput p3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    iput p4, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    return-void
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;FFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget p4, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->copy(FFFF)Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    return p0
.end method

.method public final component2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    return p0
.end method

.method public final component3()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    return p0
.end method

.method public final component4()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    return p0
.end method

.method public final copy(FFFF)Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;
    .locals 0

    new-instance p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    iget v3, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    iget p1, p1, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getX1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    return p0
.end method

.method public final getX2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    return p0
.end method

.method public final getY1()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    return p0
.end method

.method public final getY2()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReflectiveCurveTo(x1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->x2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;->y2:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
