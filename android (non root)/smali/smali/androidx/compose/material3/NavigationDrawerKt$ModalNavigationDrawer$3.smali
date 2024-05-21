.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;
.super Lkotlin/jvm/internal/Lambda;
.source "NavigationDrawer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
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
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerContent:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $drawerState:Landroidx/compose/material3/DrawerState;

.field final synthetic $gesturesEnabled:Z

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $scrimColor:J


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/material3/DrawerState;",
            "ZJ",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$drawerContent:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$modifier:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$drawerState:Landroidx/compose/material3/DrawerState;

    iput-boolean p4, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$gesturesEnabled:Z

    iput-wide p5, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$scrimColor:J

    iput-object p7, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$content:Lkotlin/jvm/functions/Function2;

    iput p8, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$$changed:I

    iput p9, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$$default:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$drawerContent:Lkotlin/jvm/functions/Function2;

    iget-object v1, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$drawerState:Landroidx/compose/material3/DrawerState;

    iget-boolean v3, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$gesturesEnabled:Z

    iget-wide v4, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$scrimColor:J

    iget-object v6, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$content:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$$changed:I

    or-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result v8

    iget v9, p0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$3;->$$default:I

    move-object v7, p1

    invoke-static/range {v0 .. v9}, Landroidx/compose/material3/NavigationDrawerKt;->ModalNavigationDrawer-FHprtrg(Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/DrawerState;ZJLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
