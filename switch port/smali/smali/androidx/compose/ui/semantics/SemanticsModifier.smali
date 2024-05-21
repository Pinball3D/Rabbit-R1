.class public interface abstract Landroidx/compose/ui/semantics/SemanticsModifier;
.super Ljava/lang/Object;
.source "SemanticsModifier.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/semantics/SemanticsModifier$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001R\u001a\u0010\u0002\u001a\u00020\u00038VX\u0097\u0004\u00a2\u0006\u000c\u0012\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u0012\u0010\u0008\u001a\u00020\tX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u000c\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/semantics/SemanticsModifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "id",
        "",
        "getId$annotations",
        "()V",
        "getId",
        "()I",
        "semanticsConfiguration",
        "Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "getSemanticsConfiguration",
        "()Landroidx/compose/ui/semantics/SemanticsConfiguration;",
        "ui_release"
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
.method public static synthetic access$all$jd(Landroidx/compose/ui/semantics/SemanticsModifier;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/compose/ui/semantics/SemanticsModifier;->all(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$any$jd(Landroidx/compose/ui/semantics/SemanticsModifier;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/compose/ui/semantics/SemanticsModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$foldIn$jd(Landroidx/compose/ui/semantics/SemanticsModifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$foldOut$jd(Landroidx/compose/ui/semantics/SemanticsModifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/semantics/SemanticsModifier;->foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$getId$jd(Landroidx/compose/ui/semantics/SemanticsModifier;)I
    .locals 0

    .line 33
    invoke-super {p0}, Landroidx/compose/ui/semantics/SemanticsModifier;->getId()I

    move-result p0

    return p0
.end method

.method public static synthetic access$then$jd(Landroidx/compose/ui/semantics/SemanticsModifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/compose/ui/semantics/SemanticsModifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getId()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public abstract getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;
.end method
