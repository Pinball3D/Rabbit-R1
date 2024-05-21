.class Lio/flutter/embedding/android/FlutterView$3;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


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
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    const/4 v1, 0x1

    .line 177
    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterView;->access$202(Lio/flutter/embedding/android/FlutterView;Z)Z

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 179
    invoke-static {p0}, Lio/flutter/embedding/android/FlutterView;->access$300(Lio/flutter/embedding/android/FlutterView;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 180
    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiDisplayed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    const/4 v1, 0x0

    .line 186
    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterView;->access$202(Lio/flutter/embedding/android/FlutterView;Z)Z

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    .line 188
    invoke-static {p0}, Lio/flutter/embedding/android/FlutterView;->access$300(Lio/flutter/embedding/android/FlutterView;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;

    .line 189
    invoke-interface {v0}, Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;->onFlutterUiNoLongerDisplayed()V

    goto :goto_0

    :cond_0
    return-void
.end method
