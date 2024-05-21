.class Lio/flutter/embedding/engine/loader/FlutterLoader$1;
.super Ljava/lang/Object;
.source "FlutterLoader.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/loader/FlutterLoader;->startInitialization(Landroid/content/Context;Lio/flutter/embedding/engine/loader/FlutterLoader$Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

.field final synthetic val$appContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iput-object p2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;
    .locals 5

    const-string v0, "FlutterLoader initTask"

    .line 188
    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 189
    invoke-static {v1, v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$000(Lio/flutter/embedding/engine/loader/FlutterLoader;Landroid/content/Context;)Lio/flutter/embedding/engine/loader/ResourceExtractor;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 191
    invoke-static {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterJNI;->loadLibrary()V

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 192
    invoke-static {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v2

    invoke-virtual {v2}, Lio/flutter/embedding/engine/FlutterJNI;->updateRefreshRate()V

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 196
    invoke-static {v2}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$200(Lio/flutter/embedding/engine/loader/FlutterLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v1}, Lio/flutter/embedding/engine/loader/ResourceExtractor;->waitForCompletion()V

    .line 202
    :cond_0
    new-instance v1, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    iget-object v2, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 203
    invoke-static {v2}, Lio/flutter/util/PathUtils;->getFilesDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 204
    invoke-static {v3}, Lio/flutter/util/PathUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->val$appContext:Landroid/content/Context;

    .line 205
    invoke-static {p0}, Lio/flutter/util/PathUtils;->getDataDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p0, v4}, Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/loader/FlutterLoader$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 206
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 188
    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->call()Lio/flutter/embedding/engine/loader/FlutterLoader$InitResult;

    move-result-object p0

    return-object p0
.end method

.method synthetic lambda$call$0$io-flutter-embedding-engine-loader-FlutterLoader$1()V
    .locals 0

    .line 0
    iget-object p0, p0, Lio/flutter/embedding/engine/loader/FlutterLoader$1;->this$0:Lio/flutter/embedding/engine/loader/FlutterLoader;

    .line 196
    invoke-static {p0}, Lio/flutter/embedding/engine/loader/FlutterLoader;->access$100(Lio/flutter/embedding/engine/loader/FlutterLoader;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object p0

    invoke-virtual {p0}, Lio/flutter/embedding/engine/FlutterJNI;->prefetchDefaultFontManager()V

    return-void
.end method
