.class public final Landroidx/media3/common/TrackGroup;
.super Ljava/lang/Object;
.source "TrackGroup.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/TrackGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_FORMATS:Ljava/lang/String;

.field private static final FIELD_ID:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TrackGroup"


# instance fields
.field private final formats:[Landroidx/media3/common/Format;

.field private hashCode:I

.field public final id:Ljava/lang/String;

.field public final length:I

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 163
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    const/4 v0, 0x1

    .line 164
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    .line 181
    new-instance v0, Landroidx/media3/common/TrackGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/TrackGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/TrackGroup;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 88
    array-length p1, p2

    iput p1, p0, Landroidx/media3/common/TrackGroup;->length:I

    .line 89
    aget-object p1, p2, v1

    iget-object p1, p1, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 91
    aget-object p1, p2, v1

    iget-object p1, p1, Landroidx/media3/common/Format;->containerMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p1

    :cond_1
    iput p1, p0, Landroidx/media3/common/TrackGroup;->type:I

    .line 94
    invoke-direct {p0}, Landroidx/media3/common/TrackGroup;->verifyCorrectness()V

    return-void
.end method

.method public varargs constructor <init>([Landroidx/media3/common/Format;)V
    .locals 1

    const-string v0, ""

    .line 74
    invoke-direct {p0, v0, p1}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/TrackGroup;
    .locals 3

    sget-object v0, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    .line 183
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_0
    sget-object v1, Landroidx/media3/common/Format;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    invoke-static {v1, v0}, Landroidx/media3/common/util/BundleableUtil;->fromBundleList(Landroidx/media3/common/Bundleable$Creator;Ljava/util/List;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    sget-object v1, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    const-string v2, ""

    .line 188
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 189
    new-instance v1, Landroidx/media3/common/TrackGroup;

    const/4 v2, 0x0

    new-array v2, v2, [Landroidx/media3/common/Format;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/media3/common/Format;

    invoke-direct {v1, p0, v0}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object v1
.end method

.method private static logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 234
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Different "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " combined in one TrackGroup: \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' (track 0) and \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' (track "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string p0, "TrackGroup"

    const-string p1, ""

    invoke-static {p0, p1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "und"

    .line 221
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method private static normalizeRoleFlags(I)I
    .locals 0

    or-int/lit16 p0, p0, 0x4000

    return p0
.end method

.method private verifyCorrectness()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    const/4 v1, 0x0

    .line 197
    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 198
    aget-object v2, v2, v1

    iget v2, v2, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v2}, Landroidx/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 199
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 200
    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    invoke-static {v4}, Landroidx/media3/common/TrackGroup;->normalizeLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 201
    aget-object v0, v0, v1

    iget-object v0, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object p0, p0, v3

    iget-object p0, p0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    const-string v1, "languages"

    invoke-static {v1, v0, p0, v3}, Landroidx/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_0
    iget-object v4, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 208
    aget-object v4, v4, v3

    iget v4, v4, Landroidx/media3/common/Format;->roleFlags:I

    invoke-static {v4}, Landroidx/media3/common/TrackGroup;->normalizeRoleFlags(I)I

    move-result v4

    if-eq v2, v4, :cond_1

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 209
    aget-object v0, v0, v1

    iget v0, v0, Landroidx/media3/common/Format;->roleFlags:I

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    aget-object p0, p0, v3

    iget p0, p0, Landroidx/media3/common/Format;->roleFlags:I

    .line 212
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "role flags"

    .line 209
    invoke-static {v1, v0, p0, v3}, Landroidx/media3/common/TrackGroup;->logErrorMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public copyWithId(Ljava/lang/String;)Landroidx/media3/common/TrackGroup;
    .locals 1

    .line 106
    new-instance v0, Landroidx/media3/common/TrackGroup;

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-direct {v0, p1, p0}, Landroidx/media3/common/TrackGroup;-><init>(Ljava/lang/String;[Landroidx/media3/common/Format;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    check-cast p1, Landroidx/media3/common/TrackGroup;

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 159
    iget-object v3, p1, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    iget-object p1, p1, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getFormat(I)Landroidx/media3/common/Format;
    .locals 0

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 117
    aget-object p0, p0, p1

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 143
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 144
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    :cond_0
    iget p0, p0, Landroidx/media3/common/TrackGroup;->hashCode:I

    return p0
.end method

.method public indexOf(Landroidx/media3/common/Format;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 131
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 132
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 7

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Landroidx/media3/common/TrackGroup;->formats:[Landroidx/media3/common/Format;

    .line 171
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const/4 v6, 0x1

    .line 172
    invoke-virtual {v5, v6}, Landroidx/media3/common/Format;->toBundle(Z)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/media3/common/TrackGroup;->FIELD_FORMATS:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    sget-object v1, Landroidx/media3/common/TrackGroup;->FIELD_ID:Ljava/lang/String;

    iget-object p0, p0, Landroidx/media3/common/TrackGroup;->id:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
