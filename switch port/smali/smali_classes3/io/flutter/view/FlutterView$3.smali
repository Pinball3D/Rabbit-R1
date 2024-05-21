.class Lio/flutter/view/FlutterView$3;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/plugin/common/ActivityLifecycleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/view/FlutterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lio/flutter/view/FlutterNativeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/view/FlutterView;

.field final synthetic val$platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;


# direct methods
.method constructor <init>(Lio/flutter/view/FlutterView;Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/view/FlutterView$3;->this$0:Lio/flutter/view/FlutterView;

    iput-object p2, p0, Lio/flutter/view/FlutterView$3;->val$platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostResume()V
    .locals 0

    iget-object p0, p0, Lio/flutter/view/FlutterView$3;->val$platformPlugin:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 228
    invoke-virtual {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->updateSystemUiOverlays()V

    return-void
.end method
