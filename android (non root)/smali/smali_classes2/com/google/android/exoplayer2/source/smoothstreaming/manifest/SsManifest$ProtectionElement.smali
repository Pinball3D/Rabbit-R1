.class public Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;
.super Ljava/lang/Object;
.source "SsManifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectionElement"
.end annotation


# instance fields
.field public final data:[B

.field public final trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

.field public final uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;[B[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->uuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->data:[B

    iput-object p3, p0, Lcom/google/android/exoplayer2/source/smoothstreaming/manifest/SsManifest$ProtectionElement;->trackEncryptionBoxes:[Lcom/google/android/exoplayer2/extractor/mp4/TrackEncryptionBox;

    return-void
.end method
