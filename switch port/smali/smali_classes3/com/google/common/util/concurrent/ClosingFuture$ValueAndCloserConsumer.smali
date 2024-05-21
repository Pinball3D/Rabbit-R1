.class public interface abstract Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloserConsumer;
.super Ljava/lang/Object;
.source "ClosingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ClosingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ValueAndCloserConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accept(Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/ClosingFuture$ValueAndCloser<",
            "TV;>;)V"
        }
    .end annotation
.end method
