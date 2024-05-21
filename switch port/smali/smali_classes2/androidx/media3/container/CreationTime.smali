.class public final Landroidx/media3/container/CreationTime;
.super Ljava/lang/Object;
.source "CreationTime.java"

# interfaces
.implements Landroidx/media3/common/Metadata$Entry;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/container/CreationTime;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final timestampMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroidx/media3/container/CreationTime$1;

    invoke-direct {v0}, Landroidx/media3/container/CreationTime$1;-><init>()V

    sput-object v0, Landroidx/media3/container/CreationTime;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroidx/media3/container/CreationTime$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/media3/container/CreationTime;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 48
    :cond_0
    instance-of v1, p1, Landroidx/media3/container/CreationTime;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-wide v3, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    .line 52
    check-cast p1, Landroidx/media3/container/CreationTime;

    iget-wide p0, p1, Landroidx/media3/container/CreationTime;->timestampMs:J

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    .line 57
    invoke-static {v0, v1}, Lcom/google/common/primitives/Longs;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creation time: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    const-wide v3, -0x1e4f3397400L

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const-string p0, "unset"

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroidx/media3/container/CreationTime;->timestampMs:J

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
