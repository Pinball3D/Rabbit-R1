.class public final Landroidx/compose/ui/graphics/AndroidColorSpace_androidKt;
.super Ljava/lang/Object;
.source "AndroidColorSpace.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001a\u000c\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0007\u001a\u000c\u0010\u0003\u001a\u00020\u0002*\u00020\u0001H\u0007\u00a8\u0006\u0004"
    }
    d2 = {
        "toAndroidColorSpace",
        "Landroid/graphics/ColorSpace;",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "toComposeColorSpace",
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
.method public static final toAndroidColorSpace(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;

    .line 35
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->androidColorSpace(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroid/graphics/ColorSpace;

    move-result-object p0

    return-object p0
.end method

.method public static final toComposeColorSpace(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;

    .line 44
    invoke-static {p0}, Landroidx/compose/ui/graphics/ColorSpaceVerificationHelper;->composeColorSpace(Landroid/graphics/ColorSpace;)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    move-result-object p0

    return-object p0
.end method
