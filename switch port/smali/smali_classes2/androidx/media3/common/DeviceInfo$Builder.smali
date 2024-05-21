.class public final Landroidx/media3/common/DeviceInfo$Builder;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private maxVolume:I

.field private minVolume:I

.field private final playbackType:I

.field private routingControllerId:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    return-void
.end method

.method static synthetic access$100(Landroidx/media3/common/DeviceInfo$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    return p0
.end method

.method static synthetic access$200(Landroidx/media3/common/DeviceInfo$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    return p0
.end method

.method static synthetic access$300(Landroidx/media3/common/DeviceInfo$Builder;)I
    .locals 0

    .line 55
    iget p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    return p0
.end method

.method static synthetic access$400(Landroidx/media3/common/DeviceInfo$Builder;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Landroidx/media3/common/DeviceInfo;
    .locals 2

    iget v0, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    iget v1, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 123
    new-instance v0, Landroidx/media3/common/DeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/common/DeviceInfo;-><init>(Landroidx/media3/common/DeviceInfo$Builder;Landroidx/media3/common/DeviceInfo$1;)V

    return-object v0
.end method

.method public setMaxVolume(I)Landroidx/media3/common/DeviceInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->maxVolume:I

    return-object p0
.end method

.method public setMinVolume(I)Landroidx/media3/common/DeviceInfo$Builder;
    .locals 0

    iput p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->minVolume:I

    return-object p0
.end method

.method public setRoutingControllerId(Ljava/lang/String;)Landroidx/media3/common/DeviceInfo$Builder;
    .locals 1

    iget v0, p0, Landroidx/media3/common/DeviceInfo$Builder;->playbackType:I

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 115
    :goto_1
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    iput-object p1, p0, Landroidx/media3/common/DeviceInfo$Builder;->routingControllerId:Ljava/lang/String;

    return-object p0
.end method
