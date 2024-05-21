.class public final synthetic Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/zip/ZipInputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/util/zip/ZipInputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda12;->f$0:Ljava/util/zip/ZipInputStream;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieCompositionFactory$$ExternalSyntheticLambda12;->f$0:Ljava/util/zip/ZipInputStream;

    invoke-static {p0}, Lcom/airbnb/lottie/LottieCompositionFactory;->lambda$fromZipStream$14(Ljava/util/zip/ZipInputStream;)V

    return-void
.end method
