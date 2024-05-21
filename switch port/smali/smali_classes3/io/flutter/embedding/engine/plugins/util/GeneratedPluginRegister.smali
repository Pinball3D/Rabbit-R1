.class public Lio/flutter/embedding/engine/plugins/util/GeneratedPluginRegister;
.super Ljava/lang/Object;
.source "GeneratedPluginRegister.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GeneratedPluginsRegister"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerGeneratedPlugins(Lio/flutter/embedding/engine/FlutterEngine;)V
    .locals 5

    :try_start_0
    const-string v0, "io.flutter.plugins.GeneratedPluginRegistrant"

    .line 77
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "registerWith"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 78
    const-class v3, Lio/flutter/embedding/engine/FlutterEngine;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 80
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried to automatically register plugins with FlutterEngine ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ") but could not find or invoke the GeneratedPluginRegistrant."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GeneratedPluginsRegister"

    invoke-static {v1, p0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Received exception while registering"

    .line 87
    invoke-static {v1, p0, v0}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
