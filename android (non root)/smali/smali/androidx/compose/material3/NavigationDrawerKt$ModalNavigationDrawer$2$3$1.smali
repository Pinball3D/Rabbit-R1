.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/NavigationDrawerKt;->ModalNavigationDrawer-FHprtrg(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
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
.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $maxValue:F

.field final synthetic $minValue:F


# direct methods
.method constructor <init>(FFLandroidx/compose/material3/DrawerState;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$minValue:F

    iput p2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$maxValue:F

    iput-object p3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 2

    iget v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$minValue:F

    iget v1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$maxValue:F

    iget-object p0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->$drawerState:Landroidx/compose/material3/DrawerState;

    .line 297
    invoke-virtual {p0}, Landroidx/compose/material3/DrawerState;->getOffset()Landroidx/compose/runtime/State;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/material3/NavigationDrawerKt;->access$calculateFraction(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 296
    invoke-virtual {p0}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$2$3$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
