.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$1:F

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$2:F

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$1:F

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda11;->f$2:F

    invoke-virtual {v0, v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxProgress$14$com-airbnb-lottie-LottieDrawable(FFLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
