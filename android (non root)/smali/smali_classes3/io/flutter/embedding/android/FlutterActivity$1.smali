.class Lio/flutter/embedding/android/FlutterActivity$1;
.super Ljava/lang/Object;
.source "FlutterActivity.java"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterActivity;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterActivity;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/FlutterActivity$1;->this$0:Lio/flutter/embedding/android/FlutterActivity;

    .line 682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lio/flutter/embedding/android/FlutterActivity$1;->this$0:Lio/flutter/embedding/android/FlutterActivity;

    .line 689
    invoke-virtual {p0}, Lio/flutter/embedding/android/FlutterActivity;->onBackPressed()V

    return-void
.end method
