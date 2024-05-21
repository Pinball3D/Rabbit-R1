.class public final Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeferredCloser"
.end annotation


# instance fields
.field private final list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;)V
    .locals 0

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;->list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    return-void
.end method


# virtual methods
.method public eventuallyClose(Ljava/lang/Object;Ljava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
        .end annotation
    .end param
    .annotation runtime Lcom/google/common/util/concurrent/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ":",
            "Ljava/io/Closeable;",
            ">(TC;",
            "Ljava/util/concurrent/Executor;",
            ")TC;"
        }
    .end annotation

    .line 239
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/common/util/concurrent/ClosingFuture$DeferredCloser;->list:Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;

    .line 241
    move-object v0, p1

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {p0, v0, p2}, Lcom/google/common/util/concurrent/ClosingFuture$CloseableList;->add(Ljava/io/Closeable;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-object p1
.end method
