.class Lio/flutter/embedding/engine/FlutterEngineGroup$1;
.super Ljava/lang/Object;
.source "FlutterEngineGroup.java"

# interfaces
.implements Lio/flutter/embedding/engine/FlutterEngine$EngineLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/FlutterEngineGroup;->createAndRunEngine(Lio/flutter/embedding/engine/FlutterEngineGroup$Options;)Lio/flutter/embedding/engine/FlutterEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/FlutterEngineGroup;

.field final synthetic val$engineToCleanUpOnDestroy:Lio/flutter/embedding/engine/FlutterEngine;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterEngineGroup;Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$1;->this$0:Lio/flutter/embedding/engine/FlutterEngineGroup;

    iput-object p2, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$1;->val$engineToCleanUpOnDestroy:Lio/flutter/embedding/engine/FlutterEngine;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineWillDestroy()V
    .locals 1

    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$1;->this$0:Lio/flutter/embedding/engine/FlutterEngineGroup;

    .line 194
    iget-object v0, v0, Lio/flutter/embedding/engine/FlutterEngineGroup;->activeEngines:Ljava/util/List;

    iget-object p0, p0, Lio/flutter/embedding/engine/FlutterEngineGroup$1;->val$engineToCleanUpOnDestroy:Lio/flutter/embedding/engine/FlutterEngine;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPreEngineRestart()V
    .locals 0

    return-void
.end method
