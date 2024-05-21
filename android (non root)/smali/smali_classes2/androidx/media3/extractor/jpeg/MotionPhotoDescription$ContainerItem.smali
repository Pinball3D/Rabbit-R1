.class public final Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;
.super Ljava/lang/Object;
.source "MotionPhotoDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/jpeg/MotionPhotoDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContainerItem"
.end annotation


# instance fields
.field public final length:J

.field public final mime:Ljava/lang/String;

.field public final padding:J

.field public final semantic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->mime:Ljava/lang/String;

    iput-object p2, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->semantic:Ljava/lang/String;

    iput-wide p3, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->length:J

    iput-wide p5, p0, Landroidx/media3/extractor/jpeg/MotionPhotoDescription$ContainerItem;->padding:J

    return-void
.end method
