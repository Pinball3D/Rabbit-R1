.class Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;
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

.field final synthetic val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

.field final synthetic val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;


# direct methods
.method constructor <init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 409
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 410
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 411
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 414
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 412
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getHeight()I

    move-result p0

    return p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .line 429
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 430
    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v1

    const/4 v2, -0x2

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 431
    invoke-static {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$200(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v2

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public getPaddingEnd()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 424
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$100(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 419
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$000(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0
.end method

.method public getWidth()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 399
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$matchParentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 400
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 401
    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    invoke-static {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->this$0:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    .line 404
    invoke-static {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->access$300(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)I

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;->val$wrapContentSize:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;

    .line 402
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$Size;->getWidth()I

    move-result p0

    return p0
.end method
