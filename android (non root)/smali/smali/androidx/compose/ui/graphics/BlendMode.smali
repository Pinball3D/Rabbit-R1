.class public final Landroidx/compose/ui/graphics/BlendMode;
.super Ljava/lang/Object;
.source "BlendMode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/BlendMode$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087@\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0014\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001a\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\u0005J\u000f\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0088\u0001\u0002\u0092\u0001\u00020\u0003\u00f8\u0001\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/graphics/BlendMode;",
        "",
        "value",
        "",
        "constructor-impl",
        "(I)I",
        "equals",
        "",
        "other",
        "equals-impl",
        "(ILjava/lang/Object;)Z",
        "hashCode",
        "hashCode-impl",
        "toString",
        "",
        "toString-impl",
        "(I)Ljava/lang/String;",
        "Companion",
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

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field private static final Clear:I

.field private static final Color:I

.field private static final ColorBurn:I

.field private static final ColorDodge:I

.field public static final Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

.field private static final Darken:I

.field private static final Difference:I

.field private static final Dst:I

.field private static final DstAtop:I

.field private static final DstIn:I

.field private static final DstOut:I

.field private static final DstOver:I

.field private static final Exclusion:I

.field private static final Hardlight:I

.field private static final Hue:I

.field private static final Lighten:I

.field private static final Luminosity:I

.field private static final Modulate:I

.field private static final Multiply:I

.field private static final Overlay:I

.field private static final Plus:I

.field private static final Saturation:I

.field private static final Screen:I

.field private static final Softlight:I

.field private static final Src:I

.field private static final SrcAtop:I

.field private static final SrcIn:I

.field private static final SrcOut:I

.field private static final SrcOver:I

.field private static final Xor:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/BlendMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    const/4 v0, 0x0

    .line 61
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Clear:I

    const/4 v0, 0x1

    .line 69
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Src:I

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Dst:I

    const/4 v0, 0x3

    .line 86
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    const/4 v0, 0x4

    .line 96
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->DstOver:I

    const/4 v0, 0x5

    .line 110
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    const/4 v0, 0x6

    .line 122
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->DstIn:I

    const/4 v0, 0x7

    .line 136
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOut:I

    const/16 v0, 0x8

    .line 150
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->DstOut:I

    const/16 v0, 0x9

    .line 163
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->SrcAtop:I

    const/16 v0, 0xa

    .line 176
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->DstAtop:I

    const/16 v0, 0xb

    .line 182
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Xor:I

    const/16 v0, 0xc

    .line 192
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Plus:I

    const/16 v0, 0xd

    .line 213
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Modulate:I

    const/16 v0, 0xe

    .line 243
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Screen:I

    const/16 v0, 0xf

    .line 265
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Overlay:I

    const/16 v0, 0x10

    .line 274
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Darken:I

    const/16 v0, 0x11

    .line 283
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Lighten:I

    const/16 v0, 0x12

    .line 294
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->ColorDodge:I

    const/16 v0, 0x13

    .line 305
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->ColorBurn:I

    const/16 v0, 0x14

    .line 329
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Hardlight:I

    const/16 v0, 0x15

    .line 343
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Softlight:I

    const/16 v0, 0x16

    .line 358
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Difference:I

    const/16 v0, 0x17

    .line 374
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Exclusion:I

    const/16 v0, 0x18

    .line 392
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Multiply:I

    const/16 v0, 0x19

    .line 406
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Hue:I

    const/16 v0, 0x1a

    .line 424
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Saturation:I

    const/16 v0, 0x1b

    .line 444
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Color:I

    const/16 v0, 0x1c

    .line 461
    invoke-static {v0}, Landroidx/compose/ui/graphics/BlendMode;->constructor-impl(I)I

    move-result v0

    sput v0, Landroidx/compose/ui/graphics/BlendMode;->Luminosity:I

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/ui/graphics/BlendMode;->value:I

    return-void
.end method

.method public static final synthetic access$getClear$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Clear:I

    return v0
.end method

.method public static final synthetic access$getColor$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Color:I

    return v0
.end method

.method public static final synthetic access$getColorBurn$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->ColorBurn:I

    return v0
.end method

.method public static final synthetic access$getColorDodge$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->ColorDodge:I

    return v0
.end method

.method public static final synthetic access$getDarken$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Darken:I

    return v0
.end method

.method public static final synthetic access$getDifference$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Difference:I

    return v0
.end method

.method public static final synthetic access$getDst$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Dst:I

    return v0
.end method

.method public static final synthetic access$getDstAtop$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstAtop:I

    return v0
.end method

.method public static final synthetic access$getDstIn$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstIn:I

    return v0
.end method

.method public static final synthetic access$getDstOut$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstOut:I

    return v0
.end method

.method public static final synthetic access$getDstOver$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstOver:I

    return v0
.end method

.method public static final synthetic access$getExclusion$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Exclusion:I

    return v0
.end method

.method public static final synthetic access$getHardlight$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Hardlight:I

    return v0
.end method

.method public static final synthetic access$getHue$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Hue:I

    return v0
.end method

.method public static final synthetic access$getLighten$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Lighten:I

    return v0
.end method

