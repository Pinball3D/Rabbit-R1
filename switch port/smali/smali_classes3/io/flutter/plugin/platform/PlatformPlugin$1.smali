.class Lio/flutter/plugin/platform/PlatformPlugin$1;
.super Ljava/lang/Object;
.source "PlatformPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformChannel$PlatformMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformPlugin;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clipboardHasStrings()Z
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 148
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1200(Lio/flutter/plugin/platform/PlatformPlugin;)Z

    move-result p0

    return p0
.end method

.method public getClipboardData(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 138
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$ClipboardContentFormat;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public playSystemSound(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 79
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$000(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SoundType;)V

    return-void
.end method

.method public popSystemNavigator()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 132
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$900(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public restoreSystemUiOverlays()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 116
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$600(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public setApplicationSwitcherDescription(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 96
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$200(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$AppSwitcherDescription;)V

    return-void
.end method

.method public setClipboardData(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 143
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1100(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V

    return-void
.end method

.method public setFrameworkHandlesBack(Z)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 127
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$800(Lio/flutter/plugin/platform/PlatformPlugin;Z)V

    return-void
.end method

.method public setPreferredOrientations(I)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 90
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$100(Lio/flutter/plugin/platform/PlatformPlugin;I)V

    return-void
.end method

.method public setSystemUiChangeListener()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 111
    invoke-static {p0}, Lio/flutter/plugin/platform/PlatformPlugin;->access$500(Lio/flutter/plugin/platform/PlatformPlugin;)V

    return-void
.end method

.method public setSystemUiOverlayStyle(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 122
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$700(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemChromeStyle;)V

    return-void
.end method

.method public share(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 153
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$1300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/lang/String;)V

    return-void
.end method

.method public showSystemOverlays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiOverlay;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 101
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$300(Lio/flutter/plugin/platform/PlatformPlugin;Ljava/util/List;)V

    return-void
.end method

.method public showSystemUiMode(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 106
    invoke-static {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->access$400(Lio/flutter/plugin/platform/PlatformPlugin;Lio/flutter/embedding/engine/systemchannels/PlatformChannel$SystemUiMode;)V

    return-void
.end method

.method public vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/platform/PlatformPlugin$1;->this$0:Lio/flutter/plugin/platform/PlatformPlugin;

    .line 85
    invoke-virtual {p0, p1}, Lio/flutter/plugin/platform/PlatformPlugin;->vibrateHapticFeedback(Lio/flutter/embedding/engine/systemchannels/PlatformChannel$HapticFeedbackType;)V

    return-void
.end method
