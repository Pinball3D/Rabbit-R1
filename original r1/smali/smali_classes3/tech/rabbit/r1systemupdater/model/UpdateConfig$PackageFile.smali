.class public Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;
.super Ljava/lang/Object;
.source "UpdateConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltech/rabbit/r1systemupdater/model/UpdateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageFile"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7943L


# instance fields
.field private mFilename:Ljava/lang/String;

.field private mOffset:J

.field private mSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mFilename:Ljava/lang/String;

    iput-wide p2, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mOffset:J

    iput-wide p4, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mSize:J

    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mFilename:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()J
    .locals 2

    iget-wide v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mOffset:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Ltech/rabbit/r1systemupdater/model/UpdateConfig$PackageFile;->mSize:J

    return-wide v0
.end method
