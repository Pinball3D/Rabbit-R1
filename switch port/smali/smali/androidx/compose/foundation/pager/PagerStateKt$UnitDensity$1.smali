.class public final Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;
.super Ljava/lang/Object;
.source "PagerState.kt"

# interfaces
.implements Landroidx/compose/ui/unit/Density;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/pager/PagerStateKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0003X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0005\u00a8\u0006\u0008"
    }
    d2 = {
        "androidx/compose/foundation/pager/PagerStateKt$UnitDensity$1",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "",
        "getDensity",
        "()F",
        "fontScale",
        "getFontScale",
        "foundation_release"
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
.field private final density:F

.field private final fontScale:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;->density:F

    iput v0, p0, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;->fontScale:F

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;->density:F

    return p0
.end method

.method public getFontScale()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/pager/PagerStateKt$UnitDensity$1;->fontScale:F

    return p0
.end method
