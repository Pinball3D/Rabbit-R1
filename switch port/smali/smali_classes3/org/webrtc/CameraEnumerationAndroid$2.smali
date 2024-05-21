.class Lorg/webrtc/CameraEnumerationAndroid$2;
.super Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lorg/webrtc/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator<",
        "Lorg/webrtc/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$requestedHeight:I

.field final synthetic val$requestedWidth:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lorg/webrtc/CameraEnumerationAndroid$2;->val$requestedWidth:I

    iput p2, p0, Lorg/webrtc/CameraEnumerationAndroid$2;->val$requestedHeight:I

    const/4 p1, 0x0

    .line 191
    invoke-direct {p0, p1}, Lorg/webrtc/CameraEnumerationAndroid$ClosestComparator;-><init>(Lorg/webrtc/CameraEnumerationAndroid$1;)V

    return-void
.end method


# virtual methods
.method bridge synthetic diff(Ljava/lang/Object;)I
    .locals 0

    .line 191
    check-cast p1, Lorg/webrtc/Size;

    invoke-virtual {p0, p1}, Lorg/webrtc/CameraEnumerationAndroid$2;->diff(Lorg/webrtc/Size;)I

    move-result p0

    return p0
.end method

.method diff(Lorg/webrtc/Size;)I
    .locals 2

    iget v0, p0, Lorg/webrtc/CameraEnumerationAndroid$2;->val$requestedWidth:I

    .line 194
    iget v1, p1, Lorg/webrtc/Size;->width:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lorg/webrtc/CameraEnumerationAndroid$2;->val$requestedHeight:I

    iget p1, p1, Lorg/webrtc/Size;->height:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
