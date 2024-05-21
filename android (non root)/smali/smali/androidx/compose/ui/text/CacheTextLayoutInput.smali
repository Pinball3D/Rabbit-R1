.class public final Landroidx/compose/ui/text/CacheTextLayoutInput;
.super Ljava/lang/Object;
.source "TextMeasurer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroidx/compose/ui/text/CacheTextLayoutInput;",
        "",
        "textLayoutInput",
        "Landroidx/compose/ui/text/TextLayoutInput;",
        "(Landroidx/compose/ui/text/TextLayoutInput;)V",
        "getTextLayoutInput",
        "()Landroidx/compose/ui/text/TextLayoutInput;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "ui-text_release"
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
.field private final textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutInput;)V
    .locals 1

    const-string/jumbo v0, "textLayoutInput"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 394
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 397
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v1

    check-cast p1, Landroidx/compose/ui/text/CacheTextLayoutInput;

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 398
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/compose/ui/text/TextStyle;->hasSameLayoutAffectingAttributes(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 399
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 400
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 401
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 402
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v3

    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/TextOverflow;->equals-impl0(II)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 403
    :cond_7
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    .line 404
    :cond_8
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v3

    if-eq v1, v3, :cond_9

    return v2

    .line 405
    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v3

    if-eq v1, v3, :cond_a

    return v2

    .line 406
    :cond_a
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    iget-object v3, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {v3}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    if-eq v1, v3, :cond_b

    return v2

    .line 407
    :cond_b
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    iget-object p1, p1, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p1

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final getTextLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/text/CacheTextLayoutInput;->textLayoutInput:Landroidx/compose/ui/text/TextLayoutInput;

    .line 378
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/AnnotatedString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 379
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getStyle()Landroidx/compose/ui/text/TextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextStyle;->hashCodeLayoutAffectingAttributes$ui_text_release()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 380
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getPlaceholders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 381
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getMaxLines()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 382
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getSoftWrap()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 383
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getOverflow-gIe3tQ8()I

    move-result v1

    invoke-static {v1}, Landroidx/compose/ui/text/style/TextOverflow;->hashCode-impl(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 384
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getDensity()Landroidx/compose/ui/unit/Density;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 385
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/unit/LayoutDirection;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 386
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getFontFamilyResolver()Landroidx/compose/ui/text/font/FontFamily$Resolver;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 387
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 388
    invoke-virtual {p0}, Landroidx/compose/ui/text/TextLayoutInput;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
