.class Lcom/airbnb/lottie/LottieConfig$Builder$1;
.super Ljava/lang/Object;
.source "LottieConfig.java"

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/LottieConfig$Builder;->setNetworkCacheDir(Ljava/io/File;)Lcom/airbnb/lottie/LottieConfig$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/LottieConfig$Builder;

.field final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieConfig$Builder;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->this$0:Lcom/airbnb/lottie/LottieConfig$Builder;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCacheDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieConfig$Builder$1;->val$file:Ljava/io/File;

    return-object p0

    .line 70
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "cache file must be a directory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
