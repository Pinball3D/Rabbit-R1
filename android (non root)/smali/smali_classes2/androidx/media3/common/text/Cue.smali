.class public final Landroidx/media3/common/text/Cue;
.super Ljava/lang/Object;
.source "Cue.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/text/Cue$Builder;,
        Landroidx/media3/common/text/Cue$VerticalType;,
        Landroidx/media3/common/text/Cue$TextSizeType;,
        Landroidx/media3/common/text/Cue$LineType;,
        Landroidx/media3/common/text/Cue$AnchorType;
    }
.end annotation


# static fields
.field public static final ANCHOR_TYPE_END:I = 0x2

.field public static final ANCHOR_TYPE_MIDDLE:I = 0x1

.field public static final ANCHOR_TYPE_START:I = 0x0

.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field public static final DIMEN_UNSET:F = -3.4028235E38f

.field public static final EMPTY:Landroidx/media3/common/text/Cue;

.field private static final FIELD_BITMAP:Ljava/lang/String;

.field private static final FIELD_BITMAP_HEIGHT:Ljava/lang/String;

.field private static final FIELD_LINE:Ljava/lang/String;

.field private static final FIELD_LINE_ANCHOR:Ljava/lang/String;

.field private static final FIELD_LINE_TYPE:Ljava/lang/String;

.field private static final FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_POSITION:Ljava/lang/String;

.field private static final FIELD_POSITION_ANCHOR:Ljava/lang/String;

.field private static final FIELD_SHEAR_DEGREES:Ljava/lang/String;

.field private static final FIELD_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT:Ljava/lang/String;

.field private static final FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE:Ljava/lang/String;

.field private static final FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

.field private static final FIELD_VERTICAL_TYPE:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR:Ljava/lang/String;

.field private static final FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

.field public static final LINE_TYPE_FRACTION:I = 0x0

.field public static final LINE_TYPE_NUMBER:I = 0x1

.field public static final TEXT_SIZE_TYPE_ABSOLUTE:I = 0x2

.field public static final TEXT_SIZE_TYPE_FRACTIONAL:I = 0x0

.field public static final TEXT_SIZE_TYPE_FRACTIONAL_IGNORE_PADDING:I = 0x1

.field public static final TYPE_UNSET:I = -0x80000000

.field public static final VERTICAL_TYPE_LR:I = 0x2

.field public static final VERTICAL_TYPE_RL:I = 0x1


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final bitmapHeight:F

.field public final line:F

.field public final lineAnchor:I

.field public final lineType:I

.field public final multiRowAlignment:Landroid/text/Layout$Alignment;

.field public final position:F

.field public final positionAnchor:I

.field public final shearDegrees:F

.field public final size:F

.field public final text:Ljava/lang/CharSequence;

.field public final textAlignment:Landroid/text/Layout$Alignment;

.field public final textSize:F

.field public final textSizeType:I

.field public final verticalType:I

.field public final windowColor:I

.field public final windowColorSet:Z


# direct methods
.method public static synthetic $r8$lambda$lu66A1gq4RO4E10R83ZjhInWpZQ(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/text/Cue;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->EMPTY:Landroidx/media3/common/text/Cue;

    const/4 v0, 0x0

    .line 825
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    const/4 v0, 0x1

    .line 826
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x2

    .line 827
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    const/4 v0, 0x3

    .line 828
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    const/4 v0, 0x4

    .line 829
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    const/4 v0, 0x5

    .line 830
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    const/4 v0, 0x6

    .line 831
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    const/4 v0, 0x7

    .line 832
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    const/16 v0, 0x8

    .line 833
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    const/16 v0, 0x9

    .line 834
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    const/16 v0, 0xa

    .line 835
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    const/16 v0, 0xb

    .line 836
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    const/16 v0, 0xc

    .line 837
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    const/16 v0, 0xd

    .line 838
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    const/16 v0, 0xe

    .line 839
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/16 v0, 0xf

    .line 840
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    const/16 v0, 0x10

    .line 841
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 867
    new-instance v0, Landroidx/media3/common/text/Cue$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/text/Cue;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez v1, :cond_0

    .line 323
    invoke-static {p4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 325
    :goto_0
    invoke-static {v3}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 327
    :goto_1
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_2

    .line 328
    invoke-static {p1}, Landroid/text/SpannedString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannedString;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    :goto_2
    move-object v1, p2

    goto :goto_3

    :cond_2
    if-eqz v1, :cond_3

    .line 330
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    goto :goto_2

    :goto_3
    iput-object v1, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    move-object v1, p3

    iput-object v1, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iput-object v2, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    move v1, p5

    iput v1, v0, Landroidx/media3/common/text/Cue;->line:F

    move v1, p6

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineType:I

    move v1, p7

    iput v1, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    move v1, p8

    iput v1, v0, Landroidx/media3/common/text/Cue;->position:F

    move v1, p9

    iput v1, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    move/from16 v1, p12

    iput v1, v0, Landroidx/media3/common/text/Cue;->size:F

    move/from16 v1, p13

    iput v1, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    move/from16 v1, p14

    iput-boolean v1, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    move v1, p10

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    move v1, p11

    iput v1, v0, Landroidx/media3/common/text/Cue;->textSize:F

    move/from16 v1, p16

    iput v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    move/from16 v1, p17

    iput v1, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIFLandroidx/media3/common/text/Cue$1;)V
    .locals 0

    .line 51
    invoke-direct/range {p0 .. p17}, Landroidx/media3/common/text/Cue;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;Landroid/text/Layout$Alignment;Landroid/graphics/Bitmap;FIIFIIFFFZIIF)V

    return-void
