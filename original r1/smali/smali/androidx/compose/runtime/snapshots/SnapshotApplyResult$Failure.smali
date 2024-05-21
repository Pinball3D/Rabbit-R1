.class public final Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;
.super Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
.source "Snapshot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Failure"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;",
        "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;",
        "snapshot",
        "Landroidx/compose/runtime/snapshots/Snapshot;",
        "(Landroidx/compose/runtime/snapshots/Snapshot;)V",
        "getSnapshot",
        "()Landroidx/compose/runtime/snapshots/Snapshot;",
        "succeeded",
        "",
        "getSucceeded",
        "()Z",
        "check",
        "",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final snapshot:Landroidx/compose/runtime/snapshots/Snapshot;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/snapshots/Snapshot;)V
    .locals 1

    const-string/jumbo v0, "snapshot"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1093
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    .line 1099
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->dispose()V

    .line 1100
    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotApplyConflictException;

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    invoke-direct {v0, p0}, Landroidx/compose/runtime/snapshots/SnapshotApplyConflictException;-><init>(Landroidx/compose/runtime/snapshots/Snapshot;)V

    throw v0
.end method

.method public final getSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Failure;->snapshot:Landroidx/compose/runtime/snapshots/Snapshot;

    return-object p0
.end method

.method public getSucceeded()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
