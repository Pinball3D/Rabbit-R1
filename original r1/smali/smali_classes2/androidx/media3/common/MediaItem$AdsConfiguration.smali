.class public final Landroidx/media3/common/MediaItem$AdsConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdsConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem$AdsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AD_TAG_URI:Ljava/lang/String;


# instance fields
.field public final adTagUri:Landroid/net/Uri;

.field public final adsId:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$dsAoVZ9GolL31UGQ4vr8q_eKCbY(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$AdsConfiguration;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/MediaItem$AdsConfiguration;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$AdsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1057
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    .line 1065
    new-instance v0, Landroidx/media3/common/MediaItem$AdsConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$AdsConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;)V
    .locals 1

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    invoke-static {p1}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->access$1600(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 1027
    invoke-static {p1}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->access$1700(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 970
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$AdsConfiguration;-><init>(Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$AdsConfiguration;
    .locals 1

    sget-object v0, Landroidx/media3/common/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    .line 1069
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    .line 1070
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    new-instance v0, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    invoke-direct {v0, p0}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$AdsConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;
    .locals 2

    .line 1032
    new-instance v0, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    iget-object p0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;->setAdsId(Ljava/lang/Object;)Landroidx/media3/common/MediaItem$AdsConfiguration$Builder;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1040
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$AdsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1044
    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$AdsConfiguration;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 1045
    iget-object v3, p1, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 1050
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 1051
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    .line 1083
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/MediaItem$AdsConfiguration;->FIELD_AD_TAG_URI:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    .line 1084
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
