.class Lcom/google/android/material/datepicker/MaterialDatePicker$4;
.super Lcom/google/android/material/datepicker/OnSelectionChangedListener;
.source "MaterialDatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialDatePicker;->startPickerFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/OnSelectionChangedListener<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialDatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 514
    invoke-direct {p0}, Lcom/google/android/material/datepicker/OnSelectionChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onIncompleteSelectionChanged()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 523
    invoke-static {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public onSelectionChanged(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 517
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->getHeaderText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->updateHeader(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    .line 518
    invoke-static {p1}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$300(Lcom/google/android/material/datepicker/MaterialDatePicker;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/MaterialDatePicker$4;->this$0:Lcom/google/android/material/datepicker/MaterialDatePicker;

    invoke-static {p0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->access$200(Lcom/google/android/material/datepicker/MaterialDatePicker;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/DateSelector;->isSelectionComplete()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
