.class Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;
.super Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl;
.source "SoftwareKeyboardControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/SoftwareKeyboardControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl20"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl;-><init>()V

    iput-object p1, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    return-void
.end method

.method static synthetic lambda$show$0(Landroid/view/View;)V
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method


# virtual methods
.method hide()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object p0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method show()V
    .locals 2

    iget-object v0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :goto_1
    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20;->mView:Landroid/view/View;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 131
    new-instance p0, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;

    invoke-direct {p0, v0}, Landroidx/core/view/SoftwareKeyboardControllerCompat$Impl20$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method
