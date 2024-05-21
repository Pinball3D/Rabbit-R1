.class public Lorg/webrtc/RendererCommon$VideoLayoutMeasure;
.super Ljava/lang/Object;
.source "RendererCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/RendererCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoLayoutMeasure"
.end annotation


# instance fields
.field private visibleFractionMatchOrientation:F

.field private visibleFractionMismatchOrientation:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    .line 68
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->access$000(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result v0

    iput v0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMatchOrientation:F

    .line 69
    sget-object v0, Lorg/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lorg/webrtc/RendererCommon$ScalingType;

    .line 70
    invoke-static {v0}, Lorg/webrtc/RendererCommon;->access$000(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result v0

    iput v0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMismatchOrientation:F

    return-void
.end method


# virtual methods
.method public measure(IIII)Landroid/graphics/Point;
    .locals 6

    const v0, 0x7fffffff

    .line 93
    invoke-static {v0, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    .line 94
    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    if-eqz p3, :cond_6

    if-eqz p4, :cond_6

    if-eqz v1, :cond_6

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    int-to-float p3, p3

    int-to-float p4, p4

    div-float/2addr p3, p4

    int-to-float p4, v1

    int-to-float v2, v0

    div-float/2addr p4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, p3, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    cmpl-float p4, p4, v2

    if-lez p4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-ne v3, v4, :cond_3

    iget p0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMatchOrientation:F

    goto :goto_2

    :cond_3
    iget p0, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMismatchOrientation:F

    .line 105
    :goto_2
    invoke-static {p0, p3, v1, v0}, Lorg/webrtc/RendererCommon;->getDisplaySize(FFII)Landroid/graphics/Point;

    move-result-object p0

    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 p3, 0x40000000    # 2.0f

    if-ne p1, p3, :cond_4

    .line 109
    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 111
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    if-ne p1, p3, :cond_5

    .line 112
    iput v0, p0, Landroid/graphics/Point;->y:I

    :cond_5
    return-object p0

    .line 96
    :cond_6
    :goto_3
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object p0
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1, p1}, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V

    return-void
.end method

.method public setScalingType(Lorg/webrtc/RendererCommon$ScalingType;Lorg/webrtc/RendererCommon$ScalingType;)V
    .locals 0

    .line 80
    invoke-static {p1}, Lorg/webrtc/RendererCommon;->access$000(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result p1

    iput p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMatchOrientation:F

    .line 82
    invoke-static {p2}, Lorg/webrtc/RendererCommon;->access$000(Lorg/webrtc/RendererCommon$ScalingType;)F

    move-result p1

    iput p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMismatchOrientation:F

    return-void
.end method

.method public setVisibleFraction(FF)V
    .locals 0

    iput p1, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMatchOrientation:F

    iput p2, p0, Lorg/webrtc/RendererCommon$VideoLayoutMeasure;->visibleFractionMismatchOrientation:F

    return-void
.end method
