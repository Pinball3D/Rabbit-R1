.class public Ltech/rabbit/r1systemupdater/model/UpdateConfig;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Ltech/rabbit/r1systemupdater/model/UpdateConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAuthorization:Ljava/lang/String;

.field private mInfo:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPropertyFiles:[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

.field private mRawJson:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$1;

    invoke-direct {v0}, Ltech/rabbit/r1systemupdater/model/UpdateConfig$1;-><init>()V

    sput-object v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mName:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mVersion:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mInfo:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mUrl:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mAuthorization:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    iput-object v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mPropertyFiles:[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mRawJson:Ljava/lang/String;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Ltech/rabbit/r1systemupdater/model/UpdateConfig;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 45
    new-instance v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;

    invoke-direct {v0}, Ltech/rabbit/r1systemupdater/model/UpdateConfig;-><init>()V

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "name"

    .line 48
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    iput-object v2, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mName:Ljava/lang/String;

    const-string v2, "version"

    .line 49
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    iput-object v2, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mVersion:Ljava/lang/String;

    const-string v2, "info"

    .line 50
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    iput-object v2, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mInfo:Ljava/lang/String;

    const-string v2, "url"

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mUrl:Ljava/lang/String;

    const-string v2, "auth"

    .line 52
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    iput-object v4, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mAuthorization:Ljava/lang/String;

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "property_files"

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 56
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v3, v5

    .line 57
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 58
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 59
    new-instance v12, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    const-string v6, "filename"

    .line 60
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v6, "offset"

    .line 61
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v6, "size"

    .line 62
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;-><init>(Ljava/lang/String;JJ)V

    .line 59
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    new-array v1, v5, [Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    .line 65
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    iput-object v1, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mPropertyFiles:[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    iput-object p0, v0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mRawJson:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAuthorization()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mAuthorization:Ljava/lang/String;

    return-object p0
.end method

.method public getInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyFiles()[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mPropertyFiles:[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    return-object p0
.end method

.method public getRawJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mRawJson:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mVersion:Ljava/lang/String;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mName:Ljava/lang/String;

    .line 132
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mVersion:Ljava/lang/String;

    .line 133
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mInfo:Ljava/lang/String;

    .line 134
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mUrl:Ljava/lang/String;

    .line 135
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mAuthorization:Ljava/lang/String;

    .line 136
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mPropertyFiles:[Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;

    .line 137
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig;->mRawJson:Ljava/lang/String;

    .line 138
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
