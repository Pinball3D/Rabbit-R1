.class public final Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;
.super Landroid/text/style/CharacterStyle;
.source "ShaderBrushSpan.android.kt"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShaderBrushSpan.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShaderBrushSpan.android.kt\nandroidx/compose/ui/text/platform/style/ShaderBrushSpan\n+ 2 Size.kt\nandroidx/compose/ui/geometry/SizeKt\n*L\n1#1,57:1\n159#2:58\n*S KotlinDebug\n*F\n+ 1 ShaderBrushSpan.android.kt\nandroidx/compose/ui/text/platform/style/ShaderBrushSpan\n*L\n41#1:58\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001f\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0004\u0012\u00020\r\u0018\u00010\u000bX\u0082\u000e\u00f8\u0001\u0000\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR%\u0010\u0010\u001a\u00020\u000cX\u0086\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0010\n\u0002\u0010\u0015\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;",
        "Landroid/text/style/CharacterStyle;",
        "Landroid/text/style/UpdateAppearance;",
        "shaderBrush",
        "Landroidx/compose/ui/graphics/ShaderBrush;",
        "alpha",
        "",
        "(Landroidx/compose/ui/graphics/ShaderBrush;F)V",
        "getAlpha",
        "()F",
        "cachedShader",
        "Lkotlin/Pair;",
        "Landroidx/compose/ui/geometry/Size;",
        "Landroid/graphics/Shader;",
        "getShaderBrush",
        "()Landroidx/compose/ui/graphics/ShaderBrush;",
        "size",
        "getSize-NH-jbRc",
        "()J",
        "setSize-uvyYCjk",
        "(J)V",
        "J",
        "updateDrawState",
        "",
        "textPaint",
        "Landroid/text/TextPaint;",
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
.field private final alpha:F

.field private cachedShader:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroidx/compose/ui/geometry/Size;",
            "+",
            "Landroid/graphics/Shader;",
            ">;"
        }
    .end annotation
.end field

.field private final shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

.field private size:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V
    .locals 1

    const-string/jumbo v0, "shaderBrush"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iput p2, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->alpha:F

    .line 35
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    return-void
.end method


# virtual methods
.method public final getAlpha()F
    .locals 0

    iget p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->alpha:F

    return p0
.end method

.method public final getShaderBrush()Landroidx/compose/ui/graphics/ShaderBrush;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    return-object p0
.end method

.method public final getSize-NH-jbRc()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    return-wide v0
.end method

.method public final setSize-uvyYCjk(J)V
    .locals 0

    iput-wide p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5

    const-string/jumbo v0, "textPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->alpha:F

    .line 39
    invoke-static {p1, v0}, Landroidx/compose/ui/text/platform/AndroidTextPaint_androidKt;->setAlpha(Landroid/text/TextPaint;F)V

    iget-wide v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    .line 58
    sget-object v2, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Size$Companion;->getUnspecified-NH-jbRc()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->cachedShader:Lkotlin/Pair;

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Shader;

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->shaderBrush:Landroidx/compose/ui/graphics/ShaderBrush;

    iget-wide v1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    .line 47
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/graphics/ShaderBrush;->createShader-uvyYCjk(J)Landroid/graphics/Shader;

    move-result-object v0

    .line 53
    :goto_1
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-wide v1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->size:J

    .line 54
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;->cachedShader:Lkotlin/Pair;

    return-void
.end method
