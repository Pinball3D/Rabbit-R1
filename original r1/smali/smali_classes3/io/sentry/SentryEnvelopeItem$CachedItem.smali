.class Lio/sentry/SentryEnvelopeItem$CachedItem;
.super Ljava/lang/Object;
.source "SentryEnvelopeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryEnvelopeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedItem"
.end annotation


# instance fields
.field private bytes:[B

.field private final dataFactory:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "[B>;)V"
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->dataFactory:Ljava/util/concurrent/Callable;

    return-void
.end method

.method private static orEmptyArray([B)[B
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->dataFactory:Ljava/util/concurrent/Callable;

    if-eqz v0, :cond_0

    .line 378
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    :cond_0
    iget-object p0, p0, Lio/sentry/SentryEnvelopeItem$CachedItem;->bytes:[B

    .line 380
    invoke-static {p0}, Lio/sentry/SentryEnvelopeItem$CachedItem;->orEmptyArray([B)[B

    move-result-object p0

    return-object p0
.end method
