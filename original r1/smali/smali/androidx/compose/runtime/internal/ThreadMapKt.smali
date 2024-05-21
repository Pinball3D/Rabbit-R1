.class public final Landroidx/compose/runtime/internal/ThreadMapKt;
.super Ljava/lang/Object;
.source "ThreadMap.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nThreadMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadMap.kt\nandroidx/compose/runtime/internal/ThreadMapKt\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,111:1\n26#2:112\n*S KotlinDebug\n*F\n+ 1 ThreadMap.kt\nandroidx/compose/runtime/internal/ThreadMapKt\n*L\n111#1:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\"\u0014\u0010\u0000\u001a\u00020\u0001X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "emptyThreadMap",
        "Landroidx/compose/runtime/internal/ThreadMap;",
        "getEmptyThreadMap",
        "()Landroidx/compose/runtime/internal/ThreadMap;",
        "runtime_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final emptyThreadMap:Landroidx/compose/runtime/internal/ThreadMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 111
    new-instance v0, Landroidx/compose/runtime/internal/ThreadMap;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/internal/ThreadMap;-><init>(I[J[Ljava/lang/Object;)V

    sput-object v0, Landroidx/compose/runtime/internal/ThreadMapKt;->emptyThreadMap:Landroidx/compose/runtime/internal/ThreadMap;

    return-void
.end method

.method public static final getEmptyThreadMap()Landroidx/compose/runtime/internal/ThreadMap;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/internal/ThreadMapKt;->emptyThreadMap:Landroidx/compose/runtime/internal/ThreadMap;

    return-object v0
.end method
