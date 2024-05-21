.class final Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SheetDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/SheetDefaultsKt;->rememberSheetState(ZLkotlin/jvm/functions/Function1;Landroidx/compose/material3/SheetValue;ZLandroidx/compose/runtime/Composer;II)Landroidx/compose/material3/SheetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/material3/SheetState;",
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
.field final synthetic $confirmValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $initialValue:Landroidx/compose/material3/SheetValue;

.field final synthetic $skipHiddenState:Z

.field final synthetic $skipPartiallyExpanded:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material3/SheetValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material3/SheetValue;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    iput-boolean p1, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$skipPartiallyExpanded:Z

    iput-object p2, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$initialValue:Landroidx/compose/material3/SheetValue;

    iput-object p3, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$skipHiddenState:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/material3/SheetState;
    .locals 4

    .line 424
    new-instance v0, Landroidx/compose/material3/SheetState;

    iget-boolean v1, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$skipPartiallyExpanded:Z

    iget-object v2, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$initialValue:Landroidx/compose/material3/SheetValue;

    iget-object v3, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$confirmValueChange:Lkotlin/jvm/functions/Function1;

    iget-boolean p0, p0, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->$skipHiddenState:Z

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/material3/SheetState;-><init>(ZLandroidx/compose/material3/SheetValue;Lkotlin/jvm/functions/Function1;Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 423
    invoke-virtual {p0}, Landroidx/compose/material3/SheetDefaultsKt$rememberSheetState$2$1;->invoke()Landroidx/compose/material3/SheetState;

    move-result-object p0

    return-object p0
.end method
