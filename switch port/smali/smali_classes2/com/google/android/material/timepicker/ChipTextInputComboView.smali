.class Lcom/google/android/material/timepicker/ChipTextInputComboView;
.super Landroid/widget/FrameLayout;
.source "ChipTextInputComboView.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;
    }
.end annotation


# instance fields
.field private final chip:Lcom/google/android/material/chip/Chip;

.field private final editText:Landroid/widget/EditText;

.field private label:Landroid/widget/TextView;

.field private final textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private watcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 73
    sget p2, Lcom/google/android/material/R$layout;->material_time_chip:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/chip/Chip;

    iput-object p2, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    const-string v0, "android.view.View"

    .line 74
    invoke-virtual {p2, v0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 75
    sget v0, Lcom/google/android/material/R$layout;->material_time_input:I

    invoke-virtual {p1, v0, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 76
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    const/4 v1, 0x4

    .line 77
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 78
    new-instance v1, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/material/timepicker/ChipTextInputComboView$TextFormatter;-><init>(Lcom/google/android/material/timepicker/ChipTextInputComboView;Lcom/google/android/material/timepicker/ChipTextInputComboView$1;)V

    iput-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 80
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    .line 81
    invoke-virtual {p0, p2}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addView(Landroid/view/View;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->addView(Landroid/view/View;)V

    .line 83
    sget p1, Lcom/google/android/material/R$id;->material_label:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->label:Landroid/widget/TextView;

    .line 84
    invoke-static {}, Landroidx/core/view/ViewCompat;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setId(I)V

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->label:Landroid/widget/TextView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result p1

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setLabelFor(Landroid/view/View;I)V

    .line 86
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 87
    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setLongClickable(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/material/timepicker/ChipTextInputComboView;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/timepicker/ChipTextInputComboView;)Lcom/google/android/material/chip/Chip;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    return-object p0
.end method

.method private formatText(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 136
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/google/android/material/timepicker/TimeModel;->formatText(Landroid/content/res/Resources;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateHintLocales()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    return-void
.end method


# virtual methods
.method public addInputFilter(Landroid/text/InputFilter;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 158
    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 159
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/InputFilter;

    .line 160
    array-length v0, v0

    aput-object p1, v1, v0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 161
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method getChipText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextInput()Lcom/google/android/material/textfield/TextInputLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->textInputLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result p0

    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 189
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 190
    invoke-direct {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->updateHintLocales()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 105
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    .line 106
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_1

    :cond_1
    move p1, v1

    .line 109
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 111
    invoke-static {p0, v1}, Lcom/google/android/material/internal/ViewUtils;->requestFocusAndShowKeyboard(Landroid/view/View;Z)V

    :cond_2
    return-void
.end method

.method public setChipDelegate(Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 169
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 154
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    return-void
.end method

.method public setHelperText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->label:Landroid/widget/TextView;

    .line 150
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTag(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/chip/Chip;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2

    .line 121
    invoke-direct {p0, p1}, Lcom/google/android/material/timepicker/ChipTextInputComboView;->formatText(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 122
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    .line 125
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->editText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->watcher:Landroid/text/TextWatcher;

    .line 126
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/timepicker/ChipTextInputComboView;->chip:Lcom/google/android/material/chip/Chip;

    .line 117
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->toggle()V

    return-void
.end method
