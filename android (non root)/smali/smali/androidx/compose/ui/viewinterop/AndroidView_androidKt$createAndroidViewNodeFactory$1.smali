.class final Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidView.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->createAndroidViewNodeFactory(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroidx/compose/ui/node/LayoutNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/ui/node/LayoutNode;",
        "T",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $compositeKeyHash:I

.field final synthetic $context:Landroid/content/Context;

.field final synthetic $factory:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroid/content/Context;",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $parentReference:Landroidx/compose/runtime/CompositionContext;

.field final synthetic $stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;


# direct methods
.method constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/content/Context;",
            "+TT;>;",
            "Landroidx/compose/runtime/CompositionContext;",
            "Landroidx/compose/runtime/saveable/SaveableStateRegistry;",
            "I)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$factory:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$parentReference:Landroidx/compose/runtime/CompositionContext;

    iput-object p4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iput p5, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$compositeKeyHash:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroidx/compose/ui/node/LayoutNode;
    .locals 7

    .line 271
    new-instance v6, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$factory:Lkotlin/jvm/functions/Function1;

    iget-object v3, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$parentReference:Landroidx/compose/runtime/CompositionContext;

    iget-object v4, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$stateRegistry:Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    iget v5, p0, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->$compositeKeyHash:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/CompositionContext;Landroidx/compose/runtime/saveable/SaveableStateRegistry;I)V

    .line 277
    invoke-virtual {v6}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 270
    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$createAndroidViewNodeFactory$1;->invoke()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    return-object p0
.end method
