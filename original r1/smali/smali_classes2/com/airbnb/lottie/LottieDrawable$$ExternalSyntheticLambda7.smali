.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$1:I

    iget p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda7;->f$2:I

    invoke-virtual {v0, v1, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$13$com-airbnb-lottie-LottieDrawable(IILcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
