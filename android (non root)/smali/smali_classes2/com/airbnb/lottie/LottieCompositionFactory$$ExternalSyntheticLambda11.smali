.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/util/zip/ZipInputStream;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$1:Ljava/util/zip/ZipInputStream;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$1:Ljava/util/zip/ZipInputStream;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda11;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$13(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
