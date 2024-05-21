.class public final synthetic Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/airbnb/lottie/LottieDrawable$LazyCompositionTask;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/LottieDrawable;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$3:Z

    return-void
.end method


# virtual methods
.method public final run(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 3

    iget-object v0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$0:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$2:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/airbnb/lottie/LottieDrawable$$ExternalSyntheticLambda17;->f$3:Z

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/airbnb/lottie/LottieDrawable;->lambda$setMinAndMaxFrame$12$com-airbnb-lottie-LottieDrawable(Ljava/lang/String;Ljava/lang/String;ZLcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
