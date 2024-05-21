.class Lio/flutter/embedding/android/FlutterFragment$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "FlutterFragment.java"


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
.method constructor <init>(Lio/flutter/embedding/android/FlutterFragment;Z)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterFragment$2;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    .line 1019
    invoke-direct {p0, p2}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public handleOnBackPressed()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterFragment$2;->this$0:Lio/flutter/embedding/android/FlutterFragment;

    .line 1022
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterFragment;->onBackPressed()V

    return-void
.end method
