.class public final Landroidx/compose/ui/graphics/AndroidPathEffect_androidKt;
.super Ljava/lang/Object;
.source "AndroidPathEffect.android.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAndroidPathEffect.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidPathEffect.android.kt\nandroidx/compose/ui/graphics/AndroidPathEffect_androidKt\n+ 2 AndroidPath.android.kt\nandroidx/compose/ui/graphics/AndroidPath_androidKt\n*L\n1#1,66:1\n35#2,5:67\n*S KotlinDebug\n*F\n+ 1 AndroidPathEffect.android.kt\nandroidx/compose/ui/graphics/AndroidPathEffect_androidKt\n*L\n53#1:67,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001H\u0000\u001a\u0010\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0006H\u0000\u001a\u0018\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0006H\u0000\u001a5\u0010\u000b\u001a\u00020\u00012\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u001a\n\u0010\u0013\u001a\u00020\u0014*\u00020\u0001\u001a\u0019\u0010\u0015\u001a\u00020\u0016*\u00020\u0010H\u0000\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u001a\n\u0010\u0019\u001a\u00020\u0001*\u00020\u0014\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "actualChainPathEffect",
        "Landroidx/compose/ui/graphics/PathEffect;",
        "outer",
        "inner",
        "actualCornerPathEffect",
        "radius",
        "",
        "actualDashPathEffect",
        "intervals",
        "",
        "phase",
        "actualStampedPathEffect",
        "shape",
        "Landroidx/compose/ui/graphics/Path;",
        "advance",
        "style",
        "Landroidx/compose/ui/graphics/StampedPathEffectStyle;",
        "actualStampedPathEffect-7aD1DOk",
        "(Landroidx/compose/ui/graphics/Path;FFI)Landroidx/compose/ui/graphics/PathEffect;",
        "asAndroidPathEffect",
        "Landroid/graphics/PathEffect;",
        "toAndroidPathDashPathEffectStyle",
        "Landroid/graphics/PathDashPathEffect$Style;",
        "toAndroidPathDashPathEffectStyle-oQv6xUo",
        "(I)Landroid/graphics/PathDashPathEffect$Style;",
        "toComposePathEffect",
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
.method public static final actualChainPathEffect(Landroidx/compose/ui/graphics/PathEffect;Landroidx/compose/ui/graphics/PathEffect;)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2

    const-string v0, "outer"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 39
    new-instance v1, Landroid/graphics/ComposePathEffect;

    .line 40
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    move-result-object p0

    .line 41
    check-cast p1, Landroidx/compose/ui/graphics/AndroidPathEffect;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    move-result-object p1

    .line 39
    invoke-direct {v1, p0, p1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    check-cast v1, Landroid/graphics/PathEffect;

    .line 38
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/PathEffect;

    return-object v0
.end method

.method public static final actualCornerPathEffect(F)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2

    .line 32
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    new-instance v1, Landroid/graphics/CornerPathEffect;

    invoke-direct {v1, p0}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    check-cast v1, Landroid/graphics/PathEffect;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/PathEffect;

    return-object v0
.end method

.method public static final actualDashPathEffect([FF)Landroidx/compose/ui/graphics/PathEffect;
    .locals 2

    const-string v0, "intervals"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    new-instance v1, Landroid/graphics/DashPathEffect;

    invoke-direct {v1, p0, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v1, Landroid/graphics/PathEffect;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/PathEffect;

    return-object v0
.end method

.method public static final actualStampedPathEffect-7aD1DOk(Landroidx/compose/ui/graphics/Path;FFI)Landroidx/compose/ui/graphics/PathEffect;
    .locals 3

    const-string/jumbo v0, "shape"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    .line 52
    new-instance v1, Landroid/graphics/PathDashPathEffect;

    .line 67
    instance-of v2, p0, Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v2, :cond_0

    .line 68
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPath;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPath;->getInternalPath()Landroid/graphics/Path;

    move-result-object p0

    .line 56
    invoke-static {p3}, Landroidx/compose/ui/graphics/AndroidPathEffect_androidKt;->toAndroidPathDashPathEffectStyle-oQv6xUo(I)Landroid/graphics/PathDashPathEffect$Style;

    move-result-object p3

    .line 52
    invoke-direct {v1, p0, p1, p2, p3}, Landroid/graphics/PathDashPathEffect;-><init>(Landroid/graphics/Path;FFLandroid/graphics/PathDashPathEffect$Style;)V

    check-cast v1, Landroid/graphics/PathEffect;

    .line 51
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/PathEffect;

    return-object v0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Unable to obtain android.graphics.Path"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final asAndroidPathEffect(Landroidx/compose/ui/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    check-cast p0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;->getNativePathEffect()Landroid/graphics/PathEffect;

    move-result-object p0

    return-object p0
.end method

.method public static final toAndroidPathDashPathEffectStyle-oQv6xUo(I)Landroid/graphics/PathDashPathEffect$Style;
    .locals 1

    .line 62
    sget-object v0, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->Companion:Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getMorph-Ypspkwk()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->MORPH:Landroid/graphics/PathDashPathEffect$Style;

    goto :goto_0

    .line 63
    :cond_0
    sget-object v0, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->Companion:Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getRotate-Ypspkwk()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->ROTATE:Landroid/graphics/PathDashPathEffect$Style;

    goto :goto_0

    .line 64
    :cond_1
    sget-object v0, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->Companion:Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle$Companion;->getTranslate-Ypspkwk()I

    move-result v0

    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/StampedPathEffectStyle;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    goto :goto_0

    .line 65
    :cond_2
    sget-object p0, Landroid/graphics/PathDashPathEffect$Style;->TRANSLATE:Landroid/graphics/PathDashPathEffect$Style;

    :goto_0
    return-object p0
.end method

.method public static final toComposePathEffect(Landroid/graphics/PathEffect;)Landroidx/compose/ui/graphics/PathEffect;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroidx/compose/ui/graphics/AndroidPathEffect;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/AndroidPathEffect;-><init>(Landroid/graphics/PathEffect;)V

    check-cast v0, Landroidx/compose/ui/graphics/PathEffect;

    return-object v0
.end method