.method public static final synthetic access$getLuminosity$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Luminosity:I

    return v0
.end method

.method public static final synthetic access$getModulate$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Modulate:I

    return v0
.end method

.method public static final synthetic access$getMultiply$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Multiply:I

    return v0
.end method

.method public static final synthetic access$getOverlay$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Overlay:I

    return v0
.end method

.method public static final synthetic access$getPlus$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Plus:I

    return v0
.end method

.method public static final synthetic access$getSaturation$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Saturation:I

    return v0
.end method

.method public static final synthetic access$getScreen$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Screen:I

    return v0
.end method

.method public static final synthetic access$getSoftlight$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Softlight:I

    return v0
.end method

.method public static final synthetic access$getSrc$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Src:I

    return v0
.end method

.method public static final synthetic access$getSrcAtop$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcAtop:I

    return v0
.end method

.method public static final synthetic access$getSrcIn$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    return v0
.end method

.method public static final synthetic access$getSrcOut$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOut:I

    return v0
.end method

.method public static final synthetic access$getSrcOver$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    return v0
.end method

.method public static final synthetic access$getXor$cp()I
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Xor:I

    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/graphics/BlendMode;
    .locals 1

    new-instance v0, Landroidx/compose/ui/graphics/BlendMode;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/BlendMode;-><init>(I)V

    return-object v0
.end method

.method public static constructor-impl(I)I
    .locals 0

    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroidx/compose/ui/graphics/BlendMode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/compose/ui/graphics/BlendMode;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/BlendMode;->unbox-impl()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Clear:I

    .line 465
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Clear"

    goto/16 :goto_0

    :cond_0
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Src:I

    .line 466
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Src"

    goto/16 :goto_0

    :cond_1
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Dst:I

    .line 467
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "Dst"

    goto/16 :goto_0

    :cond_2
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOver:I

    .line 468
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "SrcOver"

    goto/16 :goto_0

    :cond_3
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstOver:I

    .line 469
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "DstOver"

    goto/16 :goto_0

    :cond_4
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcIn:I

    .line 470
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "SrcIn"

    goto/16 :goto_0

    :cond_5
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstIn:I

    .line 471
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "DstIn"

    goto/16 :goto_0

    :cond_6
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcOut:I

    .line 472
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "SrcOut"

    goto/16 :goto_0

    :cond_7
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstOut:I

    .line 473
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "DstOut"

    goto/16 :goto_0

    :cond_8
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->SrcAtop:I

    .line 474
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "SrcAtop"

    goto/16 :goto_0

    :cond_9
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->DstAtop:I

    .line 475
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "DstAtop"

    goto/16 :goto_0

    :cond_a
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Xor:I

    .line 476
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "Xor"

    goto/16 :goto_0

    :cond_b
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Plus:I

    .line 477
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "Plus"

    goto/16 :goto_0

    :cond_c
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Modulate:I

    .line 478
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "Modulate"

    goto/16 :goto_0

    :cond_d
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Screen:I

    .line 479
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "Screen"

    goto/16 :goto_0

    :cond_e
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Overlay:I

    .line 480
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "Overlay"

    goto/16 :goto_0

    :cond_f
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Darken:I

    .line 481
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string p0, "Darken"

    goto/16 :goto_0

    :cond_10
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Lighten:I

    .line 482
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Lighten"

    goto/16 :goto_0

    :cond_11
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->ColorDodge:I

    .line 483
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string p0, "ColorDodge"

    goto/16 :goto_0

    :cond_12
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->ColorBurn:I

    .line 484
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string p0, "ColorBurn"

    goto/16 :goto_0

    :cond_13
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Hardlight:I

    .line 485
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "HardLight"

    goto :goto_0

    :cond_14
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Softlight:I

    .line 486
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "Softlight"

    goto :goto_0

    :cond_15
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Difference:I

    .line 487
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string p0, "Difference"

    goto :goto_0

    :cond_16
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Exclusion:I

    .line 488
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string p0, "Exclusion"

    goto :goto_0

    :cond_17
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Multiply:I

    .line 489
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "Multiply"

    goto :goto_0

    :cond_18
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Hue:I

    .line 490
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p0, "Hue"

    goto :goto_0

    :cond_19
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Saturation:I

    .line 491
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string p0, "Saturation"

    goto :goto_0

    :cond_1a
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Color:I

    .line 492
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string p0, "Color"

    goto :goto_0

    :cond_1b
    sget v0, Landroidx/compose/ui/graphics/BlendMode;->Luminosity:I

    .line 493
    invoke-static {p0, v0}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl0(II)Z

    move-result p0

    if-eqz p0, :cond_1c

    const-string p0, "Luminosity"

    goto :goto_0

    :cond_1c
    const-string p0, "Unknown"

    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/BlendMode;->value:I

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/BlendMode;->equals-impl(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/BlendMode;->value:I

    invoke-static {p0}, Landroidx/compose/ui/graphics/BlendMode;->hashCode-impl(I)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/BlendMode;->value:I

    .line 464
    invoke-static {p0}, Landroidx/compose/ui/graphics/BlendMode;->toString-impl(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic unbox-impl()I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/graphics/BlendMode;->value:I

    return p0
.end method
