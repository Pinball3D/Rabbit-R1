.class Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;
.super Ljava/lang/Object;
.source "BottomAppBar.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1340
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2500(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Ljava/lang/ref/WeakReference;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomappbar/BottomAppBar;

    if-eqz p2, :cond_5

    .line 1343
    instance-of p3, p1, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez p3, :cond_0

    instance-of p4, p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-nez p4, :cond_0

    goto/16 :goto_1

    .line 1350
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p4

    if-eqz p3, :cond_1

    .line 1352
    move-object p3, p1

    check-cast p3, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1354
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getMeasuredContentRect(Landroid/graphics/Rect;)V

    iget-object p4, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1356
    invoke-static {p4}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    .line 1359
    invoke-virtual {p2, p4}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabDiameter(I)Z

    .line 1363
    invoke-virtual {p3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getShapeAppearanceModel()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p3

    .line 1364
    invoke-virtual {p3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->getTopLeftCornerSize()Lcom/google/android/material/shape/CornerSize;

    move-result-object p3

    new-instance p5, Landroid/graphics/RectF;

    iget-object p6, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1365
    invoke-static {p6}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2600(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)Landroid/graphics/Rect;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-interface {p3, p5}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result p3

    .line 1367
    invoke-virtual {p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setFabCornerSize(F)V

    .line 1371
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior$1;->this$0:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 1375
    invoke-static {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->access$2700(Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;)I

    move-result p0

    if-nez p0, :cond_4

    .line 1378
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$400(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p0

    const/4 p5, 0x1

    if-ne p0, p5, :cond_2

    .line 1379
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    sub-int/2addr p0, p4

    div-int/lit8 p0, p0, 0x2

    .line 1382
    invoke-virtual {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget p5, Lcom/google/android/material/R$dimen;->mtrl_bottomappbar_fab_bottom_margin:I

    .line 1383
    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p4

    sub-int/2addr p4, p0

    .line 1386
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2800(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p0

    add-int/2addr p0, p4

    iput p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    .line 1388
    :cond_2
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$2900(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p0

    iput p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    .line 1389
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3000(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p0

    iput p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 1390
    invoke-static {p1}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 1392
    iget p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1394
    :cond_3
    iget p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$3100(Lcom/google/android/material/bottomappbar/BottomAppBar;)I

    move-result p1

    add-int/2addr p0, p1

    iput p0, p3, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    .line 1397
    :cond_4
    :goto_0
    invoke-static {p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->access$1400(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    return-void

    .line 1346
    :cond_5
    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
