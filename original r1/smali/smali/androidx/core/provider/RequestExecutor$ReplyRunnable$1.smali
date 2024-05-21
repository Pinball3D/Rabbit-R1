.class Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;
.super Ljava/lang/Object;
.source "RequestExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/provider/RequestExecutor$ReplyRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/provider/RequestExecutor$ReplyRunnable;

.field final synthetic val$consumer:Landroidx/core/util/Consumer;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroidx/core/provider/RequestExecutor$ReplyRunnable;Landroidx/core/util/Consumer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->this$0:Landroidx/core/provider/RequestExecutor$ReplyRunnable;

    iput-object p2, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$consumer:Landroidx/core/util/Consumer;

    iput-object p3, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$result:Ljava/lang/Object;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$consumer:Landroidx/core/util/Consumer;

    iget-object p0, p0, Landroidx/core/provider/RequestExecutor$ReplyRunnable$1;->val$result:Ljava/lang/Object;

    .line 154
    invoke-interface {v0, p0}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
