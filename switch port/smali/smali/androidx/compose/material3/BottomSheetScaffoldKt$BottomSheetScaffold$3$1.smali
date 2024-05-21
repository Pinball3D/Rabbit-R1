.class final Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BottomSheetScaffold.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/BottomSheetScaffoldKt;->BottomSheetScaffold-6cEcpDs(Lkotlin/jvm/functions/Function3;Landroidx/compose/ui/Modifier;Landroidx/compose/material3/BottomSheetScaffoldState;FLandroidx/compose/ui/graphics/Shape;JJFFLkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;JJLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;III)V
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
.field final synthetic $scaffoldState:Landroidx/compose/material3/BottomSheetScaffoldState;


# direct methods
.method constructor <init>(Landroidx/compose/material3/BottomSheetScaffoldState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;->$scaffoldState:Landroidx/compose/material3/BottomSheetScaffoldState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Float;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;->$scaffoldState:Landroidx/compose/material3/BottomSheetScaffoldState;

    .line 123
    invoke-virtual {p0}, Landroidx/compose/material3/BottomSheetScaffoldState;->getBottomSheetState()Landroidx/compose/material3/SheetState;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/material3/SheetState;->requireOffset()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 123
    invoke-virtual {p0}, Landroidx/compose/material3/BottomSheetScaffoldKt$BottomSheetScaffold$3$1;->invoke()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
