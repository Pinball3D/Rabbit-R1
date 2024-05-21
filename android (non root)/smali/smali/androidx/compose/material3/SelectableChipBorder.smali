.class public final Landroidx/compose/material3/SelectableChipBorder;
.super Ljava/lang/Object;
.source "Chip.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B:\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\'\u0010\r\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u000e2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0011H\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0019\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u0019\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000bR\u0019\u0010\t\u001a\u00020\u0008X\u0082\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u000c\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u0019"
    }
    d2 = {
        "Landroidx/compose/material3/SelectableChipBorder;",
        "",
        "borderColor",
        "Landroidx/compose/ui/graphics/Color;",
        "selectedBorderColor",
        "disabledBorderColor",
        "disabledSelectedBorderColor",
        "borderWidth",
        "Landroidx/compose/ui/unit/Dp;",
        "selectedBorderWidth",
        "(JJJJFFLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "J",
        "F",
        "borderStroke",
        "Landroidx/compose/runtime/State;",
        "Landroidx/compose/foundation/BorderStroke;",
        "enabled",
        "",
        "selected",
        "borderStroke$material3_release",
        "(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;",
        "equals",
        "other",
        "hashCode",
        "",
        "material3_release"
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


# instance fields
.field private final borderColor:J

.field private final borderWidth:F

.field private final disabledBorderColor:J

.field private final disabledSelectedBorderColor:J

.field private final selectedBorderColor:J

.field private final selectedBorderWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(JJJJFF)V
    .locals 0

    .line 1976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/compose/material3/SelectableChipBorder;->borderColor:J

    iput-wide p3, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderColor:J

    iput-wide p5, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledBorderColor:J

    iput-wide p7, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledSelectedBorderColor:J

    iput p9, p0, Landroidx/compose/material3/SelectableChipBorder;->borderWidth:F

    iput p10, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderWidth:F

    return-void
.end method

.method public synthetic constructor <init>(JJJJFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Landroidx/compose/material3/SelectableChipBorder;-><init>(JJJJFF)V

    return-void
.end method


# virtual methods
.method public final borderStroke$material3_release(ZZLandroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/foundation/BorderStroke;",
            ">;"
        }
    .end annotation

    const v0, 0x27f2c9ea

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v1, "C(borderStroke)1999@92578L115:Chip.kt#uh7d8r"

    invoke-static {p3, v1}, Landroidx/compose/runtime/ComposerKt;->sourceInformation(Landroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "androidx.compose.material3.SelectableChipBorder.borderStroke (Chip.kt:1993)"

    .line 1994
    invoke-static {v0, p4, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-wide v0, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderColor:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/material3/SelectableChipBorder;->borderColor:J

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-wide v0, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledSelectedBorderColor:J

    goto :goto_0

    :cond_3
    iget-wide v0, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledBorderColor:J

    :goto_0
    if-eqz p2, :cond_4

    iget p0, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderWidth:F

    goto :goto_1

    :cond_4
    iget p0, p0, Landroidx/compose/material3/SelectableChipBorder;->borderWidth:F

    .line 2001
    :goto_1
    invoke-static {p0, v0, v1}, Landroidx/compose/foundation/BorderStrokeKt;->BorderStroke-cXLIe8U(FJ)Landroidx/compose/foundation/BorderStroke;

    move-result-object p0

    const/4 p1, 0x0

    .line 2000
    invoke-static {p0, p3, p1}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_5
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 2007
    instance-of v2, p1, Landroidx/compose/material3/SelectableChipBorder;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Landroidx/compose/material3/SelectableChipBorder;->borderColor:J

    .line 2009
    check-cast p1, Landroidx/compose/material3/SelectableChipBorder;

    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipBorder;->borderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderColor:J

    .line 2010
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledBorderColor:J

    .line 2011
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipBorder;->disabledBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-wide v2, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledSelectedBorderColor:J

    .line 2012
    iget-wide v4, p1, Landroidx/compose/material3/SelectableChipBorder;->disabledSelectedBorderColor:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget v2, p0, Landroidx/compose/material3/SelectableChipBorder;->borderWidth:F

    .line 2013
    iget v3, p1, Landroidx/compose/material3/SelectableChipBorder;->borderWidth:F

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v2

    if-nez v2, :cond_6

    return v1

    :cond_6
    iget p0, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderWidth:F

    .line 2014
    iget p1, p1, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderWidth:F

    invoke-static {p0, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result p0

    if-nez p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Landroidx/compose/material3/SelectableChipBorder;->borderColor:J

    .line 2020
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderColor:J

    .line 2021
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledBorderColor:J

    .line 2022
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Landroidx/compose/material3/SelectableChipBorder;->disabledSelectedBorderColor:J

    .line 2023
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/compose/material3/SelectableChipBorder;->borderWidth:F

    .line 2024
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/material3/SelectableChipBorder;->selectedBorderWidth:F

    .line 2025
    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
