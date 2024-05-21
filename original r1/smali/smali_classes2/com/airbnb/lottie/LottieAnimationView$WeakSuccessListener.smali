.class Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;
.super Ljava/lang/Object;
.source "LottieAnimationView.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeakSuccessListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;"
    }
.end annotation


# instance fields
.field private final targetReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;->targetReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;->targetReference:Ljava/lang/ref/WeakReference;

    .line 88
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$WeakSuccessListener;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
