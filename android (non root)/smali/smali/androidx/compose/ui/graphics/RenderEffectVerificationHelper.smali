.class final Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;
.super Ljava/lang/Object;
.source "AndroidRenderEffect.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J7\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\'\u0010\u000e\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0007\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;",
        "",
        "()V",
        "createBlurEffect",
        "Landroid/graphics/RenderEffect;",
        "inputRenderEffect",
        "Landroidx/compose/ui/graphics/RenderEffect;",
        "radiusX",
        "",
        "radiusY",
        "edgeTreatment",
        "Landroidx/compose/ui/graphics/TileMode;",
        "createBlurEffect-8A-3gB4",
        "(Landroidx/compose/ui/graphics/RenderEffect;FFI)Landroid/graphics/RenderEffect;",
        "createOffsetEffect",
        "offset",
        "Landroidx/compose/ui/geometry/Offset;",
        "createOffsetEffect-Uv8p0NA",
        "(Landroidx/compose/ui/graphics/RenderEffect;J)Landroid/graphics/RenderEffect;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;-><init>()V

    sput-object v0, Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;->INSTANCE:Landroidx/compose/ui/graphics/RenderEffectVerificationHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBlurEffect-8A-3gB4(Landroidx/compose/ui/graphics/RenderEffect;FFI)Landroid/graphics/RenderEffect;
    .locals 0

    const-string/jumbo p0, "{\n            android.gr\u2026)\n            )\n        }"

    if-nez p1, :cond_0

    .line 143
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    move-result-object p1

    .line 140
    invoke-static {p2, p3, p1}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 139
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/RenderEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 150
    invoke-static {p4}, Landroidx/compose/ui/graphics/AndroidTileMode_androidKt;->toAndroidTileMode-0vamqd0(I)Landroid/graphics/Shader$TileMode;

    move-result-object p4

    .line 146
    invoke-static {p2, p3, p1, p4}, Landroid/graphics/RenderEffect;->createBlurEffect(FFLandroid/graphics/RenderEffect;Landroid/graphics/Shader$TileMode;)Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 145
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final createOffsetEffect-Uv8p0NA(Landroidx/compose/ui/graphics/RenderEffect;J)Landroid/graphics/RenderEffect;
    .locals 0

    if-nez p1, :cond_0

    .line 160
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p1

    invoke-static {p0, p1}, Landroid/graphics/RenderEffect;->createOffsetEffect(FF)Landroid/graphics/RenderEffect;

    move-result-object p0

    const-string/jumbo p1, "{\n            android.gr\u2026et.x, offset.y)\n        }"

    .line 159
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result p0

    .line 164
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result p2

    .line 165
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/RenderEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object p1

    .line 162
    invoke-static {p0, p2, p1}, Landroid/graphics/RenderEffect;->createOffsetEffect(FFLandroid/graphics/RenderEffect;)Landroid/graphics/RenderEffect;

    move-result-object p0

    const-string/jumbo p1, "{\n            android.gr\u2026)\n            )\n        }"

    .line 161
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method
