.class Lio/flutter/plugin/editing/ListenableEditingState$1;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "ListenableEditingState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/editing/ListenableEditingState;-><init>(Lio/flutter/embedding/engine/systemchannels/TextInputChannel$TextEditState;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/editing/ListenableEditingState;

.field final synthetic val$self:Landroid/text/Editable;


# direct methods
.method constructor <init>(Lio/flutter/plugin/editing/ListenableEditingState;Landroid/view/View;ZLandroid/text/Editable;)V
    .locals 0

    iput-object p1, p0, Lio/flutter/plugin/editing/ListenableEditingState$1;->this$0:Lio/flutter/plugin/editing/ListenableEditingState;

    iput-object p4, p0, Lio/flutter/plugin/editing/ListenableEditingState$1;->val$self:Landroid/text/Editable;

    .line 66
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public getEditable()Landroid/text/Editable;
    .locals 0

    iget-object p0, p0, Lio/flutter/plugin/editing/ListenableEditingState$1;->val$self:Landroid/text/Editable;

    return-object p0
.end method
