.class Lcom/google/common/util/concurrent/SequentialExecutor$1;
.super Ljava/lang/Object;
.source "SequentialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/SequentialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$task:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/SequentialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/util/concurrent/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    .line 123
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/SequentialExecutor$1;->val$task:Ljava/lang/Runnable;

    .line 128
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
