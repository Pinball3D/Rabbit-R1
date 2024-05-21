.class public final Landroidx/compose/animation/core/VectorizedFloatAnimationSpec$1;
.super Ljava/lang/Object;
.source "VectorizedAnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/Animations;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/animation/core/VectorizedFloatAnimationSpec;-><init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0011\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0096\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "androidx/compose/animation/core/VectorizedFloatAnimationSpec$1",
        "Landroidx/compose/animation/core/Animations;",
        "get",
        "Landroidx/compose/animation/core/FloatAnimationSpec;",
        "index",
        "",
        "animation-core_release"
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
.field final synthetic $anim:Landroidx/compose/animation/core/FloatAnimationSpec;


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/FloatAnimationSpec;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec$1;->$anim:Landroidx/compose/animation/core/FloatAnimationSpec;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Landroidx/compose/animation/core/FloatAnimationSpec;
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/core/VectorizedFloatAnimationSpec$1;->$anim:Landroidx/compose/animation/core/FloatAnimationSpec;

    return-object p0
.end method
