.class Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;
.super Ljava/lang/Object;
.source "KeyboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/KeyboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerEventCallbackBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;
    }
.end annotation


# instance fields
.field isEventHandled:Z

.field final keyEvent:Landroid/view/KeyEvent;

.field final synthetic this$0:Lio/flutter/embedding/android/KeyboardManager;

.field unrepliedCount:I


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/KeyboardManager;Landroid/view/KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->this$0:Lio/flutter/embedding/android/KeyboardManager;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    iget-object p1, p1, Lio/flutter/embedding/android/KeyboardManager;->responders:[Lio/flutter/embedding/android/KeyboardManager$Responder;

    array-length p1, p1

    iput p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->unrepliedCount:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->isEventHandled:Z

    iput-object p2, p0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;->keyEvent:Landroid/view/KeyEvent;

    return-void
.end method


# virtual methods
.method public buildCallback()Lio/flutter/embedding/android/KeyboardManager$Responder$OnKeyEventHandledCallback;
    .locals 2

    .line 211
    new-instance v0, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder$Callback;-><init>(Lio/flutter/embedding/android/KeyboardManager$PerEventCallbackBuilder;Lio/flutter/embedding/android/KeyboardManager$1;)V

    return-object v0
.end method
