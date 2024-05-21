.class final Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SelectionRegistrarImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->sort(Landroidx/compose/ui/layout/LayoutCoordinates;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "a",
        "Landroidx/compose/foundation/text/selection/Selectable;",
        "b",
        "invoke",
        "(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selectable;)Ljava/lang/Integer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;->$containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selectable;)Ljava/lang/Integer;
    .locals 4

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    invoke-interface {p1}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p1

    .line 139
    invoke-interface {p2}, Landroidx/compose/foundation/text/selection/Selectable;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object p2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;->$containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 142
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v0

    goto :goto_0

    .line 144
    :cond_0
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    :goto_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;->$containerLayoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 147
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v2

    invoke-interface {p0, p2, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    goto :goto_1

    .line 149
    :cond_1
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide p0

    .line 152
    :goto_1
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    cmpg-float p2, p2, v2

    if-nez p2, :cond_2

    .line 153
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    goto :goto_2

    .line 155
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;

    invoke-static {p2, p0}, Lkotlin/comparisons/ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 137
    check-cast p1, Landroidx/compose/foundation/text/selection/Selectable;

    check-cast p2, Landroidx/compose/foundation/text/selection/Selectable;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl$sort$1;->invoke(Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selectable;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
