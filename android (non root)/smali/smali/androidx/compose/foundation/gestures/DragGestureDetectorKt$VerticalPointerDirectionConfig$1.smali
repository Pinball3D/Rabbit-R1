.class public final Landroidx/compose/foundation/gestures/DragGestureDetectorKt$VerticalPointerDirectionConfig$1;
.super Ljava/lang/Object;
.source "DragGestureDetector.kt"

# interfaces
.implements Landroidx/compose/foundation/gestures/PointerDirectionConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/DragGestureDetectorKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001d\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001d\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\t\u0010\u0007J(\u0010\n\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\u0003H\u0016\u00f8\u0001\u0002\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000e\u0082\u0002\u000f\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\n\u0002\u0008!\u00a8\u0006\u000f"
    }
    d2 = {
        "androidx/compose/foundation/gestures/DragGestureDetectorKt$VerticalPointerDirectionConfig$1",
        "Landroidx/compose/foundation/gestures/PointerDirectionConfig;",
        "crossAxisDelta",
        "",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "crossAxisDelta-k-4lQ0M",
        "(J)F",
        "mainAxisDelta",
        "mainAxisDelta-k-4lQ0M",
        "offsetFromChanges",
        "mainChange",
        "crossChange",
        "offsetFromChanges-dBAh8RU",
        "(FF)J",
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
.method constructor <init>()V
    .locals 0

    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public crossAxisDelta-k-4lQ0M(J)F
    .locals 0

    .line 770
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    return p0
.end method

.method public mainAxisDelta-k-4lQ0M(J)F
    .locals 0

    .line 768
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    return p0
.end method

.method public offsetFromChanges-dBAh8RU(FF)J
    .locals 0

    .line 773
    invoke-static {p2, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide p0

    return-wide p0
.end method
