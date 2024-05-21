.class Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;
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
    name = "WeakFailureListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Ljava/lang/Throwable;",
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

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->targetReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 98
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->onResult(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResult(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView$WeakFailureListener;->targetReference:Ljava/lang/ref/WeakReference;

    .line 107
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez p0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {p0}, Lcom/airbnb/lottie/LottieAnimationView;->access$000(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    invoke-static {p0}, Lcom/airbnb/lottie/LottieAnimationView;->access$000(Lcom/airbnb/lottie/LottieAnimationView;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setImageResource(I)V

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/airbnb/lottie/LottieAnimationView;->access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/airbnb/lottie/LottieAnimationView;->access$200()Lcom/airbnb/lottie/LottieListener;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/airbnb/lottie/LottieAnimationView;->access$100(Lcom/airbnb/lottie/LottieAnimationView;)Lcom/airbnb/lottie/LottieListener;

    move-result-object p0

    .line 116
    :goto_0
    invoke-interface {p0, p1}, Lcom/airbnb/lottie/LottieListener;->onResult(Ljava/lang/Object;)V

    return-void
.end method
