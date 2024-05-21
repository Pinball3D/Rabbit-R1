.class final Landroidx/compose/foundation/layout/InsetsPaddingValues;
.super Ljava/lang/Object;
.source "WindowInsets.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/PaddingValues;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0018\u0010\t\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ \u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J \u0010\u0012\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u0018\u0010\u0014\u001a\u00020\nH\u0016\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u000cJ\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0096\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0016J\u0008\u0010\u001c\u001a\u00020\u001dH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u0082\u0002\u000f\n\u0002\u0008!\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001e"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/InsetsPaddingValues;",
        "Landroidx/compose/foundation/layout/PaddingValues;",
        "insets",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)V",
        "getInsets",
        "()Landroidx/compose/foundation/layout/WindowInsets;",
        "calculateBottomPadding",
        "Landroidx/compose/ui/unit/Dp;",
        "calculateBottomPadding-D9Ej5fM",
        "()F",
        "calculateLeftPadding",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "calculateLeftPadding-u2uoSUM",
        "(Landroidx/compose/ui/unit/LayoutDirection;)F",
        "calculateRightPadding",
        "calculateRightPadding-u2uoSUM",
        "calculateTopPadding",
        "calculateTopPadding-D9Ej5fM",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field private final density:Landroidx/compose/ui/unit/Density;

.field private final insets:Landroidx/compose/foundation/layout/WindowInsets;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "density"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput-object p2, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    return-void
.end method


# virtual methods
.method public calculateBottomPadding-D9Ej5fM()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 651
    invoke-interface {p0, v0}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 639
    invoke-interface {p0, v0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F
    .locals 1

    const-string v0, "layoutDirection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 647
    invoke-interface {p0, v0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public calculateTopPadding-D9Ej5fM()F
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 643
    invoke-interface {p0, v0}, Landroidx/compose/foundation/layout/WindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    invoke-interface {v0, p0}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 662
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/InsetsPaddingValues;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 665
    check-cast p1, Landroidx/compose/foundation/layout/InsetsPaddingValues;

    iget-object v3, p1, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    iget-object p1, p1, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 669
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    .line 670
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InsetsPaddingValues(insets="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/InsetsPaddingValues;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
