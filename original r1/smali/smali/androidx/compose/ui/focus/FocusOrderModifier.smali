.class public interface abstract Landroidx/compose/ui/focus/FocusOrderModifier;
.super Ljava/lang/Object;
.source "FocusOrderModifier.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/focus/FocusOrderModifier$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Deprecated;
    message = "Use Modifier.focusProperties() instead"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0006\u00c0\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/ui/focus/FocusOrderModifier;",
        "Landroidx/compose/ui/Modifier$Element;",
        "populateFocusOrder",
        "",
        "focusOrder",
        "Landroidx/compose/ui/focus/FocusOrder;",
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
.method public static synthetic access$all$jd(Landroidx/compose/ui/focus/FocusOrderModifier;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/compose/ui/focus/FocusOrderModifier;->all(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$any$jd(Landroidx/compose/ui/focus/FocusOrderModifier;Lkotlin/jvm/functions/Function1;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/compose/ui/focus/FocusOrderModifier;->any(Lkotlin/jvm/functions/Function1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$foldIn$jd(Landroidx/compose/ui/focus/FocusOrderModifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/focus/FocusOrderModifier;->foldIn(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$foldOut$jd(Landroidx/compose/ui/focus/FocusOrderModifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Landroidx/compose/ui/focus/FocusOrderModifier;->foldOut(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$then$jd(Landroidx/compose/ui/focus/FocusOrderModifier;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/compose/ui/focus/FocusOrderModifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract populateFocusOrder(Landroidx/compose/ui/focus/FocusOrder;)V
.end method
