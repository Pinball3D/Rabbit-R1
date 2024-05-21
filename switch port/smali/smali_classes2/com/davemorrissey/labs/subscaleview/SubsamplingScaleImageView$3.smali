.class Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$3;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SubsamplingScaleImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->setGestureDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$3;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 600
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView$3;->this$0:Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;

    .line 603
    invoke-virtual {p0}, Lcom/davemorrissey/labs/subscaleview/SubsamplingScaleImageView;->performClick()Z

    const/4 p0, 0x1

    return p0
.end method
