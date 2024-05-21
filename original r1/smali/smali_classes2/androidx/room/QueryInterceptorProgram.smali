.class public final Landroidx/room/QueryInterceptorProgram;
.super Ljava/lang/Object;
.source "QueryInterceptorProgram.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000fH\u0016J\u0018\u0010\u0010\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\tH\u0016J\u0008\u0010\u0016\u001a\u00020\tH\u0016J\u001a\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u0002R\u001c\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/room/QueryInterceptorProgram;",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
        "()V",
        "bindArgsCache",
        "",
        "",
        "getBindArgsCache$room_runtime_release",
        "()Ljava/util/List;",
        "bindBlob",
        "",
        "index",
        "",
        "value",
        "",
        "bindDouble",
        "",
        "bindLong",
        "",
        "bindNull",
        "bindString",
        "",
        "clearBindings",
        "close",
        "saveArgsToCache",
        "bindIndex",
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
.field private final bindArgsCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    return-void
.end method

.method private final saveArgsToCache(ILjava/lang/Object;)V
    .locals 3

    add-int/lit8 p1, p1, -0x1

    iget-object v0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    :goto_0
    iget-object v1, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    const/4 v2, 0x0

    .line 58
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eq v0, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    .line 61
    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorProgram;->saveArgsToCache(ILjava/lang/Object;)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    .line 36
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorProgram;->saveArgsToCache(ILjava/lang/Object;)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    .line 32
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorProgram;->saveArgsToCache(ILjava/lang/Object;)V

    return-void
.end method

.method public bindNull(I)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Landroidx/room/QueryInterceptorProgram;->saveArgsToCache(ILjava/lang/Object;)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Landroidx/room/QueryInterceptorProgram;->saveArgsToCache(ILjava/lang/Object;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    iget-object p0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    .line 48
    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public final getBindArgsCache$room_runtime_release()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/room/QueryInterceptorProgram;->bindArgsCache:Ljava/util/List;

    return-object p0
.end method
