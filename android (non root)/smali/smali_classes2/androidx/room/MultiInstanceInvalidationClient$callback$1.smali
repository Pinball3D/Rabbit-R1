.class public final Landroidx/room/MultiInstanceInvalidationClient$callback$1;
.super Landroidx/room/IMultiInstanceInvalidationCallback$Stub;
.source "MultiInstanceInvalidationClient.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/MultiInstanceInvalidationClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u000e\u0010\u0004\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/room/MultiInstanceInvalidationClient$callback$1",
        "Landroidx/room/IMultiInstanceInvalidationCallback$Stub;",
        "onInvalidation",
        "",
        "tables",
        "",
        "",
        "([Ljava/lang/String;)V",
        "room-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/room/MultiInstanceInvalidationClient;


# direct methods
.method public static synthetic $r8$lambda$YbA_oLvwgwIT6Ag339-3Mj03vfc(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->onInvalidation$lambda$0(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroidx/room/MultiInstanceInvalidationClient;)V
    .locals 0

    iput-object p1, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    .line 58
    invoke-direct {p0}, Landroidx/room/IMultiInstanceInvalidationCallback$Stub;-><init>()V

    return-void
.end method

.method private static final onInvalidation$lambda$0(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Landroidx/room/MultiInstanceInvalidationClient;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object p0

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/room/InvalidationTracker;->notifyObserversByTableNames([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidation([Ljava/lang/String;)V
    .locals 2

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    .line 60
    invoke-virtual {v0}, Landroidx/room/MultiInstanceInvalidationClient;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Landroidx/room/MultiInstanceInvalidationClient$callback$1;->this$0:Landroidx/room/MultiInstanceInvalidationClient;

    new-instance v1, Landroidx/room/MultiInstanceInvalidationClient$callback$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroidx/room/MultiInstanceInvalidationClient$callback$1$$ExternalSyntheticLambda0;-><init>(Landroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
