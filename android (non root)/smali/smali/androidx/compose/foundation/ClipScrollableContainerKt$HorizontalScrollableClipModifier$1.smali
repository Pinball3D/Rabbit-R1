.class public final Landroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1;
.super Ljava/lang/Object;
.source "ClipScrollableContainer.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Shape;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/ClipScrollableContainerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClipScrollableContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipScrollableContainer.kt\nandroidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J-\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000b\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u000c"
    }
    d2 = {
        "androidx/compose/foundation/ClipScrollableContainerKt$HorizontalScrollableClipModifier$1",
        "Landroidx/compose/ui/graphics/Shape;",
        "createOutline",
        "Landroidx/compose/ui/graphics/Outline;",
        "size",
        "Landroidx/compose/ui/geometry/Size;",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "createOutline-Pq9zytI",
        "(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;",
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

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createOutline-Pq9zytI(JLandroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/unit/Density;)Landroidx/compose/ui/graphics/Outline;
    .locals 2

    const-string p0, "layoutDirection"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "density"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {}, Landroidx/compose/foundation/ClipScrollableContainerKt;->getMaxSupportedElevation()F

    move-result p0

    invoke-interface {p4, p0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p0

    int-to-float p0, p0

    .line 70
    new-instance p3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    .line 71
    new-instance p4, Landroidx/compose/ui/geometry/Rect;

    neg-float v0, p0

    .line 74
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    .line 75
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    add-float/2addr p1, p0

    const/4 p0, 0x0

    .line 71
    invoke-direct {p4, p0, v0, v1, p1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 70
    invoke-direct {p3, p4}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    check-cast p3, Landroidx/compose/ui/graphics/Outline;

    return-object p3
.end method
