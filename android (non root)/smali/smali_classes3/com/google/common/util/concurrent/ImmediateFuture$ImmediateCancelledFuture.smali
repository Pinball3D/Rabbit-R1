.class final Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;
.super Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "ImmediateFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/ImmediateFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImmediateCancelledFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    sget-boolean v0, Lcom/google/common/util/concurrent/AbstractFuture;->GENERATE_CANCELLATION_CAUSES:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;

    invoke-direct {v0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;-><init>()V

    :goto_0
    sput-object v0, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;->INSTANCE:Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;->cancel(Z)Z

    return-void
.end method
