.class public final Lcom/google/android/exoplayer2/HeartRating;
.super Lcom/google/android/exoplayer2/Rating;
.source "HeartRating.java"


# static fields
.field public static final CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/Bundleable$Creator<",
            "Lcom/google/android/exoplayer2/HeartRating;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_IS_HEART:Ljava/lang/String;

.field private static final FIELD_RATED:Ljava/lang/String;

.field private static final TYPE:I


# instance fields
.field private final isHeart:Z

.field private final rated:Z


# direct methods
.method public static synthetic $r8$lambda$vPIJW6ssYQujpVr4cEbnIbolVQo(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/HeartRating;->fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 78
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    const/4 v0, 0x2

    .line 79
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    .line 91
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/HeartRating$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/HeartRating;->CREATOR:Lcom/google/android/exoplayer2/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplayer2/Rating;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/HeartRating;
    .locals 3

    .line 94
    sget-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/Assertions;->checkArgument(Z)V

    sget-object v0, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    .line 95
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating;

    sget-object v2, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-direct {v0, p0}, Lcom/google/android/exoplayer2/HeartRating;-><init>(Z)V

    goto :goto_1

    .line 98
    :cond_1
    new-instance v0, Lcom/google/android/exoplayer2/HeartRating;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/HeartRating;-><init>()V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 67
    instance-of v0, p1, Lcom/google/android/exoplayer2/HeartRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    check-cast p1, Lcom/google/android/exoplayer2/HeartRating;

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    .line 71
    iget-boolean v2, p1, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    if-ne v0, v2, :cond_1

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    .line 62
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isHeart()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    return p0
.end method

.method public isRated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 84
    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATING_TYPE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_RATED:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/HeartRating;->rated:Z

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v1, Lcom/google/android/exoplayer2/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/google/android/exoplayer2/HeartRating;->isHeart:Z

    .line 86
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
