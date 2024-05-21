.class Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;
.super Lcom/google/android/material/textfield/EndIconDelegate;
.source "PasswordToggleEndIconDelegate.java"


# instance fields
.field private editText:Landroid/widget/EditText;

.field private iconResId:I

.field private final onIconClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;I)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/EndIconDelegate;-><init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V

    .line 32
    sget p1, Lcom/google/android/material/R$drawable;->design_password_eye:I

    iput p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    .line 37
    new-instance p1, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_0

    iput p2, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    :cond_0
    return-void
.end method

.method private hasPasswordTransformation()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0}, Landroid/widget/EditText;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object p0

    instance-of p0, p0, Landroid/text/method/PasswordTransformationMethod;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isInputTypePassword(Landroid/widget/EditText;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 125
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    .line 128
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    const/16 v0, 0xe0

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method beforeEditTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    return-void
.end method

.method getIconContentDescriptionResId()I
    .locals 0

    .line 88
    sget p0, Lcom/google/android/material/R$string;->password_toggle_content_description:I

    return p0
.end method

.method getIconDrawableResId()I
    .locals 0

    iget p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->iconResId:I

    return p0
.end method

.method getOnIconClickListener()Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->onIconClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method isIconCheckable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method isIconChecked()Z
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method synthetic lambda$new$0$com-google-android-material-textfield-PasswordToggleEndIconDelegate(Landroid/view/View;)V
    .locals 2

    .line 0
    iget-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p1

    .line 43
    invoke-direct {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->hasPasswordTransformation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 46
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    return-void
.end method

.method onEditTextAttached(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->refreshIconState()V

    return-void
.end method

.method setUp()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 65
    invoke-static {v0}, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->isInputTypePassword(Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    .line 67
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method

.method tearDown()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/textfield/PasswordToggleEndIconDelegate;->editText:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    .line 75
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_0
    return-void
.end method
