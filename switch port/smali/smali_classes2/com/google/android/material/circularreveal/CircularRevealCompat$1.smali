.class Lcom/google/android/material/circularreveal/CircularRevealCompat$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/circularreveal/CircularRevealCompat;->createCircularRevealListener(Lcom/google/android/material/circularreveal/CircularRevealWidget;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$view:Lcom/google/android/material/circularreveal/CircularRevealWidget;


# direct methods
.method constructor <init>(Lcom/google/android/material/circularreveal/CircularRevealWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 123
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 131
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->destroyCircularRevealCache()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/circularreveal/CircularRevealCompat$1;->val$view:Lcom/google/android/material/circularreveal/CircularRevealWidget;

    .line 126
    invoke-interface {p0}, Lcom/google/android/material/circularreveal/CircularRevealWidget;->buildCircularRevealCache()V

    return-void
.end method
