.class Lio/flutter/embedding/android/FlutterView$2;
.super Landroid/database/ContentObserver;
.source "FlutterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 155
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 159
    invoke-static {p1}, Lio/flutter/embedding/android/FlutterView;->access$100(Lio/flutter/embedding/android/FlutterView;)Lio/flutter/embedding/engine/FlutterEngine;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "FlutterView"

    const-string v0, "System settings changed. Sending user settings to Flutter."

    .line 162
    invoke-static {p1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView$2;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 163
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterView;->sendUserSettingsToFlutter()V

    return-void
.end method
