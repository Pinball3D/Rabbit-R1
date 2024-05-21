.class final Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SearchBar.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SearchBarKt;->SearchBar-Id_Pb_0(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/material3/SearchBarColors;FLandroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/unit/Dp;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1\n+ 2 Dp.kt\nandroidx/compose/ui/unit/Dp\n*L\n1#1,746:1\n51#2:747\n*S KotlinDebug\n*F\n+ 1 SearchBar.kt\nandroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1\n*L\n214#1:747\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $density:Landroidx/compose/ui/unit/Density;

.field final synthetic $unconsumedInsets:Landroidx/compose/material3/MutableWindowInsets;


# direct methods
.method constructor <init>(Landroidx/compose/material3/MutableWindowInsets;Landroidx/compose/ui/unit/Density;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;->$unconsumedInsets:Landroidx/compose/material3/MutableWindowInsets;

    iput-object p2, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;->$density:Landroidx/compose/ui/unit/Density;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 213
    invoke-virtual {p0}, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;->invoke-D9Ej5fM()F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-D9Ej5fM()F
    .locals 2

    .line 214
    invoke-static {}, Landroidx/compose/material3/SearchBarKt;->getSearchBarVerticalPadding()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;->$unconsumedInsets:Landroidx/compose/material3/MutableWindowInsets;

    .line 215
    check-cast v1, Landroidx/compose/foundation/layout/WindowInsets;

    iget-object p0, p0, Landroidx/compose/material3/SearchBarKt$SearchBar$topPadding$1$1;->$density:Landroidx/compose/ui/unit/Density;

    invoke-static {v1, p0}, Landroidx/compose/foundation/layout/WindowInsetsKt;->asPaddingValues(Landroidx/compose/foundation/layout/WindowInsets;Landroidx/compose/ui/unit/Density;)Landroidx/compose/foundation/layout/PaddingValues;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    move-result p0

    add-float/2addr v0, p0

    .line 747
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result p0

    return p0
.end method
