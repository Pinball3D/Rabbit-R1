.class public Lio/flutter/app/FlutterApplication;
.super Landroid/app/Application;
.source "FlutterApplication.java"


# instance fields
.field private mCurrentActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getCurrentActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 23
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 24
    invoke-static {}, Lio/flutter/FlutterInjector;->instance()Lio/flutter/FlutterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lio/flutter/FlutterInjector;->flutterLoader()Lio/flutter/embedding/engine/loader/FlutterLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;)V

    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/FlutterApplication;->mCurrentActivity:Landroid/app/Activity;

    return-void
.end method
