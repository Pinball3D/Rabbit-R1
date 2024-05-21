.class public final Landroidx/compose/runtime/snapshots/SnapshotContextElementKt;
.super Ljava/lang/Object;
.source "SnapshotContextElement.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u00a8\u0006\u0003"
    }
    d2 = {
        "asContextElement",
        "Landroidx/compose/runtime/snapshots/SnapshotContextElement;",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
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


# direct methods
.method public static final asContextElement(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/SnapshotContextElement;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotContextElementImpl;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotContextElementImpl;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    check-cast v0, Landroidx/compose/runtime/snapshots/SnapshotContextElement;

    return-object v0
.end method
