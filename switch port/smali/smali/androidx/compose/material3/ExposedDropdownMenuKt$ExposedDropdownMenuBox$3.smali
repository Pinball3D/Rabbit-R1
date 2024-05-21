.class final Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ExposedDropdownMenuKt;->ExposedDropdownMenuBox(ZLkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/runtime/DisposableEffectScope;",
        "Landroidx/compose/runtime/DisposableEffectResult;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExposedDropdownMenu.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3\n+ 2 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,1058:1\n62#2,5:1059\n*S KotlinDebug\n*F\n+ 1 ExposedDropdownMenu.kt\nandroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3\n*L\n165#1:1059,5\n*E\n"
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
.field final synthetic $coordinates:Landroidx/compose/ui/node/Ref;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $menuHeight$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $verticalMarginInPx:I

.field final synthetic $view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroidx/compose/ui/node/Ref<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            ">;I",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$view:Landroid/view/View;

    iput-object p2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$coordinates:Landroidx/compose/ui/node/Ref;

    iput p3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$verticalMarginInPx:I

    iput-object p4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 5

    const-string v0, "$this$DisposableEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    new-instance p1, Landroidx/compose/material3/OnGlobalLayoutListener;

    iget-object v0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$view:Landroid/view/View;

    new-instance v1, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;

    iget-object v2, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$view:Landroid/view/View;

    iget-object v3, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$coordinates:Landroidx/compose/ui/node/Ref;

    iget v4, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$verticalMarginInPx:I

    iget-object p0, p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->$menuHeight$delegate:Landroidx/compose/runtime/MutableState;

    invoke-direct {v1, v2, v3, v4, p0}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$listener$1;-><init>(Landroid/view/View;Landroidx/compose/ui/node/Ref;ILandroidx/compose/runtime/MutableState;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p1, v0, v1}, Landroidx/compose/material3/OnGlobalLayoutListener;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 1059
    new-instance p0, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$invoke$$inlined$onDispose$1;

    invoke-direct {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/material3/OnGlobalLayoutListener;)V

    check-cast p0, Landroidx/compose/runtime/DisposableEffectResult;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/ExposedDropdownMenuKt$ExposedDropdownMenuBox$3;->invoke(Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;

    move-result-object p0

    return-object p0
.end method
