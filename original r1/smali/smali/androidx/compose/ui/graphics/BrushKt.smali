.class public final Landroidx/compose/ui/graphics/BrushKt;
.super Ljava/lang/Object;
.source "Brush.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\u00020\u00012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "ShaderBrush",
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "shader",
        "Landroid/graphics/Shader;",
        "Landroidx/compose/ui/graphics/Shader;",
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
.method public static final ShaderBrush(Landroid/graphics/Shader;)Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 1

    const-string/jumbo v0, "shader"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    new-instance v0, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    check-cast v0, Landroidx/compose/ui/graphics/ShaderBrush;

    return-object v0
.end method
