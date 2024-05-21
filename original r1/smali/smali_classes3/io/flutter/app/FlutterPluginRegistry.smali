.class public Lio/flutter/app/FlutterPluginRegistry;
.super Ljava/lang/Object;
.source "FlutterPluginRegistry.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry;
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;
.implements Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterPluginRegistry"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAppContext:Landroid/content/Context;

.field private mFlutterView:Lio/flutter/view/FlutterView;

.field private mNativeView:Lio/flutter/view/FlutterNativeView;

.field private final mNewIntentListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field private final mPluginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestPermissionsResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserLeaveHintListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewDestroyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowFocusChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterEngine;Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    .line 43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mRequestPermissionsResultListeners:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivityResultListeners:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mNewIntentListeners:Ljava/util/List;

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mUserLeaveHintListeners:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mWindowFocusChangedListeners:Ljava/util/List;

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mViewDestroyListeners:Ljava/util/List;

    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->mAppContext:Landroid/content/Context;

    .line 60
    new-instance p1, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p1}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-void
.end method

.method public constructor <init>(Lio/flutter/view/FlutterNativeView;Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mRequestPermissionsResultListeners:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivityResultListeners:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mNewIntentListeners:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mUserLeaveHintListeners:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mWindowFocusChangedListeners:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mViewDestroyListeners:Ljava/util/List;

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mNativeView:Lio/flutter/view/FlutterNativeView;

    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->mAppContext:Landroid/content/Context;

    .line 54
    new-instance p1, Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p1}, Lio/flutter/plugin/platform/PlatformViewsController;-><init>()V

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-void
.end method

.method static synthetic access$000(Lio/flutter/app/FlutterPluginRegistry;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lio/flutter/app/FlutterPluginRegistry;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mWindowFocusChangedListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mViewDestroyListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterNativeView;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mNativeView:Lio/flutter/view/FlutterNativeView;

    return-object p0
.end method

.method static synthetic access$300(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/view/FlutterView;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mFlutterView:Lio/flutter/view/FlutterView;

    return-object p0
.end method

.method static synthetic access$400(Lio/flutter/app/FlutterPluginRegistry;)Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method static synthetic access$500(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/Map;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$600(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mRequestPermissionsResultListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivityResultListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mNewIntentListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lio/flutter/app/FlutterPluginRegistry;)Ljava/util/List;
    .locals 0

    .line 26
    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mUserLeaveHintListeners:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public attach(Lio/flutter/view/FlutterView;Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lio/flutter/app/FlutterPluginRegistry;->mFlutterView:Lio/flutter/view/FlutterView;

    iput-object p2, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 86
    invoke-virtual {p1}, Lio/flutter/view/FlutterView;->getDartExecutor()Lio/flutter/embedding/engine/dart/DartExecutor;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 257
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    return-void
.end method

.method public detach()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 90
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detach()V

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 91
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->onDetachedFromJNI()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mFlutterView:Lio/flutter/view/FlutterView;

    iput-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public getPlatformViewsController()Lio/flutter/plugin/platform/PlatformViewsController;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    return-object p0
.end method

.method public hasPlugin(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    .line 65
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mActivityResultListeners:Ljava/util/List;

    .line 213
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    .line 214
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 1

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mNewIntentListeners:Ljava/util/List;

    .line 223
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    .line 224
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;->onNewIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPreEngineRestart()V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPlatformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 97
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformViewsController;->onPreEngineRestart()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .locals 1

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mRequestPermissionsResultListeners:Ljava/util/List;

    .line 203
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;

    .line 204
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onUserLeaveHint()V
    .locals 1

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mUserLeaveHintListeners:Ljava/util/List;

    .line 233
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;

    .line 234
    invoke-interface {v0}, Lio/flutter/plugin/common/PluginRegistry$UserLeaveHintListener;->onUserLeaveHint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z
    .locals 2

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mViewDestroyListeners:Ljava/util/List;

    .line 248
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;

    .line 249
    invoke-interface {v1, p1}, Lio/flutter/plugin/common/PluginRegistry$ViewDestroyListener;->onViewDestroy(Lio/flutter/view/FlutterNativeView;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mWindowFocusChangedListeners:Ljava/util/List;

    .line 240
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;

    .line 241
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/PluginRegistry$WindowFocusChangedListener;->onWindowFocusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 2

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    .line 76
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 79
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;

    invoke-direct {v0, p0, p1}, Lio/flutter/app/FlutterPluginRegistry$FlutterRegistrar;-><init>(Lio/flutter/app/FlutterPluginRegistry;Ljava/lang/String;)V

    return-object v0

    .line 77
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Plugin key "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is already in use"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/app/FlutterPluginRegistry;->mPluginMap:Ljava/util/Map;

    .line 71
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
