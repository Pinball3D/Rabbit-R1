.class public Lorg/webrtc/CameraEnumerationAndroid;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;,
        Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat;
    }
.end annotation


# static fields
.field static final COMMON_RESOLUTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/webrtc/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraEnumerationAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    new-array v1, v1, [Lorg/webrtc/Size;

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x78

    const/16 v4, 0xa0

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0xf0

    invoke-direct {v2, v3, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0x140

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lorg/webrtc/Size;

    const/16 v5, 0x190

    invoke-direct {v2, v5, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x1e0

    invoke-direct {v2, v3, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v4, 0x4

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0x168

    const/16 v5, 0x280

    invoke-direct {v2, v5, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v4, 0x5

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    invoke-direct {v2, v5, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v4, 0x6

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0x300

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/4 v4, 0x7

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0x356

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x320

    const/16 v4, 0x258

    invoke-direct {v2, v3, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x21c

    const/16 v6, 0x3c0

    invoke-direct {v2, v6, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    invoke-direct {v2, v6, v5}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x240

    const/16 v5, 0x400

    invoke-direct {v2, v5, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    invoke-direct {v2, v5, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x2d0

    const/16 v4, 0x500

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    invoke-direct {v2, v4, v5}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x438

    const/16 v4, 0x780

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0x5a0

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v4, 0x11

    aput-object v2, v1, v4

    new-instance v2, Lorg/webrtc/Size;

    const/16 v4, 0xa00

    invoke-direct {v2, v4, v3}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lorg/webrtc/Size;

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Lorg/webrtc/Size;-><init>(II)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClosestSupportedFramerateRange(Ljava/util/List;I)Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;I)",
            "Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    .line 159
    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$1;

    invoke-direct {v0, p1}, Lorg/webrtc/CameraEnumerationAndroid$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/webrtc/Size;",
            ">;II)",
            "Lorg/webrtc/Size;"
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/webrtc/CameraEnumerationAndroid$2;

    invoke-direct {v0, p1, p2}, Lorg/webrtc/CameraEnumerationAndroid$2;-><init>(II)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/webrtc/Size;

    return-object p0
.end method

.method static reportCameraResolution(Lorg/webrtc/Histogram;Lorg/webrtc/Size;)V
    .locals 1

    sget-object v0, Lorg/webrtc/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    .line 201
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 204
    invoke-virtual {p0, p1}, Lorg/webrtc/Histogram;->addSample(I)V

    return-void
.end method
