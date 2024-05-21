.class public Lcom/airbnb/lottie/model/CubicCurveData;
.super Ljava/lang/Object;
.source "CubicCurveData.java"


# instance fields
.field private final controlPoint1:Landroid/graphics/PointF;

.field private final controlPoint2:Landroid/graphics/PointF;

.field private final vertex:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 46
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public getControlPoint1()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getControlPoint2()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    return-object p0
.end method

.method public getVertex()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    return-object p0
.end method

.method public setControlPoint1(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    .line 56
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setControlPoint2(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    .line 64
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public setFrom(Lcom/airbnb/lottie/model/CubicCurveData;)V
    .locals 2

    .line 76
    iget-object v0, p1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p1, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/model/CubicCurveData;->setVertex(FF)V

    .line 77
    iget-object v0, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, v1}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint1(FF)V

    .line 78
    iget-object v0, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object p1, p1, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/airbnb/lottie/model/CubicCurveData;->setControlPoint2(FF)V

    return-void
.end method

.method public setVertex(FF)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    .line 88
    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 89
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->vertex:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint1:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object p0, p0, Lcom/airbnb/lottie/model/CubicCurveData;->controlPoint2:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "v=%.2f,%.2f cp1=%.2f,%.2f cp2=%.2f,%.2f"

    .line 88
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
