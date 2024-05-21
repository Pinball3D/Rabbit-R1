.class public Lio/flutter/plugin/platform/PlatformOverlayView;
.super Lio/flutter/embedding/android/FlutterImageView;
.source "PlatformOverlayView.java"


# instance fields
.field private accessibilityDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, v0, v0, v1}, Lio/flutter/plugin/platform/PlatformOverlayView;-><init>(Landroid/content/Context;IILio/flutter/plugin/platform/AccessibilityEventsDelegate;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILio/flutter/plugin/platform/AccessibilityEventsDelegate;)V
    .locals 1

    .line 23
    sget-object v0, Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;->overlay:Lio/flutter/embedding/android/FlutterImageView$SurfaceKind;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/flutter/embedding/android/FlutterImageView;-><init>(Landroid/content/Context;IILio/flutter/embedding/android/FlutterImageView$SurfaceKind;)V

    iput-object p4, p0, Lio/flutter/plugin/platform/PlatformOverlayView;->accessibilityDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p2, v0}, Lio/flutter/plugin/platform/PlatformOverlayView;-><init>(Landroid/content/Context;IILio/flutter/plugin/platform/AccessibilityEventsDelegate;)V

    return-void
.end method


# virtual methods
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformOverlayView;->accessibilityDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/platform/AccessibilityEventsDelegate;->onAccessibilityHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 47
    :cond_0
    invoke-super {p0, p1}, Lio/flutter/embedding/android/FlutterImageView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
