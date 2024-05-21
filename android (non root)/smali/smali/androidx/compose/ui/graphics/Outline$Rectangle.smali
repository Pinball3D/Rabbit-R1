.class public final Landroidx/compose/ui/graphics/Outline$Rectangle;
.super Landroidx/compose/ui/graphics/Outline;
.source "Outline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Outline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rectangle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0096\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Outline$Rectangle;",
        "Landroidx/compose/ui/graphics/Outline;",
        "rect",
        "Landroidx/compose/ui/geometry/Rect;",
        "(Landroidx/compose/ui/geometry/Rect;)V",
        "bounds",
        "getBounds",
        "()Landroidx/compose/ui/geometry/Rect;",
        "getRect",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "ui-graphics_release"
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
.field private final rect:Landroidx/compose/ui/geometry/Rect;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/geometry/Rect;)V
    .locals 1

    const-string v0, "rect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Outline;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    .line 50
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object p1, p1, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public final getRect()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    .line 56
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Rect;->hashCode()I

    move-result p0

    return p0
.end method
