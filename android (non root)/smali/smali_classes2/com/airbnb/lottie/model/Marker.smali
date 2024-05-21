.class public Lcom/airbnb/lottie/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# static fields
.field private static final CARRIAGE_RETURN:Ljava/lang/String; = "\r"


# instance fields
.field public final durationFrames:F

.field private final name:Ljava/lang/String;

.field public final startFrame:F


# direct methods
.method public constructor <init>(Ljava/lang/String;FF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    iput p3, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    iput p2, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    return-void
.end method


# virtual methods
.method public getDurationFrames()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/model/Marker;->durationFrames:F

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getStartFrame()F
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/model/Marker;->startFrame:F

    return p0
.end method

.method public matchesName(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    const-string v2, "\r"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/airbnb/lottie/model/Marker;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method
