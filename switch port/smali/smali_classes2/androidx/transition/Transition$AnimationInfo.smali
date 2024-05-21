.class Landroidx/transition/Transition$AnimationInfo;
.super Ljava/lang/Object;
.source "Transition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/Transition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field mName:Ljava/lang/String;

.field mTransition:Landroidx/transition/Transition;

.field mValues:Landroidx/transition/TransitionValues;

.field mView:Landroid/view/View;

.field mWindowId:Landroidx/transition/WindowIdImpl;


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/String;Landroidx/transition/Transition;Landroidx/transition/WindowIdImpl;Landroidx/transition/TransitionValues;)V
    .locals 0

    .line 2350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/transition/Transition$AnimationInfo;->mView:Landroid/view/View;

    iput-object p2, p0, Landroidx/transition/Transition$AnimationInfo;->mName:Ljava/lang/String;

    iput-object p5, p0, Landroidx/transition/Transition$AnimationInfo;->mValues:Landroidx/transition/TransitionValues;

    iput-object p4, p0, Landroidx/transition/Transition$AnimationInfo;->mWindowId:Landroidx/transition/WindowIdImpl;

    iput-object p3, p0, Landroidx/transition/Transition$AnimationInfo;->mTransition:Landroidx/transition/Transition;

    return-void
.end method
