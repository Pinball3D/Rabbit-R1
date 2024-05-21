.class public final Landroidx/room/migration/MigrationKt;
.super Ljava/lang/Object;
.source "Migration.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u001a*\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Migration",
        "Landroidx/room/migration/Migration;",
        "startVersion",
        "",
        "endVersion",
        "migrate",
        "Lkotlin/Function1;",
        "Landroidx/sqlite/db/SupportSQLiteDatabase;",
        "",
        "room-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final Migration(IILkotlin/jvm/functions/Function1;)Landroidx/room/migration/Migration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/sqlite/db/SupportSQLiteDatabase;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/room/migration/Migration;"
        }
    .end annotation

    const-string v0, "migrate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroidx/room/migration/MigrationImpl;

    invoke-direct {v0, p0, p1, p2}, Landroidx/room/migration/MigrationImpl;-><init>(IILkotlin/jvm/functions/Function1;)V

    check-cast v0, Landroidx/room/migration/Migration;

    return-object v0
.end method
