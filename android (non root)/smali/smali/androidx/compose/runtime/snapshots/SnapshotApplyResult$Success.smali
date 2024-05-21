.class public final Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;
.super Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
.source "Snapshot.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/snapshots/SnapshotApplyResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016R\u0014\u0010\u0003\u001a\u00020\u00048VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;",
        "Landroidx/compose/runtime/snapshots/SnapshotApplyResult;",
        "()V",
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
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    invoke-direct {v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;-><init>()V

    sput-object v0, Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;->INSTANCE:Landroidx/compose/runtime/snapshots/SnapshotApplyResult$Success;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1084
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotApplyResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public check()V
    .locals 0

    return-void
.end method

.method public getSucceeded()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
