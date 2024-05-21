.class public final Landroidx/media3/common/StreamKey;
.super Ljava/lang/Object;
.source "StreamKey.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.implements Landroidx/media3/common/Bundleable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/media3/common/StreamKey;",
        ">;",
        "Landroid/os/Parcelable;",
        "Landroidx/media3/common/Bundleable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media3/common/StreamKey;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_GROUP_INDEX:Ljava/lang/String;

.field private static final FIELD_PERIOD_INDEX:Ljava/lang/String;

.field private static final FIELD_STREAM_INDEX:Ljava/lang/String;


# instance fields
.field public final groupIndex:I

.field public final periodIndex:I

.field public final streamIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 134
    new-instance v0, Landroidx/media3/common/StreamKey$1;

    invoke-direct {v0}, Landroidx/media3/common/StreamKey$1;-><init>()V

    sput-object v0, Landroidx/media3/common/StreamKey;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    .line 150
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 151
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    const/4 v0, 0x2

    .line 152
    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/common/StreamKey;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    iput p2, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    iput p3, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Landroidx/media3/common/StreamKey;
    .locals 5

    .line 174
    new-instance v0, Landroidx/media3/common/StreamKey;

    sget-object v1, Landroidx/media3/common/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    const/4 v2, 0x0

    .line 175
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sget-object v3, Landroidx/media3/common/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 176
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Landroidx/media3/common/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v4, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v3, p0}, Landroidx/media3/common/StreamKey;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Landroidx/media3/common/StreamKey;)I
    .locals 2

    iget v0, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 110
    iget v1, p1, Landroidx/media3/common/StreamKey;->periodIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 112
    iget v1, p1, Landroidx/media3/common/StreamKey;->groupIndex:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 114
    iget p1, p1, Landroidx/media3/common/StreamKey;->streamIndex:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Landroidx/media3/common/StreamKey;

    invoke-virtual {p0, p1}, Landroidx/media3/common/StreamKey;->compareTo(Landroidx/media3/common/StreamKey;)I

    move-result p0

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    check-cast p1, Landroidx/media3/common/StreamKey;

    iget v2, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 93
    iget v3, p1, Landroidx/media3/common/StreamKey;->periodIndex:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    iget v3, p1, Landroidx/media3/common/StreamKey;->groupIndex:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    iget p1, p1, Landroidx/media3/common/StreamKey;->streamIndex:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    if-eqz v1, :cond_0

    sget-object v2, Landroidx/media3/common/StreamKey;->FIELD_PERIOD_INDEX:Ljava/lang/String;

    .line 158
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget v1, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    if-eqz v1, :cond_1

    sget-object v2, Landroidx/media3/common/StreamKey;->FIELD_GROUP_INDEX:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    if-eqz p0, :cond_2

    sget-object v1, Landroidx/media3/common/StreamKey;->FIELD_STREAM_INDEX:Ljava/lang/String;

    .line 164
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroidx/media3/common/StreamKey;->periodIndex:I

    .line 129
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroidx/media3/common/StreamKey;->groupIndex:I

    .line 130
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroidx/media3/common/StreamKey;->streamIndex:I

    .line 131
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
