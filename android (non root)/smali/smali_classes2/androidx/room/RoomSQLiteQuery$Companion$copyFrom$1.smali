.class public final Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;
.super Ljava/lang/Object;
.source "RoomSQLiteQuery.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/RoomSQLiteQuery$Companion;->copyFrom(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroidx/room/RoomSQLiteQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0096\u0001J\u0019\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\tH\u0096\u0001J\u0019\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000bH\u0096\u0001J\u0011\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0001J\u0019\u0010\r\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u000eH\u0096\u0001J\t\u0010\u000f\u001a\u00020\u0003H\u0096\u0001J\t\u0010\u0010\u001a\u00020\u0003H\u0096\u0001\u00a8\u0006\u0011"
    }
    d2 = {
        "androidx/room/RoomSQLiteQuery$Companion$copyFrom$1",
        "Landroidx/sqlite/db/SupportSQLiteProgram;",
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
.field private final synthetic $$delegate_0:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    return-void
.end method

.method public bindDouble(ID)V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindDouble(ID)V

    return-void
.end method

.method public bindLong(IJ)V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    return-void
.end method

.method public bindNull(I)V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0, p1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0, p1, p2}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public clearBindings()V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->clearBindings()V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Landroidx/room/RoomSQLiteQuery$Companion$copyFrom$1;->$$delegate_0:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {p0}, Landroidx/room/RoomSQLiteQuery;->close()V

    return-void
.end method
