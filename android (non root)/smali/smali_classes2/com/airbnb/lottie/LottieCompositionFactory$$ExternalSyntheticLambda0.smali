.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/io/InputStream;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$0:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonInputStream$5(Ljava/io/InputStream;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
