.class public final Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;
.super Ljava/lang/Object;
.source "ColorModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/ColorModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006R\u001c\u0010\n\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u000b\u0010\u0006R\u001c\u0010\u000c\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\r\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;",
        "",
        "()V",
        "Cmyk",
        "Landroidx/compose/ui/graphics/colorspace/ColorModel;",
        "getCmyk-xdoWZVw",
        "()J",
        "J",
        "Lab",
        "getLab-xdoWZVw",
        "Rgb",
        "getRgb-xdoWZVw",
        "Xyz",
        "getXyz-xdoWZVw",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCmyk-xdoWZVw()J
    .locals 2

    .line 79
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->access$getCmyk$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLab-xdoWZVw()J
    .locals 2

    .line 71
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->access$getLab$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRgb-xdoWZVw()J
    .locals 2

    .line 57
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->access$getRgb$cp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getXyz-xdoWZVw()J
    .locals 2

    .line 64
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->access$getXyz$cp()J

    move-result-wide v0

    return-wide v0
.end method
