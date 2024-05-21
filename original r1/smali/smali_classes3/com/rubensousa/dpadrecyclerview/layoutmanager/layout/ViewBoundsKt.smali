.class public final Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBoundsKt;
.super Ljava/lang/Object;
.source "ViewBounds.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewBounds.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewBounds.kt\ncom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBoundsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,75:1\n1#2:76\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u001e\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "offsetHorizontallyBy",
        "",
        "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
        "offset",
        "",
        "offsetVerticallyBy",
        "dpadrecyclerview_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final offsetHorizontallyBy(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 73
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->copy$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;IIIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->offsetHorizontal(I)V

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public static final offsetVerticallyBy(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;",
            ">;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 67
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->copy$default(Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;IIIIILjava/lang/Object;)Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/rubensousa/dpadrecyclerview/layoutmanager/layout/ViewBounds;->offsetVertical(I)V

    .line 66
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    check-cast v1, Ljava/util/List;

    return-object v1
.end method
