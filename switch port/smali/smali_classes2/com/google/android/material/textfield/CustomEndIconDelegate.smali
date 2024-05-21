.class Lcom/google/android/material/textfield/CustomEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "CustomEndIconDelegate.java"


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    return-void
.end method


# virtual methods
.method setUp()V
    .locals 1

    .line 36
    iget-object p0, p0, Lcom/google/android/material/textfield/CustomEndIconDelegate;->endLayout:Lcom/google/android/material/textfield/EndCompoundLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->setEndIconOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method
