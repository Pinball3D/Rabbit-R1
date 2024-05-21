.class final Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;
.super Ljava/lang/Object;
.source "ExposedDropdownMenuPopup.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt;->ExposedDropdownMenuPopup(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/window/PopupPositionProvider;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
.field final synthetic $layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field final synthetic $popupLayout:Landroidx/compose/material3/internal/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/material3/internal/PopupLayout;Landroidx/compose/ui/unit/LayoutDirection;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;->$popupLayout:Landroidx/compose/material3/internal/PopupLayout;

    iput-object p2, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    const-string p3, "$this$Layout"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;->$popupLayout:Landroidx/compose/material3/internal/PopupLayout;

    iget-object p0, p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6;->$layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    .line 165
    invoke-virtual {p2, p0}, Landroidx/compose/material3/internal/PopupLayout;->setParentLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 166
    sget-object p0, Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6$measure$1;->INSTANCE:Landroidx/compose/material3/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$6$measure$1;

    move-object v4, p0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method
