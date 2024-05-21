.class final Lcom/google/android/exoplayer2/video/spherical/TouchTracker;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchTracker.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/exoplayer2/video/spherical/OrientationListener$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;
    }
.end annotation


# static fields
.field static final MAX_PITCH_DEGREES:F = 45.0f


# instance fields
.field private final accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final listener:Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;

.field private final previousTouchPointPx:Landroid/graphics/PointF;

.field private final pxPerDegrees:F

.field private volatile roll:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;F)V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 62
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 63
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->listener:Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;

    iput p3, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->pxPerDegrees:F

    .line 76
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    const p1, 0x40490fdb    # (float)Math.PI

    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->roll:F

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onOrientationChange([FF)V
    .locals 0

    neg-float p1, p2

    iput p1, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->roll:F

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget p3, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, p3

    iget p3, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p1, p3

    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    iget p4, p4, Landroid/graphics/PointF;->y:F

    sub-float/2addr p3, p4

    iget p4, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->pxPerDegrees:F

    div-float/2addr p3, p4

    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->previousTouchPointPx:Landroid/graphics/PointF;

    .line 104
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p4, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget p2, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->roll:F

    float-to-double v0, p2

    .line 107
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p4, v0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 113
    iget v1, v0, Landroid/graphics/PointF;->x:F

    mul-float v2, p2, p1

    mul-float v3, p4, p3

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 115
    iget v1, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr p4, p1

    mul-float/2addr p2, p3

    add-float/2addr p4, p2

    add-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    const/high16 p2, 0x42340000    # 45.0f

    .line 116
    iget p3, p1, Landroid/graphics/PointF;->y:F

    .line 117
    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 p3, -0x3dcc0000    # -45.0f

    invoke-static {p3, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p1, Landroid/graphics/PointF;->y:F

    iget-object p1, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->listener:Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->accumulatedTouchOffsetDegrees:Landroid/graphics/PointF;

    .line 119
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;->onScrollChange(Landroid/graphics/PointF;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->listener:Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;

    .line 125
    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/video/spherical/TouchTracker$Listener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/video/spherical/TouchTracker;->gestureDetector:Landroid/view/GestureDetector;

    .line 87
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
