.class public final Landroidx/media3/common/ColorInfo$Builder;
.super Ljava/lang/Object;
.source "ColorInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/ColorInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private colorRange:I

.field private colorSpace:I

.field private colorTransfer:I

.field private hdrStaticInfo:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/ColorInfo;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorSpace:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    .line 57
    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorRange:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    .line 58
    iget v0, p1, Landroidx/media3/common/ColorInfo;->colorTransfer:I

    iput v0, p0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    .line 59
    iget-object p1, p1, Landroidx/media3/common/ColorInfo;->hdrStaticInfo:[B

    iput-object p1, p0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/ColorInfo;Landroidx/media3/common/ColorInfo$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroidx/media3/common/ColorInfo$Builder;-><init>(Landroidx/media3/common/ColorInfo;)V

    return-void
.end method


# virtual methods
.method public build()Landroidx/media3/common/ColorInfo;
    .locals 4

    .line 121
    new-instance v0, Landroidx/media3/common/ColorInfo;

    iget v1, p0, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    iget v2, p0, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    iget v3, p0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    iget-object p0, p0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/media3/common/ColorInfo;-><init>(III[B)V

    return-object v0
.end method

.method public setColorRange(I)Landroidx/media3/common/ColorInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/ColorInfo$Builder;->colorRange:I

    return-object p0
.end method

.method public setColorSpace(I)Landroidx/media3/common/ColorInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/ColorInfo$Builder;->colorSpace:I

    return-object p0
.end method

.method public setColorTransfer(I)Landroidx/media3/common/ColorInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/ColorInfo$Builder;->colorTransfer:I

    return-object p0
.end method

.method public setHdrStaticInfo([B)Landroidx/media3/common/ColorInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroidx/media3/common/ColorInfo$Builder;->hdrStaticInfo:[B

    return-object p0
.end method
