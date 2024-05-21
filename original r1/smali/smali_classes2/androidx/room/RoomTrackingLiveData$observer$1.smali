.class public final Landroidx/room/RoomTrackingLiveData$observer$1;
.super Landroidx/room/InvalidationTracker$Observer;
.source "RoomTrackingLiveData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/room/RoomTrackingLiveData$observer$1",
        "Landroidx/room/InvalidationTracker$Observer;",
        "onInvalidated",
        "",
        "tables",
        "",
        "",
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
.field final synthetic this$0:Landroidx/room/RoomTrackingLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/room/RoomTrackingLiveData<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/room/RoomTrackingLiveData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroidx/room/RoomTrackingLiveData<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p2, p0, Landroidx/room/RoomTrackingLiveData$observer$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    .line 49
    invoke-direct {p0, p1}, Landroidx/room/InvalidationTracker$Observer;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onInvalidated(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tables"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object p1

    iget-object p0, p0, Landroidx/room/RoomTrackingLiveData$observer$1;->this$0:Landroidx/room/RoomTrackingLiveData;

    invoke-virtual {p0}, Landroidx/room/RoomTrackingLiveData;->getInvalidationRunnable()Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
