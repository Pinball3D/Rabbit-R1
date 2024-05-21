.class Lcom/google/android/material/textfield/EditTextUtils;
.super Ljava/lang/Object;
.source "EditTextUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isEditable(Landroid/widget/EditText;)Z
    .locals 0

    .line 27
    invoke-virtual {p0}, Landroid/widget/EditText;->getInputType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
