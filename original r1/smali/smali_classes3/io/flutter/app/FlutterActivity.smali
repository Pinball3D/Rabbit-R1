.class public Lio/flutter/app/FlutterActivity;
.super Landroid/app/Activity;
.source "FlutterActivity.java"

# interfaces
.implements Lio/flutter/view/FlutterView$Provider;
.implements Lio/flutter/plugin/common/PluginRegistry;
.implements Lio/flutter/app/FlutterActivityDelegate$ViewFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlutterActivity"


# instance fields
.field private final delegate:Lio/flutter/app/FlutterActivityDelegate;

.field private final eventDelegate:Lio/flutter/app/FlutterActivityEvents;

.field private final pluginRegistry:Lio/flutter/plugin/common/PluginRegistry;

.field private final viewProvider:Lio/flutter/view/FlutterView$Provider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    new-instance v0, Lio/flutter/app/FlutterActivityDelegate;

    invoke-direct {v0, p0, p0}, Lio/flutter/app/FlutterActivityDelegate;-><init>(Landroid/app/Activity;Lio/flutter/app/FlutterActivityDelegate$ViewFactory;)V

    iput-object v0, p0, Lio/flutter/app/FlutterActivity;->delegate:Lio/flutter/app/FlutterActivityDelegate;

    iput-object v0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    iput-object v0, p0, Lio/flutter/app/FlutterActivity;->viewProvider:Lio/flutter/view/FlutterView$Provider;

    iput-object v0, p0, Lio/flutter/app/FlutterActivity;->pluginRegistry:Lio/flutter/plugin/common/PluginRegistry;

    return-void
.end method


# virtual methods
.method public createFlutterNativeView()Lio/flutter/view/FlutterNativeView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createFlutterView(Landroid/content/Context;)Lio/flutter/view/FlutterView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFlutterView()Lio/flutter/view/FlutterView;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->viewProvider:Lio/flutter/view/FlutterView$Provider;

    .line 43
    invoke-interface {p0}, Lio/flutter/view/FlutterView$Provider;->getFlutterView()Lio/flutter/view/FlutterView;

    move-result-object p0

    return-object p0
.end method

.method public final hasPlugin(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->pluginRegistry:Lio/flutter/plugin/common/PluginRegistry;

    .line 75
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/PluginRegistry;->hasPlugin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 145
    invoke-interface {v0, p1, p2, p3}, Lio/flutter/app/FlutterActivityEvents;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 114
    invoke-interface {v0}, Lio/flutter/app/FlutterActivityEvents;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 179
    invoke-interface {p0, p1}, Lio/flutter/app/FlutterActivityEvents;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 91
    invoke-interface {p0, p1}, Lio/flutter/app/FlutterActivityEvents;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 108
    invoke-interface {v0}, Lio/flutter/app/FlutterActivityEvents;->onDestroy()V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 173
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onLowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 152
    invoke-interface {p0, p1}, Lio/flutter/app/FlutterActivityEvents;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 128
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 134
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onPostResume()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 140
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/app/FlutterActivityEvents;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 103
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 97
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    iget-object v0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 121
    invoke-interface {v0}, Lio/flutter/app/FlutterActivityEvents;->onStop()V

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 168
    invoke-interface {p0, p1}, Lio/flutter/app/FlutterActivityEvents;->onTrimMemory(I)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 157
    invoke-interface {p0}, Lio/flutter/app/FlutterActivityEvents;->onUserLeaveHint()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->eventDelegate:Lio/flutter/app/FlutterActivityEvents;

    .line 163
    invoke-interface {p0, p1}, Lio/flutter/app/FlutterActivityEvents;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;
    .locals 0

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->pluginRegistry:Lio/flutter/plugin/common/PluginRegistry;

    .line 85
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/PluginRegistry;->registrarFor(Ljava/lang/String;)Lio/flutter/plugin/common/PluginRegistry$Registrar;

    move-result-object p0

    return-object p0
.end method

.method public retainFlutterNativeView()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;
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

    iget-object p0, p0, Lio/flutter/app/FlutterActivity;->pluginRegistry:Lio/flutter/plugin/common/PluginRegistry;

    .line 80
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/PluginRegistry;->valuePublishedByPlugin(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
