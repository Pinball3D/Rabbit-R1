.class public final Landroidx/media3/common/VideoSize;
.super Ljava/lang/Object;
.source "VideoSize.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/VideoSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_PIXEL_WIDTH_HEIGHT_RATIO:F = 1.0f

.field private static final DEFAULT_UNAPPLIED_ROTATION_DEGREES:I

.field private static final DEFAULT_WIDTH:I

.field private static final FIELD_HEIGHT:Ljava/lang/String;

.field private static final FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

.field private static final FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

.field private static final FIELD_WIDTH:Ljava/lang/String;

.field public static final UNKNOWN:Landroidx/media3/common/VideoSize;


# instance fields
.field public final height:I

.field public final pixelWidthHeightRatio:F

.field public final unappliedRotationDegrees:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroidx/media3/common/VideoSize;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/media3/common/VideoSize;-><init>(II)V

    sput-object v0, Landroidx/media3/common/VideoSize;->UNKNOWN:Landroidx/media3/common/VideoSize;

    .line 130
    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v0, 0x1

    .line 131
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    const/4 v0, 0x2

    .line 132
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    const/4 v0, 0x3

    .line 133
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    .line 147
    new-instance v0, Landroidx/media3/common/VideoSize$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/VideoSize$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/VideoSize;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 76
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/VideoSize;->width:I

    iput p2, p0, Landroidx/media3/common/VideoSize;->height:I

    iput p3, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iput p4, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/VideoSize;
    .locals 5

    sget-object v0, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    const/4 v1, 0x0

    .line 149
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    .line 150
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroidx/media3/common/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    .line 152
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    const/high16 v4, 0x3f800000    # 1.0f

    .line 154
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    .line 155
    new-instance v3, Landroidx/media3/common/VideoSize;

    invoke-direct {v3, v0, v2, v1, p0}, Landroidx/media3/common/VideoSize;-><init>(IIIF)V

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 108
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/VideoSize;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 109
    check-cast p1, Landroidx/media3/common/VideoSize;

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    .line 110
    iget v3, p1, Landroidx/media3/common/VideoSize;->width:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->height:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    iget v3, p1, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    iget p1, p1, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    const/16 v0, 0xd9

    iget v1, p0, Landroidx/media3/common/VideoSize;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->height:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    .line 124
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 138
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_WIDTH:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->width:I

    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_HEIGHT:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->height:I

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_UNAPPLIED_ROTATION_DEGREES:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/VideoSize;->unappliedRotationDegrees:I

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/VideoSize;->FIELD_PIXEL_WIDTH_HEIGHT_RATIO:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/VideoSize;->pixelWidthHeightRatio:F

    .line 142
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
