.class Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;
.super Ljava/lang/Object;
.source "FlutterActivityAndFragmentDelegate.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->delayFirstAndroidViewDraw(Lio/flutter/embedding/android/FlutterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

.field final synthetic val$flutterView:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;Lio/flutter/embedding/android/FlutterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    iput-object p2, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->val$flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 541
    invoke-static {v0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->access$100(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    iget-object v0, v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->val$flutterView:Lio/flutter/embedding/android/FlutterView;

    .line 542
    invoke-virtual {v0}, Lio/flutter/embedding/android/FlutterView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    const/4 v1, 0x0

    .line 543
    iput-object v1, v0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->activePreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate$2;->this$0:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    .line 545
    invoke-static {p0}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->access$100(Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;)Z

    move-result p0

    return p0
.end method