.end method

.method private static final fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/text/Cue;
    .locals 4

    .line 870
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v0}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    .line 871
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 873
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setText(Ljava/lang/CharSequence;)Landroidx/media3/common/text/Cue$Builder;

    :cond_0
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    .line 875
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_1

    .line 877
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    :cond_1
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    .line 880
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/text/Layout$Alignment;

    if-eqz v1, :cond_2

    .line 882
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setMultiRowAlignment(Landroid/text/Layout$Alignment;)Landroidx/media3/common/text/Cue$Builder;

    :cond_2
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    .line 884
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 886
    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroidx/media3/common/text/Cue$Builder;

    :cond_3
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    .line 888
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 889
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setLine(FI)Landroidx/media3/common/text/Cue$Builder;

    :cond_4
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    .line 891
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 892
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setLineAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    :cond_5
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    .line 894
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 895
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setPosition(F)Landroidx/media3/common/text/Cue$Builder;

    :cond_6
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    .line 897
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 898
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setPositionAnchor(I)Landroidx/media3/common/text/Cue$Builder;

    :cond_7
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    .line 900
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 901
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/media3/common/text/Cue$Builder;->setTextSize(FI)Landroidx/media3/common/text/Cue$Builder;

    :cond_8
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    .line 903
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 904
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setSize(F)Landroidx/media3/common/text/Cue$Builder;

    :cond_9
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    .line 906
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 907
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setBitmapHeight(F)Landroidx/media3/common/text/Cue$Builder;

    :cond_a
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    .line 909
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 910
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setWindowColor(I)Landroidx/media3/common/text/Cue$Builder;

    :cond_b
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    const/4 v2, 0x0

    .line 912
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_c

    .line 913
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->clearWindowColor()Landroidx/media3/common/text/Cue$Builder;

    :cond_c
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    .line 915
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 916
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/media3/common/text/Cue$Builder;->setVerticalType(I)Landroidx/media3/common/text/Cue$Builder;

    :cond_d
    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    .line 918
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 919
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/media3/common/text/Cue$Builder;->setShearDegrees(F)Landroidx/media3/common/text/Cue$Builder;

    .line 921
    :cond_e
    invoke-virtual {v0}, Landroidx/media3/common/text/Cue$Builder;->build()Landroidx/media3/common/text/Cue;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/text/Cue$Builder;
    .locals 2

    .line 355
    new-instance v0, Landroidx/media3/common/text/Cue$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/text/Cue$Builder;-><init>(Landroidx/media3/common/text/Cue;Landroidx/media3/common/text/Cue$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 363
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 366
    :cond_1
    check-cast p1, Landroidx/media3/common/text/Cue;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 367
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, p1, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    iget-object v2, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 372
    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->line:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->lineAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->position:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->positionAnchor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->size:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    iget-boolean v3, p1, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->windowColor:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSizeType:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    iget v3, p1, Landroidx/media3/common/text/Cue;->textSize:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    iget v3, p1, Landroidx/media3/common/text/Cue;->verticalType:I

    if-ne v2, v3, :cond_3

    iget p0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    iget p1, p1, Landroidx/media3/common/text/Cue;->shearDegrees:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0

    :cond_4
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    iget-object v2, v0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    iget-object v3, v0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    iget-object v4, v0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    iget v5, v0, Landroidx/media3/common/text/Cue;->line:F

    .line 395
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 396
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 397
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, v0, Landroidx/media3/common/text/Cue;->position:F

    .line 398
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget v9, v0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 399
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Landroidx/media3/common/text/Cue;->size:F

    .line 400
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget v11, v0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 401
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-boolean v12, v0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 402
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    iget v13, v0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 403
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 404
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 405
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    move-object/from16 v18, v1

    iget v1, v0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 406
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v0, v0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 407
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    move-object/from16 v1, v18

    filled-new-array/range {v1 .. v17}, [Ljava/lang/Object;

    move-result-object v0

    .line 390
    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 846
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->text:Ljava/lang/CharSequence;

    .line 847
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->textAlignment:Landroid/text/Layout$Alignment;

    .line 848
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_MULTI_ROW_ALIGNMENT:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->multiRowAlignment:Landroid/text/Layout$Alignment;

    .line 849
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/text/Cue;->bitmap:Landroid/graphics/Bitmap;

    .line 850
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->line:F

    .line 851
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineType:I

    .line 852
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_LINE_ANCHOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->lineAnchor:I

    .line 853
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->position:F

    .line 854
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_POSITION_ANCHOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->positionAnchor:I

    .line 855
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSizeType:I

    .line 856
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_TEXT_SIZE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->textSize:F

    .line 857
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SIZE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->size:F

    .line 858
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_BITMAP_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->bitmapHeight:F

    .line 859
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR_SET:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/text/Cue;->windowColorSet:Z

    .line 860
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_WINDOW_COLOR:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->windowColor:I

    .line 861
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_VERTICAL_TYPE:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/text/Cue;->verticalType:I

    .line 862
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/text/Cue;->FIELD_SHEAR_DEGREES:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/text/Cue;->shearDegrees:F

    .line 863
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
