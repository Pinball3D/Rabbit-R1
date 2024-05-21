.class final Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorVectorConverter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/ColorVectorConverterKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
        "Landroidx/compose/animation/core/TwoWayConverter<",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/compose/animation/core/TwoWayConverter;",
        "Landroidx/compose/ui/graphics/Color;",
        "Landroidx/compose/animation/core/AnimationVector4D;",
        "colorSpace",
        "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
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


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    invoke-direct {v0}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/animation/core/TwoWayConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/colorspace/ColorSpace;",
            ")",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/graphics/Color;",
            "Landroidx/compose/animation/core/AnimationVector4D;",
            ">;"
        }
    .end annotation

    const-string p0, "colorSpace"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    sget-object p0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;->INSTANCE:Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$1;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    new-instance v0, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;

    invoke-direct {v0, p1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1$2;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, v0}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 31
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/ColorVectorConverterKt$ColorToVector$1;->invoke(Landroidx/compose/ui/graphics/colorspace/ColorSpace;)Landroidx/compose/animation/core/TwoWayConverter;

    move-result-object p0

    return-object p0
.end method
