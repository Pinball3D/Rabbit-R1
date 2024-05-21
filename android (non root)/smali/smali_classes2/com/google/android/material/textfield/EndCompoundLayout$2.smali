.class Lcom/google/android/material/textfield/EndCompoundLayout$2;
.super Ljava/lang/Object;
.source "EndCompoundLayout.java"

# interfaces
.implements Lcom/google/android/material/textfield/TextInputLayout$OnEditTextAttachedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/EndCompoundLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditTextAttached(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 131
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 134
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 135
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-static {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$100(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 136
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getOnFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 137
    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/textfield/EndIconDelegate;->getOnEditTextFocusChangeListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 138
    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 141
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$002(Lcom/google/android/material/textfield/EndCompoundLayout;Landroid/widget/EditText;)Landroid/widget/EditText;

    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 142
    invoke-static {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 143
    invoke-static {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$100(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 145
    invoke-virtual {p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    invoke-static {v0}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$000(Lcom/google/android/material/textfield/EndCompoundLayout;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/textfield/EndIconDelegate;->onEditTextAttached(Landroid/widget/EditText;)V

    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$2;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->getEndIconDelegate()Lcom/google/android/material/textfield/EndIconDelegate;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/EndCompoundLayout;->access$200(Lcom/google/android/material/textfield/EndCompoundLayout;Lcom/google/android/material/textfield/EndIconDelegate;)V

    return-void
.end method
