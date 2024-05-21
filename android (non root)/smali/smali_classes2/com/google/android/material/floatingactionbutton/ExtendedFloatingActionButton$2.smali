.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;
.super Ljava/lang/Object;
.source "ExtendedFloatingActionButton.java"

# interfaces
.implements Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getSizeFromExtendStrategyType(I)Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 301
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredHeight()I

    move-result p0

    return p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 316
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public getPaddingEnd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 311
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$100(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 306
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 293
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 294
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getCollapsedPadding()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 295
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 296
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$100(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
