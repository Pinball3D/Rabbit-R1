.class public interface abstract Landroidx/compose/foundation/text/selection/Selectable;
.super Ljava/lang/Object;
.source "Selectable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH&J(\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0008\u0010\u0012\u001a\u00020\tH&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0014H&J \u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0008\u001a\u00020\tH&\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\n\u0010\u0019\u001a\u0004\u0018\u00010\rH&J\u0008\u0010\u001a\u001a\u00020\u001bH&Jc\u0010\u001c\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\r\u0012\u0004\u0012\u00020\u000f0\u001d2\u0006\u0010\u001e\u001a\u00020\u000b2\u0006\u0010\u001f\u001a\u00020\u000b2\u0008\u0010 \u001a\u0004\u0018\u00010\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\rH&\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008%\u0010&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00f8\u0001\u0003\u0082\u0002\u0015\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0004\u0008!0\u0001\u00a8\u0006\'\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "",
        "selectableId",
        "",
        "getSelectableId",
        "()J",
        "getBoundingBox",
        "Landroidx/compose/ui/geometry/Rect;",
        "offset",
        "",
        "getHandlePosition",
        "Landroidx/compose/ui/geometry/Offset;",
        "selection",
        "Landroidx/compose/foundation/text/selection/Selection;",
        "isStartHandle",
        "",
        "getHandlePosition-dBAh8RU",
        "(Landroidx/compose/foundation/text/selection/Selection;Z)J",
        "getLastVisibleOffset",
        "getLayoutCoordinates",
        "Landroidx/compose/ui/layout/LayoutCoordinates;",
        "getRangeOfLineContaining",
        "Landroidx/compose/ui/text/TextRange;",
        "getRangeOfLineContaining--jx7JFs",
        "(I)J",
        "getSelectAllSelection",
        "getText",
        "Landroidx/compose/ui/text/AnnotatedString;",
        "updateSelection",
        "Lkotlin/Pair;",
        "startHandlePosition",
        "endHandlePosition",
        "previousHandlePosition",
        "containerLayoutCoordinates",
        "adjustment",
        "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
        "previousSelection",
        "updateSelection-qCDeeow",
        "(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;",
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


# direct methods
.method public static synthetic updateSelection-qCDeeow$default(Landroidx/compose/foundation/text/selection/Selectable;JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;ILjava/lang/Object;)Lkotlin/Pair;
    .locals 11

    if-nez p11, :cond_2

    and-int/lit8 v0, p10, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move/from16 v7, p6

    :goto_0
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v10, v0

    goto :goto_1

    :cond_1
    move-object/from16 v10, p9

    :goto_1
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 62
    invoke-interface/range {v1 .. v10}, Landroidx/compose/foundation/text/selection/Selectable;->updateSelection-qCDeeow(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: updateSelection-qCDeeow"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;
.end method

.method public abstract getHandlePosition-dBAh8RU(Landroidx/compose/foundation/text/selection/Selection;Z)J
.end method

.method public abstract getLastVisibleOffset()I
.end method

.method public abstract getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract getRangeOfLineContaining--jx7JFs(I)J
.end method

.method public abstract getSelectAllSelection()Landroidx/compose/foundation/text/selection/Selection;
.end method

.method public abstract getSelectableId()J
.end method

.method public abstract getText()Landroidx/compose/ui/text/AnnotatedString;
.end method

.method public abstract updateSelection-qCDeeow(JJLandroidx/compose/ui/geometry/Offset;ZLandroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/SelectionAdjustment;Landroidx/compose/foundation/text/selection/Selection;)Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/ui/geometry/Offset;",
            "Z",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/foundation/text/selection/SelectionAdjustment;",
            "Landroidx/compose/foundation/text/selection/Selection;",
            ")",
            "Lkotlin/Pair<",
            "Landroidx/compose/foundation/text/selection/Selection;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method
