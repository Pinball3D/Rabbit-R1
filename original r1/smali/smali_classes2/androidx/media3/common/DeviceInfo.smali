.class public final Landroidx/media3/common/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/DeviceInfo$Builder;,
        Landroidx/media3/common/DeviceInfo$PlaybackType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroidx/media3/common/Bundleable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/common/Bundleable$Creator<",
            "Landroidx/media3/common/DeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_MAX_VOLUME:Ljava/lang/String;

.field private static final FIELD_MIN_VOLUME:Ljava/lang/String;

.field private static final FIELD_PLAYBACK_TYPE:Ljava/lang/String;

.field private static final FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final UNKNOWN:Landroidx/media3/common/DeviceInfo;


# instance fields
.field public final maxVolume:I

.field public final minVolume:I

.field public final playbackType:I

.field public final routingControllerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/DeviceInfo;->UNKNOWN:Landroidx/media3/common/DeviceInfo;

    .line 191
    invoke-static {v1}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v0, 0x1

    .line 192
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    const/4 v0, 0x2

    .line 193
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    const/4 v0, 0x3

    .line 194
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    .line 217
    new-instance v0, Landroidx/media3/common/DeviceInfo$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/common/DeviceInfo$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/common/DeviceInfo;->CREATOR:Landroidx/media3/common/Bundleable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v0, p1}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    invoke-virtual {v0, p2}, Landroidx/media3/common/DeviceInfo$Builder;->setMinVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/media3/common/DeviceInfo;-><init>(Landroidx/media3/common/DeviceInfo$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/DeviceInfo$Builder;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Landroidx/media3/common/DeviceInfo$Builder;->access$100(Landroidx/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    .line 159
    invoke-static {p1}, Landroidx/media3/common/DeviceInfo$Builder;->access$200(Landroidx/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    .line 160
    invoke-static {p1}, Landroidx/media3/common/DeviceInfo$Builder;->access$300(Landroidx/media3/common/DeviceInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    .line 161
    invoke-static {p1}, Landroidx/media3/common/DeviceInfo$Builder;->access$400(Landroidx/media3/common/DeviceInfo$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/DeviceInfo$Builder;Landroidx/media3/common/DeviceInfo$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/media3/common/DeviceInfo;-><init>(Landroidx/media3/common/DeviceInfo$Builder;)V

    return-void
.end method

.method static synthetic lambda$static$0(Landroid/os/Bundle;)Landroidx/media3/common/DeviceInfo;
    .locals 4

    sget-object v0, Landroidx/media3/common/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    const/4 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Landroidx/media3/common/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    .line 221
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget-object v3, Landroidx/media3/common/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    .line 222
    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Landroidx/media3/common/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    .line 223
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 224
    new-instance v3, Landroidx/media3/common/DeviceInfo$Builder;

    invoke-direct {v3, v0}, Landroidx/media3/common/DeviceInfo$Builder;-><init>(I)V

    .line 225
    invoke-virtual {v3, v2}, Landroidx/media3/common/DeviceInfo$Builder;->setMinVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v1}, Landroidx/media3/common/DeviceInfo$Builder;->setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object v0

    .line 227
    invoke-virtual {v0, p0}, Landroidx/media3/common/DeviceInfo$Builder;->setRoutingControllerId(Ljava/lang/String;)Landroidx/media3/common/DeviceInfo$Builder;

    move-result-object p0

    .line 228
    invoke-virtual {p0}, Landroidx/media3/common/DeviceInfo$Builder;->build()Landroidx/media3/common/DeviceInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 169
    :cond_0
    instance-of v1, p1, Landroidx/media3/common/DeviceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 172
    :cond_1
    check-cast p1, Landroidx/media3/common/DeviceInfo;

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    .line 173
    iget v3, p1, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    iget v3, p1, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    iget v3, p1, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    .line 176
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
    .locals 2

    const/16 v0, 0x20f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 199
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroidx/media3/common/DeviceInfo;->playbackType:I

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/DeviceInfo;->FIELD_PLAYBACK_TYPE:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v1, p0, Landroidx/media3/common/DeviceInfo;->minVolume:I

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/DeviceInfo;->FIELD_MIN_VOLUME:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v1, p0, Landroidx/media3/common/DeviceInfo;->maxVolume:I

    if-eqz v1, :cond_2

    sget-object v2, Landroidx/media3/common/DeviceInfo;->FIELD_MAX_VOLUME:Ljava/lang/String;

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-object p0, p0, Landroidx/media3/common/DeviceInfo;->routingControllerId:Ljava/lang/String;

    if-eqz p0, :cond_3

    sget-object v1, Landroidx/media3/common/DeviceInfo;->FIELD_ROUTING_CONTROLLER_ID:Ljava/lang/String;

    .line 210
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method
