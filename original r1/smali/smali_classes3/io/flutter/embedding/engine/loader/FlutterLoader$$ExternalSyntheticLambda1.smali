.class public final synthetic Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Landroid/os/Handler;

.field public final synthetic f$4:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    iput-object p5, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$3:Landroid/os/Handler;

    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$$ExternalSyntheticLambda1;->f$4:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3, p0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->lambda$ensureInitializationCompleteAsync$1$io-flutter-embedding-engine-loader-FlutterLoader(Landroid/content/Context;[Ljava/lang/String;Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
