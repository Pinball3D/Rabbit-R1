.class public final Landroidx/compose/ui/graphics/AndroidRenderEffect;
.super Landroidx/compose/ui/graphics/RenderEffect;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0014R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/AndroidRenderEffect;",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "androidRenderEffect",
        "Landroid/graphics/RenderEffect;",
        "(Landroid/graphics/RenderEffect;)V",
        "getAndroidRenderEffect",
        "()Landroid/graphics/RenderEffect;",
        "createRenderEffect",
        "ui-graphics_release"
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
.field private final androidRenderEffect:Landroid/graphics/RenderEffect;


# direct methods
.method public constructor <init>(Landroid/graphics/RenderEffect;)V
    .locals 1

    const-string v0, "androidRenderEffect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/RenderEffect;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    return-void
.end method


# virtual methods
.method protected createRenderEffect()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    return-object p0
.end method

.method public final getAndroidRenderEffect()Landroid/graphics/RenderEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidRenderEffect;->androidRenderEffect:Landroid/graphics/RenderEffect;

    return-object p0
.end method
