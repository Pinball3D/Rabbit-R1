.class public interface abstract Landroidx/compose/ui/layout/GraphicLayerInfo;
.super Ljava/lang/Object;
.source "GraphicLayerInfo.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/GraphicLayerInfo$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008f\u0018\u00002\u00020\u0001R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0005\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0008\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/layout/GraphicLayerInfo;",
        "",
        "layerId",
        "",
        "getLayerId",
        "()J",
        "ownerViewId",
        "getOwnerViewId",
        "ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic access$getOwnerViewId$jd(Landroidx/compose/ui/layout/GraphicLayerInfo;)J
    .locals 2

    .line 24
    invoke-super {p0}, Landroidx/compose/ui/layout/GraphicLayerInfo;->getOwnerViewId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract getLayerId()J
.end method

.method public getOwnerViewId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
