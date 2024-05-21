.class public abstract Landroidx/compose/runtime/snapshots/StateRecord;
.super Ljava/lang/Object;
.source "Snapshot.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0000H&J\u0008\u0010\u0011\u001a\u00020\u0000H&R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0000X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007R\u001a\u0010\u0008\u001a\u00020\tX\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/StateRecord;",
        "",
        "()V",
        "next",
        "getNext$runtime_release",
        "()Landroidx/compose/runtime/snapshots/StateRecord;",
        "setNext$runtime_release",
        "(Landroidx/compose/runtime/snapshots/StateRecord;)V",
        "snapshotId",
        "",
        "getSnapshotId$runtime_release",
        "()I",
        "setSnapshotId$runtime_release",
        "(I)V",
        "assign",
        "",
        "value",
        "create",
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
.field private next:Landroidx/compose/runtime/snapshots/StateRecord;

.field private snapshotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1141
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/Snapshot;->getId()I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->snapshotId:I

    return-void
.end method


# virtual methods
.method public abstract assign(Landroidx/compose/runtime/snapshots/StateRecord;)V
.end method

.method public abstract create()Landroidx/compose/runtime/snapshots/StateRecord;
.end method

.method public final getNext$runtime_release()Landroidx/compose/runtime/snapshots/StateRecord;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->next:Landroidx/compose/runtime/snapshots/StateRecord;

    return-object p0
.end method

.method public final getSnapshotId$runtime_release()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/snapshots/StateRecord;->snapshotId:I

    return p0
.end method

.method public final setNext$runtime_release(Landroidx/compose/runtime/snapshots/StateRecord;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/runtime/snapshots/StateRecord;->next:Landroidx/compose/runtime/snapshots/StateRecord;

    return-void
.end method

.method public final setSnapshotId$runtime_release(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/runtime/snapshots/StateRecord;->snapshotId:I

    return-void
.end method
