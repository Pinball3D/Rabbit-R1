.class public final Landroidx/compose/ui/graphics/AndroidPaint;
.super Ljava/lang/Object;
.source "AndroidPaint.android.kt"

# interfaces
.implements Landroidx/compose/ui/graphics/Paint;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u000c\u0010K\u001a\u00060\u0004j\u0002`LH\u0016R\u0019\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u0004\n\u0002\u0010\u0008R$\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR-\u0010\u0010\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00078V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R-\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u00168V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR(\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0008\u0010\t\u001a\u0004\u0018\u00010\u001b8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R-\u0010\"\u001a\u00020!2\u0006\u0010\t\u001a\u00020!8V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008#\u0010\u0012\"\u0004\u0008$\u0010\u0014R\u0010\u0010%\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010&\u001a\n\u0018\u00010\'j\u0004\u0018\u0001`(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010*\u001a\u00020)2\u0006\u0010\t\u001a\u00020)8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R(\u0010/\u001a\u0004\u0018\u00010.2\u0008\u0010\t\u001a\u0004\u0018\u00010.@VX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R4\u00104\u001a\n\u0018\u00010\'j\u0004\u0018\u0001`(2\u000e\u0010\t\u001a\n\u0018\u00010\'j\u0004\u0018\u0001`(8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R-\u0010:\u001a\u0002092\u0006\u0010\t\u001a\u0002098V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010\u0012\"\u0004\u0008<\u0010\u0014R-\u0010>\u001a\u00020=2\u0006\u0010\t\u001a\u00020=8V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008?\u0010\u0012\"\u0004\u0008@\u0010\u0014R$\u0010A\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008B\u0010\r\"\u0004\u0008C\u0010\u000fR$\u0010D\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008E\u0010\r\"\u0004\u0008F\u0010\u000fR-\u0010H\u001a\u00020G2\u0006\u0010\t\u001a\u00020G8V@VX\u0096\u000e\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\u000c\u001a\u0004\u0008I\u0010\u0012\"\u0004\u0008J\u0010\u0014\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006M"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/AndroidPaint;",
        "Landroidx/compose/ui/graphics/Paint;",
        "()V",
        "internalPaint",
        "Landroid/graphics/Paint;",
        "(Landroid/graphics/Paint;)V",
        "_blendMode",
        "Landroidx/compose/ui/graphics/BlendMode;",
        "I",
        "value",
        "",
        "alpha",
        "getAlpha",
        "()F",
        "setAlpha",
        "(F)V",
        "blendMode",
        "getBlendMode-0nO6VwU",
        "()I",
        "setBlendMode-s9anfk8",
        "(I)V",
        "color",
        "Landroidx/compose/ui/graphics/Color;",
        "getColor-0d7_KjU",
        "()J",
        "setColor-8_81llA",
        "(J)V",
        "Landroidx/compose/ui/graphics/ColorFilter;",
        "colorFilter",
        "getColorFilter",
        "()Landroidx/compose/ui/graphics/ColorFilter;",
        "setColorFilter",
        "(Landroidx/compose/ui/graphics/ColorFilter;)V",
        "Landroidx/compose/ui/graphics/FilterQuality;",
        "filterQuality",
        "getFilterQuality-f-v9h1I",
        "setFilterQuality-vDHp3xo",
        "internalColorFilter",
        "internalShader",
        "Landroid/graphics/Shader;",
        "Landroidx/compose/ui/graphics/Shader;",
        "",
        "isAntiAlias",
        "()Z",
        "setAntiAlias",
        "(Z)V",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "pathEffect",
        "getPathEffect",
        "()Landroidx/compose/ui/graphics/PathEffect;",
        "setPathEffect",
        "(Landroidx/compose/ui/graphics/PathEffect;)V",
        "shader",
        "getShader",
        "()Landroid/graphics/Shader;",
        "setShader",
        "(Landroid/graphics/Shader;)V",
        "Landroidx/compose/ui/graphics/StrokeCap;",
        "strokeCap",
        "getStrokeCap-KaPHkGw",
        "setStrokeCap-BeK7IIE",
        "Landroidx/compose/ui/graphics/StrokeJoin;",
        "strokeJoin",
        "getStrokeJoin-LxFBmk8",
        "setStrokeJoin-Ww9F2mQ",
        "strokeMiterLimit",
        "getStrokeMiterLimit",
        "setStrokeMiterLimit",
        "strokeWidth",
        "getStrokeWidth",
        "setStrokeWidth",
        "Landroidx/compose/ui/graphics/PaintingStyle;",
        "style",
        "getStyle-TiuSbCo",
        "setStyle-k9PVt8s",
        "asFrameworkPaint",
        "Landroidx/compose/ui/graphics/NativePaint;",
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
.field private _blendMode:I

.field private internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

.field private internalPaint:Landroid/graphics/Paint;

.field private internalShader:Landroid/graphics/Shader;

.field private pathEffect:Landroidx/compose/ui/graphics/PathEffect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-static {}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->makeNativePaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/compose/ui/graphics/AndroidPaint;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1

    const-string v0, "internalPaint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 45
    sget-object p1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcOver-0nO6VwU()I

    move-result p1

    iput p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    return-void
.end method


# virtual methods
.method public asFrameworkPaint()Landroid/graphics/Paint;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public getAlpha()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 52
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeAlpha(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public getBlendMode-0nO6VwU()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    return p0
.end method

.method public getColor-0d7_KjU()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 64
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeColor(Landroid/graphics/Paint;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorFilter()Landroidx/compose/ui/graphics/ColorFilter;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    return-object p0
.end method

.method public getFilterQuality-f-v9h1I()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 110
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeFilterQuality(Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public getPathEffect()Landroidx/compose/ui/graphics/PathEffect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    return-object p0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Landroid/graphics/Shader;

    return-object p0
.end method

.method public getStrokeCap-KaPHkGw()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 91
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeCap(Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public getStrokeJoin-LxFBmk8()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 97
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeJoin(Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public getStrokeMiterLimit()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 103
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeMiterLimit(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public getStrokeWidth()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 85
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStrokeWidth(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public getStyle-TiuSbCo()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 79
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeStyle(Landroid/graphics/Paint;)I

    move-result p0

    return p0
.end method

.method public isAntiAlias()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->getNativeAntiAlias(Landroid/graphics/Paint;)Z

    move-result p0

    return p0
.end method

.method public setAlpha(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 54
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeAlpha(Landroid/graphics/Paint;F)V

    return-void
.end method

.method public setAntiAlias(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 60
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeAntiAlias(Landroid/graphics/Paint;Z)V

    return-void
.end method

.method public setBlendMode-s9anfk8(I)V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    .line 72
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-nez v0, :cond_0

    iput p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->_blendMode:I

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 74
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeBlendMode-GB0RdKg(Landroid/graphics/Paint;I)V

    :cond_0
    return-void
.end method

.method public setColor-8_81llA(J)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 66
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeColor-4WTKRHQ(Landroid/graphics/Paint;J)V

    return-void
.end method

.method public setColorFilter(Landroidx/compose/ui/graphics/ColorFilter;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalColorFilter:Landroidx/compose/ui/graphics/ColorFilter;

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 126
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeColorFilter(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/ColorFilter;)V

    return-void
.end method

.method public setFilterQuality-vDHp3xo(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 112
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeFilterQuality-50PEsBU(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public setPathEffect(Landroidx/compose/ui/graphics/PathEffect;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 131
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativePathEffect(Landroid/graphics/Paint;Landroidx/compose/ui/graphics/PathEffect;)V

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->pathEffect:Landroidx/compose/ui/graphics/PathEffect;

    return-void
.end method

.method public setShader(Landroid/graphics/Shader;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalShader:Landroid/graphics/Shader;

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 119
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeShader(Landroid/graphics/Paint;Landroid/graphics/Shader;)V

    return-void
.end method

.method public setStrokeCap-BeK7IIE(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 93
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeCap-CSYIeUk(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public setStrokeJoin-Ww9F2mQ(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 99
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeJoin-kLtJ_vA(Landroid/graphics/Paint;I)V

    return-void
.end method

.method public setStrokeMiterLimit(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 105
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeMiterLimit(Landroid/graphics/Paint;F)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 87
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStrokeWidth(Landroid/graphics/Paint;F)V

    return-void
.end method

.method public setStyle-k9PVt8s(I)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/graphics/AndroidPaint;->internalPaint:Landroid/graphics/Paint;

    .line 81
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/AndroidPaint_androidKt;->setNativeStyle--5YerkU(Landroid/graphics/Paint;I)V

    return-void
.end method
