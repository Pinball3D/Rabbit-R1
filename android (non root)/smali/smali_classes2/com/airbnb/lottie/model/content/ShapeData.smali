.class public Lcom/airbnb/lottie/model/content/ShapeData;
.super Ljava/lang/Object;
.source "ShapeData.java"


# instance fields
.field private closed:Z

.field private final curves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation
.end field

.field private initialPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/PointF;",
            "Z",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    iput-boolean p2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCurves()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/airbnb/lottie/model/CubicCurveData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    return-object p0
.end method

.method public getInitialPoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public interpolateBetween(Lcom/airbnb/lottie/model/content/ShapeData;Lcom/airbnb/lottie/model/content/ShapeData;F)V
    .locals 10

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 57
    :cond_0
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    .line 60
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Curves must have the same number of control points. Shape 1: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\tShape 2: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;)V

    .line 65
    :cond_3
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 66
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v0, :cond_4

    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 68
    new-instance v4, Lcom/airbnb/lottie/model/CubicCurveData;

    invoke-direct {v4}, Lcom/airbnb/lottie/model/CubicCurveData;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v0, :cond_5

    iget-object v2, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_3
    if-lt v2, v0, :cond_5

    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 72
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 76
    :cond_5
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getInitialPoint()Landroid/graphics/PointF;

    move-result-object v2

    .line 79
    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v4, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 80
    invoke-static {v0, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v0

    .line 79
    invoke-virtual {p0, v3, v0}, Lcom/airbnb/lottie/model/content/ShapeData;->setInitialPoint(FF)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_6

    .line 83
    invoke-virtual {p1}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 84
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/content/ShapeData;->getCurves()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/CubicCurveData;

    .line 86
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v3

    .line 87
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v4

    .line 88
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v1

    .line 90
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint1()Landroid/graphics/PointF;

    move-result-object v5

    .line 91
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getControlPoint2()Landroid/graphics/PointF;

    move-result-object v6

    .line 92
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/CubicCurveData;->getVertex()Landroid/graphics/PointF;

    move-result-object v2

    iget-object v7, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 94
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    iget v9, v5, Landroid/graphics/PointF;->x:F

    .line 95
    invoke-static {v8, v9, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 94
    invoke-virtual {v7, v8, v3}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 97
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v7, v6, Landroid/graphics/PointF;->x:F

    .line 98
    invoke-static {v5, v7, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v6, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    .line 97
    invoke-virtual {v3, v5, v4}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    .line 100
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/CubicCurveData;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->x:F

    .line 101
    invoke-static {v4, v5, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v1, v2, p3}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v1

    .line 100
    invoke-virtual {v3, v4, v1}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_4

    :cond_6
    return-void
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    return p0
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    return-void
.end method

.method public setInitialPoint(FF)V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->initialPoint:Landroid/graphics/PointF;

    .line 33
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShapeData{numCurves="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/content/ShapeData;->curves:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "closed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/airbnb/lottie/model/content/ShapeData;->closed:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
