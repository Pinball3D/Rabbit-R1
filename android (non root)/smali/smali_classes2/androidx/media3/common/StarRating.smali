.class public final Landroidx/media3/common/StarRating;
.super Landroidx/media3/common/Rating;
.source "StarRating.java"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/StarRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_STARS:Ljava/lang/String;

.field private static final FIELD_STAR_RATING:Ljava/lang/String;

.field private static final MAX_STARS_DEFAULT:I = 0x5

.field private static final TYPE:I = 0x2


# instance fields
.field private final maxStars:I

.field private final starRating:F


# direct methods
.method public static synthetic $r8$lambda$04IxUBDe5DeMTkj0leoNQsGNepM(Landroid/os/Bundle;)Landroidx/media3/common/StarRating;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/StarRating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/StarRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    const/4 v0, 0x2

    .line 105
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    .line 118
    new-instance v0, Landroidx/media3/common/StarRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/StarRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/StarRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxStars must be a positive integer"

    .line 43
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/common/StarRating;->maxStars:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Landroidx/media3/common/StarRating;->starRating:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4

    .line 58
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "maxStars must be a positive integer"

    .line 59
    invoke-static {v2, v3}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    int-to-float v2, p1

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    const-string v1, "starRating is out of range [0, maxStars]"

    .line 60
    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    iput p1, p0, Landroidx/media3/common/StarRating;->maxStars:I

    iput p2, p0, Landroidx/media3/common/StarRating;->starRating:F

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/StarRating;
    .locals 3

    .line 121
    sget-object v0, Landroidx/media3/common/StarRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    const/4 v1, 0x5

    .line 122
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Landroidx/media3/common/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    const/high16 v2, -0x40800000    # -1.0f

    .line 123
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_1

    .line 125
    new-instance p0, Landroidx/media3/common/StarRating;

    invoke-direct {p0, v0}, Landroidx/media3/common/StarRating;-><init>(I)V

    goto :goto_1

    .line 126
    :cond_1
    new-instance v1, Landroidx/media3/common/StarRating;

    invoke-direct {v1, v0, p0}, Landroidx/media3/common/StarRating;-><init>(IF)V

    move-object p0, v1

    :goto_1
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 92
    instance-of v0, p1, Landroidx/media3/common/StarRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    check-cast p1, Landroidx/media3/common/StarRating;

    iget v0, p0, Landroidx/media3/common/StarRating;->maxStars:I

    .line 96
    iget v2, p1, Landroidx/media3/common/StarRating;->maxStars:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    iget p1, p1, Landroidx/media3/common/StarRating;->starRating:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getMaxStars()I
    .locals 0

    iget p0, p0, Landroidx/media3/common/StarRating;->maxStars:I

    return p0
.end method

.method public getStarRating()F
    .locals 0

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/media3/common/StarRating;->maxStars:I

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isRated()Z
    .locals 1

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 111
    sget-object v1, Landroidx/media3/common/StarRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/StarRating;->FIELD_MAX_STARS:Ljava/lang/String;

    iget v2, p0, Landroidx/media3/common/StarRating;->maxStars:I

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/StarRating;->FIELD_STAR_RATING:Ljava/lang/String;

    iget p0, p0, Landroidx/media3/common/StarRating;->starRating:F

    .line 113
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method
