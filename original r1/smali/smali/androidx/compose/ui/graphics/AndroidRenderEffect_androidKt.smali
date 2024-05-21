.class public final Landroidx/compose/ui/graphics/AndroidRenderEffect_androidKt;
.super Ljava/lang/Object;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "asComposeRenderEffect",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "Landroid/graphics/RenderEffect;",
        "ui-graphics_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final asComposeRenderEffect(Landroid/graphics/RenderEffect;)Landroidx/compose/ui/graphics/RenderEffect;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroidx/compose/ui/graphics/AndroidRenderEffect;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidRenderEffect;-><init>(Landroid/graphics/RenderEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/RenderEffect;

    return-object v0
.end method
