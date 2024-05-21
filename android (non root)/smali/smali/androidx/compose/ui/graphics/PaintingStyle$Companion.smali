.class public final Landroidx/compose/ui/graphics/PaintingStyle$Companion;
.super Ljava/lang/Object;
.source "PaintingStyle.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/PaintingStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\u0005\u0010\u0006R\u001c\u0010\u0008\u001a\u00020\u0004\u00f8\u0001\u0000\u00f8\u0001\u0001\u00f8\u0001\u0002\u00a2\u0006\n\n\u0002\u0010\u0007\u001a\u0004\u0008\t\u0010\u0006\u0082\u0002\u000f\n\u0002\u0008\u0019\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008!\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/PaintingStyle$Companion;",
        "",
        "()V",
        "Fill",
        "Landroidx/compose/ui/graphics/PaintingStyle;",
        "getFill-TiuSbCo",
        "()I",
        "I",
        "Stroke",
        "getStroke-TiuSbCo",
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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/graphics/PaintingStyle$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFill-TiuSbCo()I
    .locals 0

    .line 37
    invoke-static {}, Landroidx/compose/ui/graphics/PaintingStyle;->access$getFill$cp()I

    move-result p0

    return p0
.end method

.method public final getStroke-TiuSbCo()I
    .locals 0

    .line 45
    invoke-static {}, Landroidx/compose/ui/graphics/PaintingStyle;->access$getStroke$cp()I

    move-result p0

    return p0
.end method
