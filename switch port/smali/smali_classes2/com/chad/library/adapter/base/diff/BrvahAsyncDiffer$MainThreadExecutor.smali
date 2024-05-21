.class final Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;
.super Ljava/lang/Object;
.source "BrvahAsyncDiffer.kt"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MainThreadExecutor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0000\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;",
        "Ljava/util/concurrent/Executor;",
        "()V",
        "mHandler",
        "Landroid/os/Handler;",
        "getMHandler",
        "()Landroid/os/Handler;",
        "execute",
        "",
        "command",
        "Ljava/lang/Runnable;",
        "com.github.CymChad.brvah"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getMHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDiffer$MainThreadExecutor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method
