.class public Lcom/google/android/material/sidesheet/SideSheetDialog;
.super Lcom/google/android/material/sidesheet/SheetDialog;
.source "SideSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/sidesheet/SheetDialog<",
        "Lcom/google/android/material/sidesheet/SideSheetCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static final SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

.field private static final SIDE_SHEET_DIALOG_THEME_ATTR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget v0, Lcom/google/android/material/R$attr;->sideSheetDialogTheme:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    .line 42
    sget v0, Lcom/google/android/material/R$style;->Theme_Material3_Light_SideSheetDialog:I

    sput v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/sidesheet/SideSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    sget v0, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_THEME_ATTR:I

    sget v1, Lcom/google/android/material/sidesheet/SideSheetDialog;->SIDE_SHEET_DIALOG_DEFAULT_THEME_RES:I

    .line 50
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/material/sidesheet/SheetDialog;-><init>(Landroid/content/Context;III)V

    return-void
.end method


# virtual methods
.method addSheetCancelOnHideCallback(Lcom/google/android/material/sidesheet/Sheet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;)V"
        }
    .end annotation

    .line 56
    new-instance v0, Lcom/google/android/material/sidesheet/SideSheetDialog$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/sidesheet/SideSheetDialog$1;-><init>(Lcom/google/android/material/sidesheet/SideSheetDialog;)V

    invoke-interface {p1, v0}, Lcom/google/android/material/sidesheet/Sheet;->addCallback(Lcom/google/android/material/sidesheet/SheetCallback;)V

    return-void
.end method

.method public bridge synthetic cancel()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->cancel()V

    return-void
.end method

.method public bridge synthetic getBehavior()Lcom/google/android/material/sidesheet/Sheet;
    .locals 0

    .line 39
    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->getBehavior()Lcom/google/android/material/sidesheet/Sheet;

    move-result-object p0

    .line 103
    instance-of v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    if-eqz v0, :cond_0

    .line 106
    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The view is not associated with SideSheetBehavior"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getBehaviorFromSheet(Landroid/widget/FrameLayout;)Lcom/google/android/material/sidesheet/Sheet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/FrameLayout;",
            ")",
            "Lcom/google/android/material/sidesheet/Sheet<",
            "Lcom/google/android/material/sidesheet/SideSheetCallback;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/sidesheet/SideSheetBehavior;

    move-result-object p0

    return-object p0
.end method

.method getDialogId()I
    .locals 0

    .line 79
    sget p0, Lcom/google/android/material/R$id;->m3_side_sheet:I

    return p0
.end method

.method getLayoutResId()I
    .locals 0

    .line 73
    sget p0, Lcom/google/android/material/R$layout;->m3_side_sheet_dialog:I

    return p0
.end method

.method getStateOnStart()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic isDismissWithSheetAnimationEnabled()Z
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->isDismissWithSheetAnimationEnabled()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onAttachedToWindow()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->onAttachedToWindow()V

    return-void
.end method

.method public bridge synthetic onDetachedFromWindow()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/google/android/material/sidesheet/SheetDialog;->onDetachedFromWindow()V

    return-void
.end method

.method public bridge synthetic setCancelable(Z)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCancelable(Z)V

    return-void
.end method

.method public bridge synthetic setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public bridge synthetic setContentView(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(I)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 39
    invoke-super {p0, p1, p2}, Lcom/google/android/material/sidesheet/SheetDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public bridge synthetic setDismissWithSheetAnimationEnabled(Z)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setDismissWithSheetAnimationEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setSheetEdge(I)V
    .locals 0

    .line 39
    invoke-super {p0, p1}, Lcom/google/android/material/sidesheet/SheetDialog;->setSheetEdge(I)V

    return-void
.end method
