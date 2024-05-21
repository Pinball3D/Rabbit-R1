.class Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlutterUiDisplayed()V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x1

    .line 68
    invoke-static {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$002(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)Z

    return-void
.end method

.method public onFlutterUiNoLongerDisplayed()V
    .locals 1

    iget-object p0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$1;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    const/4 v0, 0x0

    .line 73
    invoke-static {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$002(Lio/flutter/embedding/engine/renderer/FlutterRenderer;Z)Z

    return-void
.end method
