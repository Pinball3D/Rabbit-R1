.class public final Landroidx/media3/datasource/PlaceholderDataSource;
.super Ljava/lang/Object;
.source "PlaceholderDataSource.java"

# interfaces
.implements Landroidx/media3/datasource/DataSource;


# static fields
.field public static final FACTORY:Landroidx/media3/datasource/DataSource$Factory;

.field public static final INSTANCE:Landroidx/media3/datasource/PlaceholderDataSource;


# direct methods
.method public static synthetic $r8$lambda$vtmV5Njo8kR2KAgmyl6w_Qrh-mI()Landroidx/media3/datasource/PlaceholderDataSource;
    .locals 1

    new-instance v0, Landroidx/media3/datasource/PlaceholderDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/PlaceholderDataSource;-><init>()V

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Landroidx/media3/datasource/PlaceholderDataSource;

    invoke-direct {v0}, Landroidx/media3/datasource/PlaceholderDataSource;-><init>()V

    sput-object v0, Landroidx/media3/datasource/PlaceholderDataSource;->INSTANCE:Landroidx/media3/datasource/PlaceholderDataSource;

    .line 30
    new-instance v0, Landroidx/media3/datasource/PlaceholderDataSource$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/datasource/PlaceholderDataSource$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/media3/datasource/PlaceholderDataSource;->FACTORY:Landroidx/media3/datasource/DataSource$Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addTransferListener(Landroidx/media3/datasource/TransferListener;)V
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

.method public open(Landroidx/media3/datasource/DataSpec;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    new-instance p0, Ljava/io/IOException;

    const-string p1, "PlaceholderDataSource cannot be opened"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([BII)I
    .locals 0

    .line 46
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
