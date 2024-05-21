.class public final Landroidx/compose/ui/graphics/Outline$Generic;
.super Landroidx/compose/ui/graphics/Outline;
.source "Outline.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/Outline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Generic"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/Outline$Generic;",
        "Landroidx/compose/ui/graphics/Outline;",
        "path",
        "Landroidx/compose/ui/graphics/Path;",
        "(Landroidx/compose/ui/graphics/Path;)V",
        "bounds",
        "Landroidx/compose/ui/geometry/Rect;",
        "getBounds",
        "()Landroidx/compose/ui/geometry/Rect;",
        "getPath",
        "()Landroidx/compose/ui/graphics/Path;",
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
.field private final path:Landroidx/compose/ui/graphics/Path;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/Path;)V
    .locals 1

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/Outline;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 109
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/graphics/Outline$Generic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    .line 111
    check-cast p1, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object p1, p1, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getBounds()Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    .line 105
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->getBounds()Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getPath()Landroidx/compose/ui/graphics/Path;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
