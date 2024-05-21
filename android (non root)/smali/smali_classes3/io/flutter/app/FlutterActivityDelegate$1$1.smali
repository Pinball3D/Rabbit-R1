.class Lio/flutter/app/FlutterActivityDelegate$1$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlutterActivityDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/app/FlutterActivityDelegate$1;->onFirstFrame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/flutter/app/FlutterActivityDelegate$1;


# direct methods
.method constructor <init>(Lio/flutter/app/FlutterActivityDelegate$1;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$1$1;->this$1:Lio/flutter/app/FlutterActivityDelegate$1;

    .line 476
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lio/flutter/app/FlutterActivityDelegate$1$1;->this$1:Lio/flutter/app/FlutterActivityDelegate$1;

    .line 481
    iget-object p1, p1, Lio/flutter/app/FlutterActivityDelegate$1;->this$0:Lio/flutter/app/FlutterActivityDelegate;

    invoke-static {p1}, Lio/flutter/app/FlutterActivityDelegate;->access$000(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lio/flutter/app/FlutterActivityDelegate$1$1;->this$1:Lio/flutter/app/FlutterActivityDelegate$1;

    iget-object v0, v0, Lio/flutter/app/FlutterActivityDelegate$1;->this$0:Lio/flutter/app/FlutterActivityDelegate;

    .line 482
    invoke-static {v0}, Lio/flutter/app/FlutterActivityDelegate;->access$000(Lio/flutter/app/FlutterActivityDelegate;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lio/flutter/app/FlutterActivityDelegate$1$1;->this$1:Lio/flutter/app/FlutterActivityDelegate$1;

    .line 483
    iget-object p0, p0, Lio/flutter/app/FlutterActivityDelegate$1;->this$0:Lio/flutter/app/FlutterActivityDelegate;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lio/flutter/app/FlutterActivityDelegate;->access$002(Lio/flutter/app/FlutterActivityDelegate;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
