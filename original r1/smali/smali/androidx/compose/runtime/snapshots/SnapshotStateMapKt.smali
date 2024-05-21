.class public final Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;
.super Ljava/lang/Object;
.source "SnapshotStateMap.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0001\n\u0000\u001a\u0008\u0010\u0002\u001a\u00020\u0003H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "sync",
        "",
        "unsupported",
        "",
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
.field private static final sync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->sync:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getSync$p()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/snapshots/SnapshotStateMapKt;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method public static final unsupported()Ljava/lang/Void;
    .locals 1

    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
