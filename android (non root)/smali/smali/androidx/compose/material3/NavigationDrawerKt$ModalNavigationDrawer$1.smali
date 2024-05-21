.class final Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;
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
        "Landroidx/compose/material3/DrawerValue;",
        "Landroidx/compose/material3/DrawerValue;",
        "Landroidx/compose/material3/ThresholdConfig;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;

    invoke-direct {v0}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;->INSTANCE:Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/material3/DrawerValue;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/ThresholdConfig;
    .locals 0

    const-string p0, "<anonymous parameter 0>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "<anonymous parameter 1>"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    new-instance p0, Landroidx/compose/material3/FractionalThreshold;

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-direct {p0, p1}, Landroidx/compose/material3/FractionalThreshold;-><init>(F)V

    check-cast p0, Landroidx/compose/material3/ThresholdConfig;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 272
    check-cast p1, Landroidx/compose/material3/DrawerValue;

    check-cast p2, Landroidx/compose/material3/DrawerValue;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/NavigationDrawerKt$ModalNavigationDrawer$1;->invoke(Landroidx/compose/material3/DrawerValue;Landroidx/compose/material3/DrawerValue;)Landroidx/compose/material3/ThresholdConfig;

    move-result-object p0

    return-object p0
.end method
