.class final Landroidx/compose/foundation/layout/LimitInsets;
.super Ljava/lang/Object;
.source "WindowInsets.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/WindowInsets;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\u0008\u0003\u0018\u00002\u00020\u0001B\u0018\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\u0005J\u0013\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016J\u0008\u0010\u0019\u001a\u00020\u001aH\u0016R\u0011\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\n\u001a\u0004\u0008\u0008\u0010\t\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001b"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/LimitInsets;",
        "Landroidx/compose/foundation/layout/WindowInsets;",
        "insets",
        "sides",
        "Landroidx/compose/foundation/layout/WindowInsetsSides;",
        "(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getInsets",
        "()Landroidx/compose/foundation/layout/WindowInsets;",
        "getSides-JoeWqyM",
        "()I",
        "I",
        "equals",
        "",
        "other",
        "",
        "getBottom",
        "",
        "density",
        "Landroidx/compose/ui/unit/Density;",
        "getLeft",
        "layoutDirection",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "getRight",
        "getTop",
        "hashCode",
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
.field private final insets:Landroidx/compose/foundation/layout/WindowInsets;

.field private final sides:I


# direct methods
.method private constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;I)V
    .locals 1

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    iput p2, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/foundation/layout/WindowInsets;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/layout/LimitInsets;-><init>(Landroidx/compose/foundation/layout/WindowInsets;I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 617
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/LimitInsets;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 620
    check-cast p1, Landroidx/compose/foundation/layout/LimitInsets;

    iget-object v3, p1, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 621
    iget p1, p1, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    invoke-static {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBottom(Landroidx/compose/ui/unit/Density;)I
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 611
    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getBottom-JoeWqyM()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hasAny-bkgdKaI$foundation_layout_release(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getBottom(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getInsets()Landroidx/compose/foundation/layout/WindowInsets;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    return-object p0
.end method

.method public getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, v0, :cond_0

    .line 581
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getAllowLeftInLtr-JoeWqyM$foundation_layout_release()I

    move-result v0

    goto :goto_0

    .line 583
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getAllowLeftInRtl-JoeWqyM$foundation_layout_release()I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 585
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hasAny-bkgdKaI$foundation_layout_release(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 587
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsets;->getLeft(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p2, v0, :cond_0

    .line 598
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getAllowRightInLtr-JoeWqyM$foundation_layout_release()I

    move-result v0

    goto :goto_0

    .line 600
    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getAllowRightInRtl-JoeWqyM$foundation_layout_release()I

    move-result v0

    :goto_0
    iget v1, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 602
    invoke-static {v1, v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hasAny-bkgdKaI$foundation_layout_release(II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 604
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/WindowInsets;->getRight(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)I

    move-result p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final getSides-JoeWqyM()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    return p0
.end method

.method public getTop(Landroidx/compose/ui/unit/Density;)I
    .locals 2

    const-string v0, "density"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 594
    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    invoke-virtual {v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;->getTop-JoeWqyM()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hasAny-bkgdKaI$foundation_layout_release(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/layout/WindowInsets;->getTop(Landroidx/compose/ui/unit/Density;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    .line 625
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    .line 626
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hashCode-impl(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/LimitInsets;->insets:Landroidx/compose/foundation/layout/WindowInsets;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/compose/foundation/layout/LimitInsets;->sides:I

    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
