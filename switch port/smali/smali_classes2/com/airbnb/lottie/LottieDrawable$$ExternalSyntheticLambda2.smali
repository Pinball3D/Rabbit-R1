.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:Lcom/airbnb/lottie/model/KeyPath;

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Lcom/airbnb/lottie/value/LottieValueCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/model/KeyPath;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/value/LottieValueCallback;

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$1:Lcom/airbnb/lottie/model/KeyPath;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$2:Ljava/lang/Object;

    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda2;->f$3:Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$addValueCallback$17$com-airbnb-lottie-LottieDrawable(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
