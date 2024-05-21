.class final Lio/flutter/view/FlutterView$ViewportMetrics;
.super Ljava/lang/Object;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ViewportMetrics"
.end annotation


# instance fields
.field devicePixelRatio:F

.field physicalHeight:I

.field physicalTouchSlop:I

.field physicalViewInsetBottom:I

.field physicalViewInsetLeft:I

.field physicalViewInsetRight:I

.field physicalViewInsetTop:I

.field physicalViewPaddingBottom:I

.field physicalViewPaddingLeft:I

.field physicalViewPaddingRight:I

.field physicalViewPaddingTop:I

.field physicalWidth:I

.field systemGestureInsetBottom:I

.field systemGestureInsetLeft:I

.field systemGestureInsetRight:I

.field systemGestureInsetTop:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->devicePixelRatio:F

    const/4 v0, 0x0

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalWidth:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalHeight:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingTop:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingRight:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingBottom:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewPaddingLeft:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetTop:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetRight:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetBottom:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalViewInsetLeft:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetTop:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetRight:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetBottom:I

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->systemGestureInsetLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lio/flutter/view/FlutterView$ViewportMetrics;->physicalTouchSlop:I

    return-void
.end method
