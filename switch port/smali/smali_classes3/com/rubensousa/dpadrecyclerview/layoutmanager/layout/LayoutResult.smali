.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;
.super Ljava/lang/Object;
.source "LayoutResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;",
        "",
        "()V",
        "consumedSpace",
        "",
        "getConsumedSpace",
        "()I",
        "setConsumedSpace",
        "(I)V",
        "skipConsumption",
        "",
        "getSkipConsumption",
        "()Z",
        "setSkipConsumption",
        "(Z)V",
        "reset",
        "",
        "dpadrecyclerview_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private consumedSpace:I

.field private skipConsumption:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getConsumedSpace()I
    .locals 0

    iget p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->consumedSpace:I

    return p0
.end method

.method public final getSkipConsumption()Z
    .locals 0

    iget-boolean p0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->skipConsumption:Z

    return p0
.end method

.method public final reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->consumedSpace:I

    iput-boolean v0, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->skipConsumption:Z

    return-void
.end method

.method public final setConsumedSpace(I)V
    .locals 0

    iput p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->consumedSpace:I

    return-void
.end method

.method public final setSkipConsumption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/LayoutResult;->skipConsumption:Z

    return-void
.end method
