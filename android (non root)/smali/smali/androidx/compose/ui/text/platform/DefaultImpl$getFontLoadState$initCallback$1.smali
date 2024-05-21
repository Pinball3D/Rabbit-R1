.class public final Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;
.super Landroidx/emoji2/text/EmojiCompat$InitCallback;
.source "EmojiCompatStatus.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/text/platform/DefaultImpl;->getFontLoadState()Landroidx/compose/runtime/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "androidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1",
        "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
        "onFailed",
        "",
        "throwable",
        "",
        "onInitialized",
        "ui-text_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $mutableLoaded:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/text/platform/DefaultImpl;


# direct methods
.method constructor <init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/text/platform/DefaultImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/ui/text/platform/DefaultImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;->$mutableLoaded:Landroidx/compose/runtime/MutableState;

    iput-object p2, p0, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;->this$0:Landroidx/compose/ui/text/platform/DefaultImpl;

    .line 96
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$InitCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/Throwable;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;->this$0:Landroidx/compose/ui/text/platform/DefaultImpl;

    .line 103
    invoke-static {}, Landroidx/compose/ui/text/platform/EmojiCompatStatusKt;->access$getFalsey$p()Landroidx/compose/ui/text/platform/ImmutableBool;

    move-result-object p1

    check-cast p1, Landroidx/compose/runtime/State;

    invoke-static {p0, p1}, Landroidx/compose/ui/text/platform/DefaultImpl;->access$setLoadState$p(Landroidx/compose/ui/text/platform/DefaultImpl;Landroidx/compose/runtime/State;)V

    return-void
.end method

.method public onInitialized()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;->$mutableLoaded:Landroidx/compose/runtime/MutableState;

    const/4 v1, 0x1

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Landroidx/compose/ui/text/platform/DefaultImpl$getFontLoadState$initCallback$1;->this$0:Landroidx/compose/ui/text/platform/DefaultImpl;

    .line 99
    new-instance v0, Landroidx/compose/ui/text/platform/ImmutableBool;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/platform/ImmutableBool;-><init>(Z)V

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-static {p0, v0}, Landroidx/compose/ui/text/platform/DefaultImpl;->access$setLoadState$p(Landroidx/compose/ui/text/platform/DefaultImpl;Landroidx/compose/runtime/State;)V

    return-void
.end method
