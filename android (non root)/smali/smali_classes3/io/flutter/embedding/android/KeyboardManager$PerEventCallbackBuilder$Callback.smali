.class Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;
.super Ljava/lang/Object;
.source "KeyboardManager.java"

# interfaces
.implements Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field isCalled:Z

.field final synthetic this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->isCalled:Z

    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;Lio/flutter/embedding/android/KeyboardManager$1;)V
    .locals 0

    .line 184
    invoke-direct {p0, p1}, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;-><init>(Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;)V

    return-void
.end method


# virtual methods
.method public onKeyEventHandled(Z)V
    .locals 3

    iget-boolean v0, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->isCalled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->isCalled:Z

    iget-object v1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    .line 194
    iget v2, v1, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->unrepliedCount:I

    sub-int/2addr v2, v0

    iput v2, v1, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->unrepliedCount:I

    iget-object v0, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    .line 195
    iget-boolean v1, v0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->isEventHandled:Z

    or-int/2addr p1, v1

    iput-boolean p1, v0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->isEventHandled:Z

    iget-object p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    .line 196
    iget p1, p1, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->unrepliedCount:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    iget-boolean p1, p1, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->isEventHandled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    .line 197
    iget-object p1, p1, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->this$0:Lio/flutter/embedding/android/KeyboardManager;

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;->this$1:Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;

    iget-object p0, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->keyEvent:Landroid/view/KeyEvent;

    invoke-static {p1, p0}, Lio/flutter/embedding/android/KeyboardManager;->access$000(Lio/flutter/embedding/android/KeyboardManager;Landroid/view/KeyEvent;)V

    :cond_0
    return-void

    .line 190
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The onKeyEventHandledCallback should be called exactly once."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
