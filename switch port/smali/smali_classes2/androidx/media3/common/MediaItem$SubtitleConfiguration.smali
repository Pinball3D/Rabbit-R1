.class public Landroidx/media3/common/MediaItem$SubtitleConfiguration;
.super Ljava/lang/Object;
.source "MediaItem.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubtitleConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/MediaItem$SubtitleConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final FIELD_LABEL:Ljava/lang/String;

.field private static final FIELD_LANGUAGE:Ljava/lang/String;

.field private static final FIELD_MIME_TYPE:Ljava/lang/String;

.field private static final FIELD_ROLE_FLAGS:Ljava/lang/String;

.field private static final FIELD_SELECTION_FLAGS:Ljava/lang/String;

.field private static final FIELD_URI:Ljava/lang/String;


# instance fields
.field public final id:Ljava/lang/String;

.field public final label:Ljava/lang/String;

.field public final language:Ljava/lang/String;

.field public final mimeType:Ljava/lang/String;

.field public final roleFlags:I

.field public final selectionFlags:I

.field public final uri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$l87GEsvMLT9FX_WzUxtjafDKyNU(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$SubtitleConfiguration;
    .locals 0

    invoke-static {p0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1678
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1679
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    const/4 v0, 0x2

    .line 1680
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    const/4 v0, 0x3

    .line 1681
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v0, 0x4

    .line 1682
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    const/4 v0, 0x5

    .line 1683
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    const/4 v0, 0x6

    .line 1684
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    .line 1688
    new-instance v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object p2, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput p5, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput-object p6, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object p7, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 1504
    invoke-direct/range {p0 .. p7}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V
    .locals 1

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2800(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1631
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$2900(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1632
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3000(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1633
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3100(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    .line 1634
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3200(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    .line 1635
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3300(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1636
    invoke-static {p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->access$3400(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;Landroidx/media3/common/MediaItem$1;)V
    .locals 0

    .line 1504
    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;)V

    return-void
.end method

.method private static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/MediaItem$SubtitleConfiguration;
    .locals 7

    sget-object v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    .line 1692
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    .line 1693
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1694
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    const/4 v4, 0x0

    .line 1695
    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 1696
    invoke-virtual {p0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    sget-object v5, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    .line 1697
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    .line 1698
    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1700
    new-instance v6, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v6, v0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 1702
    invoke-virtual {v6, v1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setMimeType(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v0

    .line 1703
    invoke-virtual {v0, v2}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v0

    .line 1704
    invoke-virtual {v0, v3}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setSelectionFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v0

    .line 1705
    invoke-virtual {v0, v4}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setRoleFlags(I)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v0

    .line 1706
    invoke-virtual {v0, v5}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object v0

    .line 1707
    invoke-virtual {v0, p0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->setId(Ljava/lang/String;)Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    move-result-object p0

    .line 1708
    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public buildUpon()Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;
    .locals 2

    .line 1641
    new-instance v0, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroidx/media3/common/MediaItem$SubtitleConfiguration;Landroidx/media3/common/MediaItem$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1649
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1653
    :cond_1
    check-cast p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1655
    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    .line 1656
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    .line 1657
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iget v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    iget v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iget-object v3, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    .line 1660
    invoke-static {v1, v3}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    .line 1661
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
    .locals 3

    iget-object v0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1666
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 1667
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    .line 1668
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    .line 1671
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    .line 1672
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 1714
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_URI:Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    .line 1715
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_MIME_TYPE:Ljava/lang/String;

    .line 1717
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LANGUAGE:Ljava/lang/String;

    .line 1720
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->selectionFlags:I

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_SELECTION_FLAGS:Ljava/lang/String;

    .line 1723
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->roleFlags:I

    if-eqz v1, :cond_3

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ROLE_FLAGS:Ljava/lang/String;

    .line 1726
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iget-object v1, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v2, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_LABEL:Ljava/lang/String;

    .line 1729
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    if-eqz p0, :cond_5

    sget-object v1, Landroidx/media3/common/MediaItem$SubtitleConfiguration;->FIELD_ID:Ljava/lang/String;

    .line 1732
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method
