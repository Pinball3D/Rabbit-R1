.class Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;
.super Ljava/lang/Object;
.source "FlutterMutatorView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->setOnDescendantFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

.field final synthetic val$mutatorView:Landroid/view/View;

.field final synthetic val$userFocusListener:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;Landroid/view/View$OnFocusChangeListener;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;->this$0:Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    iput-object p2, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;->val$userFocusListener:Landroid/view/View$OnFocusChangeListener;

    iput-object p3, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;->val$mutatorView:Landroid/view/View;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;->val$userFocusListener:Landroid/view/View$OnFocusChangeListener;

    iget-object p0, p0, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView$1;->val$mutatorView:Landroid/view/View;

    .line 76
    invoke-static {p0}, Lio/flutter/util/ViewUtils;->childHasFocus(Landroid/view/View;)Z

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method
