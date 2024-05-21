.class public final Landroidx/compose/foundation/layout/FlowResult;
.super Ljava/lang/Object;
.source "FlowLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0002\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/FlowResult;",
        "",
        "mainAxisTotalSize",
        "",
        "crossAxisTotalSize",
        "items",
        "Landroidx/compose/runtime/collection/MutableVector;",
        "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
        "(IILandroidx/compose/runtime/collection/MutableVector;)V",
        "getCrossAxisTotalSize",
        "()I",
        "getItems",
        "()Landroidx/compose/runtime/collection/MutableVector;",
        "getMainAxisTotalSize",
        "foundation-layout_release"
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
.field private final crossAxisTotalSize:I

.field private final items:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mainAxisTotalSize:I


# direct methods
.method public constructor <init>(IILandroidx/compose/runtime/collection/MutableVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    iput p2, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    iput-object p3, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    return-void
.end method


# virtual methods
.method public final getCrossAxisTotalSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowResult;->crossAxisTotalSize:I

    return p0
.end method

.method public final getItems()Landroidx/compose/runtime/collection/MutableVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/foundation/layout/RowColumnMeasureHelperResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowResult;->items:Landroidx/compose/runtime/collection/MutableVector;

    return-object p0
.end method

.method public final getMainAxisTotalSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/FlowResult;->mainAxisTotalSize:I

    return p0
.end method
