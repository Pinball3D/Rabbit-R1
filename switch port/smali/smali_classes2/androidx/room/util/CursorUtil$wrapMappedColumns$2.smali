.class public final Landroidx/room/util/CursorUtil$wrapMappedColumns$2;
.super Landroid/database/CursorWrapper;
.source "CursorUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/room/util/CursorUtil;->wrapMappedColumns(Landroid/database/Cursor;[Ljava/lang/String;[I)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCursorUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CursorUtil.kt\nandroidx/room/util/CursorUtil$wrapMappedColumns$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,183:1\n13608#2,3:184\n*S KotlinDebug\n*F\n+ 1 CursorUtil.kt\nandroidx/room/util/CursorUtil$wrapMappedColumns$2\n*L\n175#1:184,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/room/util/CursorUtil$wrapMappedColumns$2",
        "Landroid/database/CursorWrapper;",
        "getColumnIndex",
        "",
        "columnName",
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
.field final synthetic $columnNames:[Ljava/lang/String;

.field final synthetic $mapping:[I


# direct methods
.method constructor <init>(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    iput-object p2, p0, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;->$columnNames:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;->$mapping:[I

    .line 173
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public getColumnIndex(Ljava/lang/String;)I
    .locals 8

    const-string v0, "columnName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;->$columnNames:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/room/util/CursorUtil$wrapMappedColumns$2;->$mapping:[I

    .line 185
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    const/4 v7, 0x1

    .line 176
    invoke-static {v5, p1, v7}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    aget p0, v1, v4

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 180
    :cond_1
    invoke-super {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
