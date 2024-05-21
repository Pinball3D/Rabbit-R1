.class Lcom/google/android/material/datepicker/MaterialDatePicker$3;
.super Ljava/lang/Object;
.source "MaterialDatePicker.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->enableEdgeToEdgeIfNeeded(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

.field final synthetic val$headerLayout:Landroid/view/View;

.field final synthetic val$originalHeaderHeight:I

.field final synthetic val$originalPaddingTop:I


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;ILandroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    iput p2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    iput-object p3, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    iput p4, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 463
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 465
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalHeaderHeight:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 466
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 469
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$originalPaddingTop:I

    add-int/2addr v2, p1

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 471
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$3;->val$headerLayout:Landroid/view/View;

    .line 472
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    .line 468
    invoke-virtual {v0, v1, v2, p1, p0}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
