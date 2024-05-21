.class public Lcom/airbnb/lottie/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static INSTANCE:Lcom/airbnb/lottie/LottieLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/airbnb/lottie/utils/LogcatLogger;

    invoke-direct {v0}, Lcom/airbnb/lottie/utils/LogcatLogger;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 18
    invoke-interface {v0, p0}, Lcom/airbnb/lottie/LottieLogger;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 22
    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/LottieLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 34
    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/LottieLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static setInstance(Lcom/airbnb/lottie/LottieLogger;)V
    .locals 0

    sput-object p0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 26
    invoke-interface {v0, p0}, Lcom/airbnb/lottie/LottieLogger;->warning(Ljava/lang/String;)V

    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/airbnb/lottie/utils/Logger;->INSTANCE:Lcom/airbnb/lottie/LottieLogger;

    .line 30
    invoke-interface {v0, p0, p1}, Lcom/airbnb/lottie/LottieLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
