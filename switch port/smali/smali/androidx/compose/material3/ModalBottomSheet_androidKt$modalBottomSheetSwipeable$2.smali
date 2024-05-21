.class final Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/ModalBottomSheet_androidKt;->modalBottomSheetSwipeable(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SheetState;Landroidx/compose/material3/AnchorChangeHandler;FLkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/material3/SheetValue;",
        "Landroidx/compose/ui/unit/IntSize;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "value",
        "Landroidx/compose/material3/SheetValue;",
        "sheetSize",
        "Landroidx/compose/ui/unit/IntSize;",
        "invoke-O0kMr_c",
        "(Landroidx/compose/material3/SheetValue;J)Ljava/lang/Float;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $screenHeight:F

.field final synthetic $sheetState:Landroidx/compose/material3/SheetState;


# direct methods
.method constructor <init>(FLandroidx/compose/material3/SheetState;)V
    .locals 0

    iput p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$screenHeight:F

    iput-object p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$sheetState:Landroidx/compose/material3/SheetState;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 366
    check-cast p1, Landroidx/compose/material3/SheetValue;

    check-cast p2, Landroidx/compose/ui/unit/IntSize;

    invoke-virtual {p2}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->invoke-O0kMr_c(Landroidx/compose/material3/SheetValue;J)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public final invoke-O0kMr_c(Landroidx/compose/material3/SheetValue;J)Ljava/lang/Float;
    .locals 2

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sget-object v0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Landroidx/compose/material3/SheetValue;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 378
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    if-eqz p1, :cond_5

    iget p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$screenHeight:F

    .line 379
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 380
    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    .line 374
    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    move-result p1

    int-to-float p1, p1

    iget p2, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$screenHeight:F

    int-to-float p3, v0

    div-float/2addr p2, p3

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$sheetState:Landroidx/compose/material3/SheetState;

    .line 375
    invoke-virtual {p1}, Landroidx/compose/material3/SheetState;->getSkipPartiallyExpanded$material3_release()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$screenHeight:F

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    .line 376
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget p0, p0, Landroidx/compose/material3/ModalBottomSheet_androidKt$modalBottomSheetSwipeable$2;->$screenHeight:F

    .line 372
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    :cond_5
    :goto_0
    return-object v1
.end method
