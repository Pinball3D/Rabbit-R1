.class final Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;
.super Ljava/lang/Object;
.source "LottieComposition.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;
.implements Lcom/airbnb/lottie/Cancellable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;",
        "Lcom/airbnb/lottie/Cancellable;"
    }
.end annotation


# instance fields
.field private cancelled:Z

.field private final listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;


# direct methods
.method private constructor <init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;)V
    .locals 1

    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    iput-object p1, p0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;Lcom/airbnb/lottie/LottieComposition$1;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;-><init>(Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    return-void
.end method

.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->listener:Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .line 395
    invoke-interface {p0, p1}, Lcom/airbnb/lottie/OnCompositionLoadedListener;->onCompositionLoaded(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 381
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieComposition$Factory$ListenerAdapter;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
