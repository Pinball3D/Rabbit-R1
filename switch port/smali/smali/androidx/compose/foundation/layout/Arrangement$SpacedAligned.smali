.class public final Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
.super Ljava/lang/Object;
.source "Arrangement.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/layout/Arrangement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpacedAligned"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nArrangement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Arrangement.kt\nandroidx/compose/foundation/layout/Arrangement$SpacedAligned\n+ 2 Arrangement.kt\nandroidx/compose/foundation/layout/Arrangement\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,715:1\n706#2,2:716\n709#2,5:721\n13674#3,3:718\n*S KotlinDebug\n*F\n+ 1 Arrangement.kt\nandroidx/compose/foundation/layout/Arrangement$SpacedAligned\n*L\n586#1:716,2\n586#1:721,5\n586#1:718,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0015\n\u0002\u0008\u0003\u0008\u0081\u0008\u0018\u00002\u00020\u0001B4\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u001a\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010\nJ\u0019\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003\u00f8\u0001\u0002\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0015\u0010\u0010J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\u0017\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0003JH\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u001c\u0008\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007H\u00c6\u0001\u00f8\u0001\u0001\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0013\u0010\u001b\u001a\u00020\u00052\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0008H\u00d6\u0001J\u0008\u0010\u001f\u001a\u00020 H\u0016J,\u0010!\u001a\u00020\"*\u00020#2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\t2\u0006\u0010(\u001a\u00020&H\u0016J$\u0010!\u001a\u00020\"*\u00020#2\u0006\u0010$\u001a\u00020\u00082\u0006\u0010%\u001a\u00020&2\u0006\u0010(\u001a\u00020&H\u0016R%\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u000f\u0010\u0010R\u001f\u0010\u0012\u001a\u00020\u0003X\u0096\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0011\u001a\u0004\u0008\u0013\u0010\u0010\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006)"
    }
    d2 = {
        "Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;",
        "Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;",
        "space",
        "Landroidx/compose/ui/unit/Dp;",
        "rtlMirror",
        "",
        "alignment",
        "Lkotlin/Function2;",
        "",
        "Landroidx/compose/ui/unit/LayoutDirection;",
        "(FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "getAlignment",
        "()Lkotlin/jvm/functions/Function2;",
        "getRtlMirror",
        "()Z",
        "getSpace-D9Ej5fM",
        "()F",
        "F",
        "spacing",
        "getSpacing-D9Ej5fM",
        "component1",
        "component1-D9Ej5fM",
        "component2",
        "component3",
        "copy",
        "copy-8Feqmps",
        "(FZLkotlin/jvm/functions/Function2;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "arrange",
        "",
        "Landroidx/compose/ui/unit/Density;",
        "totalSize",
        "sizes",
        "",
        "layoutDirection",
        "outPositions",
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
.field private final alignment:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rtlMirror:Z

.field private final space:F

.field private final spacing:F


# direct methods
.method private constructor <init>(FZLkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iput-boolean p2, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iput-object p3, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iput p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return-void
.end method

.method public synthetic constructor <init>(FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public static synthetic copy-8Feqmps$default(Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;FZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->copy-8Feqmps(FZLkotlin/jvm/functions/Function2;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 9

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sizes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutDirection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPositions"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    array-length v0, p3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    .line 581
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result p1

    iget-boolean v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 585
    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne p4, v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 586
    :goto_0
    sget-object v3, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    if-nez v0, :cond_2

    .line 719
    array-length v0, p3

    move v1, v2

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v1, v0, :cond_3

    aget v4, p3, v1

    add-int/lit8 v6, v5, 0x1

    sub-int v7, p2, v4

    .line 587
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v5

    sub-int v3, p2, v3

    sub-int/2addr v3, v4

    .line 588
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 589
    aget v5, p5, v5

    add-int/2addr v5, v4

    add-int v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    move v5, v6

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_1

    .line 721
    :cond_2
    array-length v0, p3

    sub-int/2addr v0, v1

    move v3, v2

    move v4, v3

    :goto_2
    const/4 v1, -0x1

    if-ge v1, v0, :cond_3

    .line 722
    aget v1, p3, v0

    sub-int v4, p2, v1

    .line 587
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, p5, v0

    sub-int v3, p2, v3

    sub-int/2addr v3, v1

    .line 588
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 589
    aget v3, p5, v0

    add-int/2addr v3, v1

    add-int/2addr v3, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    sub-int/2addr v3, v4

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_4

    if-ge v3, p2, :cond_4

    sub-int/2addr p2, v3

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    .line 595
    array-length p1, p5

    :goto_3
    if-ge v2, p1, :cond_4

    .line 596
    aget p2, p5, v2

    add-int/2addr p2, p0

    aput p2, p5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public arrange(Landroidx/compose/ui/unit/Density;I[I[I)V
    .locals 7

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sizes"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outPositions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    sget-object v5, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V

    return-void
.end method

.method public final component1-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    return p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    return p0
.end method

.method public final component3()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final copy-8Feqmps(FZLkotlin/jvm/functions/Function2;)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;"
        }
    .end annotation

    new-instance p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;-><init>(FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    iget v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    iget v3, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    iget-object p1, p1, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getAlignment()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getRtlMirror()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    return p0
.end method

.method public final getSpace-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    return p0
.end method

.method public getSpacing-D9Ej5fM()F
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->spacing:F

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->rtlMirror:Z

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "Absolute"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Arrangement#spacedAligned("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->space:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;->alignment:Lkotlin/jvm/functions/Function2;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x29

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
