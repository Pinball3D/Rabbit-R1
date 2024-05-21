.class public final Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;
.super Ljava/lang/Object;
.source "PlaceholderDataSource.java"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/DataSource;


# static fields
.field public static final FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

.field public static final INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;


# direct methods
.method public static synthetic $r8$lambda$Qku_15DubQGfyuKLu3QSDqilS4U()Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;
    .locals 1

    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->INSTANCE:Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;

    .line 28
    new-instance v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/android/exoplayer2/upstream/PlaceholderDataSource;->FACTORY:Lcom/google/android/exoplayer2/upstream/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplayer2/upstream/TransferListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public open(Lcom/google/android/exoplayer2/upstream/DataSpec;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PlaceholderDataSource cannot be opened"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .locals 0

    .line 44
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
