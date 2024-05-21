.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda14;->f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda14;->f$0:Lcom/airbnb/lottie/parser/moshi/JsonReader;

    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromJsonReader$10(Lcom/airbnb/lottie/parser/moshi/JsonReader;)V

    return-void
.end method
