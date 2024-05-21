.class public Lcom/airbnb/lottie/network/DefaultLottieFetchResult;
.super Ljava/lang/Object;
.source "DefaultLottieFetchResult.java"

# interfaces
.implements Lcom/airbnb/lottie/network/LottieFetchResult;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method private getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 66
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :catch_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 66
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 70
    :catch_1
    throw p1
.end method


# virtual methods
.method public bodyByteStream()Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 34
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 52
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method

.method public contentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 38
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public error()Ljava/lang/String;
    .locals 2

    const-string v0, "Unable to fetch "

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Failed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {p0, v1}, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->getErrorFromConnection(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "get error failed "

    .line 46
    invoke-static {v0, p0}, Lcom/airbnb/lottie/utils/Logger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isSuccessful()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/airbnb/lottie/network/DefaultLottieFetchResult;->connection:Ljava/net/HttpURLConnection;

    .line 27
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    div-int/lit8 p0, p0, 0x64
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
