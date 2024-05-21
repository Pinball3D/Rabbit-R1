.class public final Landroidx/room/AutoClosingRoomOpenHelperFactory;
.super Ljava/lang/Object;
.source "AutoClosingRoomOpenHelperFactory.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/room/AutoClosingRoomOpenHelperFactory;",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;",
        "delegate",
        "autoCloser",
        "Landroidx/room/AutoCloser;",
        "(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V",
        "create",
        "Landroidx/room/AutoClosingRoomOpenHelper;",
        "configuration",
        "Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;",
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
.field private final autoCloser:Landroidx/room/AutoCloser;

.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;Landroidx/room/AutoCloser;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoCloser"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/AutoClosingRoomOpenHelperFactory;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    iput-object p2, p0, Landroidx/room/AutoClosingRoomOpenHelperFactory;->autoCloser:Landroidx/room/AutoCloser;

    return-void
.end method


# virtual methods
.method public create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/room/AutoClosingRoomOpenHelper;
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Landroidx/room/AutoClosingRoomOpenHelper;

    iget-object v1, p0, Landroidx/room/AutoClosingRoomOpenHelperFactory;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {v1, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    iget-object p0, p0, Landroidx/room/AutoClosingRoomOpenHelperFactory;->autoCloser:Landroidx/room/AutoCloser;

    invoke-direct {v0, p1, p0}, Landroidx/room/AutoClosingRoomOpenHelper;-><init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Landroidx/room/AutoCloser;)V

    return-object v0
.end method

.method public bridge synthetic create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Landroidx/room/AutoClosingRoomOpenHelperFactory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/room/AutoClosingRoomOpenHelper;

    move-result-object p0

    check-cast p0, Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    return-object p0
.end method
