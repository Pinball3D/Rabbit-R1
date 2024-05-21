.class Lio/flutter/plugin/platform/VirtualDisplayController;
.super Ljava/lang/Object;
.source "VirtualDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/plugin/platform/VirtualDisplayController$OneTimeOnDrawListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "VirtualDisplayController"


# instance fields
.field private final accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

.field private final context:Landroid/content/Context;

.field private final densityDpi:I

.field private final focusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

.field private final renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

.field private final viewId:I

.field private virtualDisplay:Landroid/hardware/display/VirtualDisplay;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V
    .locals 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->context:Landroid/content/Context;

    iput-object p2, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->accessibilityEventsDelegate:Lio/flutter/plugin/platform/AccessibilityEventsDelegate;

    iput-object p5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    iput-object p6, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->focusChangeListener:Landroid/view/View$OnFocusChangeListener;

    iput p7, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->viewId:I

    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 106
    new-instance p3, Lio/flutter/plugin/platform/SingleViewPresentation;

    iget-object p5, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 109
    invoke-virtual {p5}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v0, p3

    move-object v1, p1

    move-object v3, p4

    move-object v4, p2

    move v5, p7

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lio/flutter/plugin/platform/SingleViewPresentation;-><init>(Landroid/content/Context;Landroid/view/Display;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;ILandroid/view/View$OnFocusChangeListener;)V

    iput-object p3, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 114
    invoke-virtual {p3}, Lio/flutter/plugin/platform/SingleViewPresentation;->show()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;IIILjava/lang/Object;Landroid/view/View$OnFocusChangeListener;)Lio/flutter/plugin/platform/VirtualDisplayController;
    .locals 11

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "display"

    move-object v8, p0

    .line 41
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 53
    invoke-interface/range {p3 .. p5}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flutter-vd#"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v9, p6

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 60
    invoke-interface {p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v3

    move v3, p4

    move/from16 v4, p5

    .line 55
    invoke-virtual/range {v1 .. v7}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v0

    .line 66
    :cond_1
    new-instance v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p8

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lio/flutter/plugin/platform/VirtualDisplayController;-><init>(Landroid/content/Context;Lio/flutter/plugin/platform/AccessibilityEventsDelegate;Landroid/hardware/display/VirtualDisplay;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/plugin/platform/PlatformViewRenderTarget;Landroid/view/View$OnFocusChangeListener;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method private resize31(Landroid/view/View;IILjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 216
    invoke-interface {v0, p2, p3}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->resize(II)V

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    iget p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->densityDpi:I

    .line 218
    invoke-virtual {v0, p2, p3, p0}, Landroid/hardware/display/VirtualDisplay;->resize(III)V

    const-wide/16 p2, 0x0

    .line 219
    invoke-virtual {p1, p4, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez p0, :cond_0

    return-void

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 207
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->cancel()V

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 208
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->detachState()Lio/flutter/plugin/platform/SingleViewPresentation$PresentationState;

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 209
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    .line 210
    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->release()V

    return-void
.end method

.method public getRenderTargetHeight()I
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    if-eqz p0, :cond_0

    .line 126
    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getRenderTargetWidth()I
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->renderTarget:Lio/flutter/plugin/platform/PlatformViewRenderTarget;

    if-eqz p0, :cond_0

    .line 119
    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformViewRenderTarget;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 254
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object p0

    .line 255
    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method onFlutterViewAttached(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 227
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object p0

    invoke-interface {p0, p1}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewAttached(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onFlutterViewDetached()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 235
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformView;->onFlutterViewDetached()V

    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionLocked()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 242
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionLocked()V

    :cond_1
    :goto_0
    return-void
.end method

.method onInputConnectionUnlocked()V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/VirtualDisplayController;->presentation:Lio/flutter/plugin/platform/SingleViewPresentation;

    .line 249
    invoke-virtual {p0}, Lio/flutter/plugin/platform/SingleViewPresentation;->getView()Lio/flutter/plugin/platform/PlatformView;

    move-result-object p0

    invoke-interface {p0}, Lio/flutter/plugin/platform/PlatformView;->onInputConnectionUnlocked()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resize(IILjava/lang/Runnable;)V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object p0

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p3, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lio/flutter/plugin/platform/VirtualDisplayController;->resize31(Landroid/view/View;IILjava/lang/Runnable;)V

    return-void
.end method
