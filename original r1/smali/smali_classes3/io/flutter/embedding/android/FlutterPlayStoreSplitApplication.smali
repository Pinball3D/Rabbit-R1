.class public Lio/flutter/embedding/android/FlutterPlayStoreSplitApplication;
.super Lcom/google/android/play/core/splitcompat/SplitCompatApplication;
.source "FlutterPlayStoreSplitApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 46
    invoke-super {p0}, Lcom/google/android/play/core/splitcompat/SplitCompatApplication;->onCreate()V

    .line 49
    new-instance v0, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/engine/deferredcomponents/PlayStoreDeferredComponentManager;-><init>(Landroid/content/Context;Lio/flutter/embedding/engine/FlutterJNI;)V

    .line 51
    new-instance p0, Lio/flutter/FlutterInjector$Builder;

    invoke-direct {p0}, Lio/flutter/FlutterInjector$Builder;-><init>()V

    .line 53
    invoke-virtual {p0, v0}, Lio/flutter/FlutterInjector$Builder;->setDeferredComponentManager(Lio/flutter/embedding/engine/deferredcomponents/DeferredComponentManager;)Lio/flutter/FlutterInjector$Builder;

    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lio/flutter/FlutterInjector$Builder;->build()Lio/flutter/FlutterInjector;

    move-result-object p0

    .line 51
    invoke-static {p0}, Lio/flutter/FlutterInjector;->setInstance(Lio/flutter/FlutterInjector;)V

    return-void
.end method
