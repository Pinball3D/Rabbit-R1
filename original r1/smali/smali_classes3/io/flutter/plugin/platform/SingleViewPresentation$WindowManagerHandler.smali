.class Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;
.super Ljava/lang/Object;
.source "SingleViewPresentation.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/SingleViewPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WindowManagerHandler"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsController"


# instance fields
.field private final delegate:Landroid/view/WindowManager;

.field fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;)V
    .locals 0

    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->delegate:Landroid/view/WindowManager;

    iput-object p2, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    return-void
.end method

.method private addView([Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    if-nez p0, :cond_0

    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called addView while detached from presentation"

    .line 436
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 439
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    .line 440
    aget-object p1, p1, v1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 441
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private removeView([Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    if-nez p0, :cond_0

    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called removeView while detached from presentation"

    .line 446
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 449
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    .line 450
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private removeViewImmediate([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    if-nez v0, :cond_0

    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called removeViewImmediate while detached from presentation"

    .line 455
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 458
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/View;

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    .line 460
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private updateViewLayout([Ljava/lang/Object;)V
    .locals 2

    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->fakeWindowRootView:Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;

    if-nez p0, :cond_0

    const-string p0, "PlatformViewsController"

    const-string p1, "Embedded view called updateViewLayout while detached from presentation"

    .line 465
    invoke-static {p0, p1}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 468
    aget-object v0, p1, v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x1

    .line 469
    aget-object p1, p1, v1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    .line 470
    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/platform/SingleViewPresentation$FakeWindowViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getWindowManager()Landroid/view/WindowManager;
    .locals 4

    .line 406
    const-class v0, Landroid/view/WindowManager;

    .line 408
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/view/WindowManager;

    aput-object v3, v1, v2

    .line 407
    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 413
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "removeView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "updateViewLayout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "removeViewImmediate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "addView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    packed-switch v1, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->delegate:Landroid/view/WindowManager;

    .line 428
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 430
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    throw p0

    .line 418
    :pswitch_0
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->removeView([Ljava/lang/Object;)V

    return-object p1

    .line 424
    :pswitch_1
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->updateViewLayout([Ljava/lang/Object;)V

    return-object p1

    .line 421
    :pswitch_2
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->removeViewImmediate([Ljava/lang/Object;)V

    return-object p1

    .line 415
    :pswitch_3
    invoke-direct {p0, p3}, Lio/flutter/plugin/platform/SingleViewPresentation$WindowManagerHandler;->addView([Ljava/lang/Object;)V

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4475111a -> :sswitch_3
        0x2059f468 -> :sswitch_2
        0x37843fd8 -> :sswitch_1
        0x417bc549 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
