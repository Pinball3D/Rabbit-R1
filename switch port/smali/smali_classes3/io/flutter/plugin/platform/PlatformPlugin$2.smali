.class Lio/flutter/plugin/platform/PlatformPlugin$2;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/PlatformPlugin;->setSystemChromeChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformPlugin;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformPlugin;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin$2;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformPlugin$2;->val$decorView:Landroid/view/View;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onSystemUiVisibilityChange$0$io-flutter-plugin-platform-PlatformPlugin$2(I)V
    .locals 0

    .line 0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$2;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 265
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1400(Lio/flutter/plugin/platform/PlatformPlugin;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->systemChromeChanged(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$2;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 270
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1400(Lio/flutter/plugin/platform/PlatformPlugin;)Lio/flutter/embedding/engine/systemchannels/PlatformChannel;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformChannel;->systemChromeChanged(Z)V

    :goto_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformPlugin$2;->val$decorView:Landroid/view/View;

    .line 257
    new-instance v1, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin$2$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/platform/PlatformPlugin$2;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
