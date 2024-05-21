.class public final synthetic Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/network/LottieNetworkCacheProvider;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getCacheDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/L$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/airbnb/lottie/L;->lambda$networkCache$0(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method
