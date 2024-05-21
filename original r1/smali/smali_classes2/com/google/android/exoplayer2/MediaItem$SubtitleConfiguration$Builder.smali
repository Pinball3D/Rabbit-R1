.class public final Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private id:Ljava/lang/String;

.field private label:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;

.field private roleFlags:I

.field private selectionFlags:I

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;)V
    .locals 1

    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1336
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    .line 1337
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    .line 1338
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    .line 1339
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->selectionFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    .line 1340
    iget v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->roleFlags:I

    iput v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    .line 1341
    iget-object v0, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    .line 1342
    iget-object p1, p1, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;Lcom/google/android/exoplayer2/MediaItem$1;)V
    .locals 0

    .line 1317
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Lcom/google/android/exoplayer2/MediaItem$Subtitle;
    .locals 0

    .line 1317
    invoke-direct {p0}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->buildSubtitle()Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2900(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Landroid/net/Uri;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    .line 1317
    iget p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return p0
.end method

.method static synthetic access$3300(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)I
    .locals 0

    .line 1317
    iget p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return p0
.end method

.method static synthetic access$3400(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;)Ljava/lang/String;
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method private buildSubtitle()Lcom/google/android/exoplayer2/MediaItem$Subtitle;
    .locals 2

    .line 1400
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$Subtitle;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$Subtitle;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;
    .locals 2

    .line 1396
    new-instance v0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration;-><init>(Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;Lcom/google/android/exoplayer2/MediaItem$1;)V

    return-object v0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->id:Ljava/lang/String;

    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->label:Ljava/lang/String;

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->language:Ljava/lang/String;

    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public setRoleFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->roleFlags:I

    return-object p0
.end method

.method public setSelectionFlags(I)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->selectionFlags:I

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/MediaItem$SubtitleConfiguration$Builder;->uri:Landroid/net/Uri;

    return-object p0
.end method
