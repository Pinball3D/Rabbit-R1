.class Lio/flutter/plugin/editing/TextInputPlugin$2;
.super Ljava/lang/Object;
.source "TextInputPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextInputMethodHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/TextInputPlugin;-><init>(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel;Lio/flutter/plugin/platform/PlatformViewsController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/TextInputPlugin;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/TextInputPlugin;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClient()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 154
    invoke-virtual {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->clearTextInputClient()V

    return-void
.end method

.method public finishAutofillContext(Z)V
    .locals 1

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 121
    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 125
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->commit()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 127
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$500(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/autofill/AutofillManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/autofill/AutofillManager;->cancel()V

    :goto_0
    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 107
    invoke-static {v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$100(Lio/flutter/plugin/editing/TextInputPlugin;)Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;

    move-result-object v0

    iget-object v0, v0, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget;->type:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    sget-object v1, Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;->PHYSICAL_DISPLAY_PLATFORM_VIEW:Lio/flutter/plugin/editing/TextInputPlugin$InputTarget$Type;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 108
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$200(Lio/flutter/plugin/editing/TextInputPlugin;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 110
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$300(Lio/flutter/plugin/editing/TextInputPlugin;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public requestAutofill()V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 116
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$400(Lio/flutter/plugin/editing/TextInputPlugin;)V

    return-void
.end method

.method public sendAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 159
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->sendTextInputAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public setClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 134
    invoke-virtual {p0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputClient(ILio/flutter/embedding/engine/systemchannels/TextInputChannel$Configuration;)V

    return-void
.end method

.method public setEditableSizeAndTransform(DD[D)V
    .locals 6

    iget-object v0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    .line 149
    invoke-static/range {v0 .. v5}, Lio/flutter/plugin/editing/TextInputPlugin;->access$700(Lio/flutter/plugin/editing/TextInputPlugin;DD[D)V

    return-void
.end method

.method public setEditingState(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 144
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/flutter/plugin/editing/TextInputPlugin;->setTextInputEditingState(Landroid/view/View;Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;)V

    return-void
.end method

.method public setPlatformViewClient(IZ)V
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 139
    invoke-static {p0, p1, p2}, Lio/flutter/plugin/editing/TextInputPlugin;->access$600(Lio/flutter/plugin/editing/TextInputPlugin;IZ)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object p0, p0, Lio/flutter/plugin/editing/TextInputPlugin$2;->this$0:Lio/flutter/plugin/editing/TextInputPlugin;

    .line 102
    invoke-static {p0}, Lio/flutter/plugin/editing/TextInputPlugin;->access$000(Lio/flutter/plugin/editing/TextInputPlugin;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/flutter/plugin/editing/TextInputPlugin;->showTextInput(Landroid/view/View;)V

    return-void
.end method
