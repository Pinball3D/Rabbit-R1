.class public abstract Landroidx/media3/common/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/Rating;",
            ">;"
        }
    .end annotation
.end field

.field static final FIELD_RATING_TYPE:Ljava/lang/String;

.field static final RATING_TYPE_HEART:I = 0x0

.field static final RATING_TYPE_PERCENTAGE:I = 0x1

.field static final RATING_TYPE_STAR:I = 0x2

.field static final RATING_TYPE_THUMB:I = 0x3

.field static final RATING_TYPE_UNSET:I = -0x1

.field static final RATING_UNSET:F = -1.0f


# direct methods
.method public static synthetic $r8$lambda$g4WPE4rAhDe8VJqTRhK89os2a7Y(Landroid/os/Bundle;)Landroidx/media3/common/Rating;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/Rating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    .line 67
    new-instance v0, Landroidx/media3/common/Rating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/Rating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/Rating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Rating;
    .locals 3

    sget-object v0, Landroidx/media3/common/Rating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    .line 71
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 80
    sget-object v0, Landroidx/media3/common/ThumbRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Rating;

    return-object p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown RatingType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_1
    sget-object v0, Landroidx/media3/common/StarRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Rating;

    return-object p0

    .line 76
    :cond_2
    sget-object v0, Landroidx/media3/common/PercentageRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Rating;

    return-object p0

    .line 74
    :cond_3
    sget-object v0, Landroidx/media3/common/HeartRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-interface {v0, p0}, Landroidx/media3/common/Bundleable$Creator;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/Bundleable;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/Rating;

    return-object p0
.end method


# virtual methods
.method public abstract isRated()Z
.end method
