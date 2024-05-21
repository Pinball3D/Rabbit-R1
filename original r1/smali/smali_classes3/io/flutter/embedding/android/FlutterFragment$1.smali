.class Lio/flutter/embedding/android/FlutterFragment$1;
.super Ljava/lang/Object;
.source "FlutterFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterFragment;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterFragment;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$1;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 2

    iget-object v0, p0, Lio/flutter/embedding/android/FlutterFragment$1;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    const-string v1, "onWindowFocusChanged"

    .line 179
    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterFragment;->access$000(Lio/flutter/embedding/android/FlutterFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment$1;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    .line 180
    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment;->delegate:Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;

    invoke-virtual {p0, p1}, Lio/flutter/embedding/android/FlutterActivityAndFragmentDelegate;->onWindowFocusChanged(Z)V

    :cond_0
    return-void
.end method
