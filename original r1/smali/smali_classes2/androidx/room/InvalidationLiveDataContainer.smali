.class public final Landroidx/room/InvalidationLiveDataContainer;
.super Ljava/lang/Object;
.source "InvalidationLiveDataContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J=\u0010\n\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0007\"\u0004\u0008\u0000\u0010\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u000e0\r2\u0006\u0010\u000f\u001a\u00020\u00102\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u000b0\u0012\u00a2\u0006\u0002\u0010\u0013J\u0012\u0010\u0014\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0007J\u0012\u0010\u0017\u001a\u00020\u00152\n\u0010\u0016\u001a\u0006\u0012\u0002\u0008\u00030\u0007R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0005\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00070\u0006X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0018"
    }
    d2 = {
        "Landroidx/room/InvalidationLiveDataContainer;",
        "",
        "database",
        "Landroidx/room/RoomDatabase;",
        "(Landroidx/room/RoomDatabase;)V",
        "liveDataSet",
        "",
        "Landroidx/lifecycle/LiveData;",
        "getLiveDataSet$room_runtime_release",
        "()Ljava/util/Set;",
        "create",
        "T",
        "tableNames",
        "",
        "",
        "inTransaction",
        "",
        "computeFunction",
        "Ljava/util/concurrent/Callable;",
        "([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;",
        "onActive",
        "",
        "liveData",
        "onInactive",
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
.field private final database:Landroidx/room/RoomDatabase;

.field private final liveDataSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/InvalidationLiveDataContainer;->database:Landroidx/room/RoomDatabase;

    .line 32
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    const-string v0, "newSetFromMap(IdentityHashMap())"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final create([Ljava/lang/String;ZLjava/util/concurrent/Callable;)Landroidx/lifecycle/LiveData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "tableNames"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeFunction"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroidx/room/RoomTrackingLiveData;

    iget-object v2, p0, Landroidx/room/InvalidationLiveDataContainer;->database:Landroidx/room/RoomDatabase;

    move-object v1, v0

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Landroidx/room/RoomTrackingLiveData;-><init>(Landroidx/room/RoomDatabase;Landroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V

    check-cast v0, Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getLiveDataSet$room_runtime_release()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/lifecycle/LiveData<",
            "*>;>;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    return-object p0
.end method

.method public final onActive(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    .line 49
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onInactive(Landroidx/lifecycle/LiveData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "liveData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/InvalidationLiveDataContainer;->liveDataSet:Ljava/util/Set;

    .line 53
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
