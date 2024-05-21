.class public final Landroidx/work/impl/model/WorkProgress;
.super Ljava/lang/Object;
.source "WorkProgress.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Landroidx/work/impl/model/WorkProgress;",
        "",
        "workSpecId",
        "",
        "progress",
        "Landroidx/work/Data;",
        "(Ljava/lang/String;Landroidx/work/Data;)V",
        "getProgress",
        "()Landroidx/work/Data;",
        "getWorkSpecId",
        "()Ljava/lang/String;",
        "work-runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final progress:Landroidx/work/Data;

.field private final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/Data;)V
    .locals 1

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progress"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    return-void
.end method


# virtual methods
.method public final getProgress()Landroidx/work/Data;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgress;->progress:Landroidx/work/Data;

    return-object p0
.end method

.method public final getWorkSpecId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/work/impl/model/WorkProgress;->workSpecId:Ljava/lang/String;

    return-object p0
.end method
