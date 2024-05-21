.class Lio/flutter/view/FlutterView$1;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/view/AccessibilityBridge$OnAccessibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/view/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/view/FlutterView$1;->this$0:Lio/flutter/view/FlutterView;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityChanged(ZZ)V
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterView$1;->this$0:Lio/flutter/view/FlutterView;

    .line 152
    invoke-static {p0, p1, p2}, Lio/flutter/view/FlutterView;->access$000(Lio/flutter/view/FlutterView;ZZ)V

    return-void
.end method
