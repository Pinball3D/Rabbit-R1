.class public final Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;
.super Ljava/lang/Object;
.source "BrvahAsyncDifferConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002:\u0001\u000eB%\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;",
        "T",
        "",
        "mainThreadExecutor",
        "Ljava/util/concurrent/Executor;",
        "backgroundThreadExecutor",
        "diffCallback",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V",
        "getBackgroundThreadExecutor",
        "()Ljava/util/concurrent/Executor;",
        "getDiffCallback",
        "()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "getMainThreadExecutor",
        "Builder",
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
.field private final backgroundThreadExecutor:Ljava/util/concurrent/Executor;

.field private final diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "backgroundThreadExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "diffCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-void
.end method


# virtual methods
.method public final getBackgroundThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->backgroundThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public final getDiffCallback()Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->diffCallback:Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    return-object p0
.end method

.method public final getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/chad/library/adapter/base/diff/BrvahAsyncDifferConfig;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method
