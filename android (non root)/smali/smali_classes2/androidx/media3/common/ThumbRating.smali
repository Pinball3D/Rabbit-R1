.class public final Landroidx/media3/common/ThumbRating;
.super Landroidx/media3/common/Rating;
.source "ThumbRating.java"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/ThumbRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_THUMBS_UP:Ljava/lang/String;

.field private static final FIELD_RATED:Ljava/lang/String;

.field private static final TYPE:I = 0x3


# instance fields
.field private final isThumbsUp:Z

.field private final rated:Z


# direct methods
.method public static synthetic $r8$lambda$OOVDHDSLI7K49_UXgSKpq5L90GY(Landroid/os/Bundle;)Landroidx/media3/common/ThumbRating;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/ThumbRating;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/ThumbRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    .line 90
    new-instance v0, Landroidx/media3/common/ThumbRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/ThumbRating;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    iput-boolean v0, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    iput-boolean p1, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/ThumbRating;
    .locals 3

    .line 93
    sget-object v0, Landroidx/media3/common/ThumbRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    sget-object v0, Landroidx/media3/common/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    new-instance v0, Landroidx/media3/common/ThumbRating;

    sget-object v1, Landroidx/media3/common/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, p0}, Landroidx/media3/common/ThumbRating;-><init>(Z)V

    goto :goto_1

    .line 97
    :cond_1
    new-instance v0, Landroidx/media3/common/ThumbRating;

    invoke-direct {v0}, Landroidx/media3/common/ThumbRating;-><init>()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 65
    instance-of v0, p1, Landroidx/media3/common/ThumbRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 68
    :cond_0
    check-cast p1, Landroidx/media3/common/ThumbRating;

    iget-boolean v0, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    .line 69
    iget-boolean v2, p1, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    iget-boolean p1, p1, Landroidx/media3/common/ThumbRating;->rated:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isRated()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    return p0
.end method

.method public isThumbsUp()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 82
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    sget-object v1, Landroidx/media3/common/ThumbRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Landroidx/media3/common/ThumbRating;->FIELD_RATED:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/media3/common/ThumbRating;->rated:Z

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Landroidx/media3/common/ThumbRating;->FIELD_IS_THUMBS_UP:Ljava/lang/String;

    iget-boolean p0, p0, Landroidx/media3/common/ThumbRating;->isThumbsUp:Z

    .line 85
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
