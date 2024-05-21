.class public final Lio/sentry/UncaughtExceptionHandler$Adapter;
.super Ljava/lang/Object;
.source "UncaughtExceptionHandler.java"

# interfaces
.implements Lio/sentry/UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/UncaughtExceptionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation


# static fields
.field private static final INSTANCE:Lio/sentry/UncaughtExceptionHandler$Adapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lio/sentry/UncaughtExceptionHandler$Adapter;

    invoke-direct {v0}, Lio/sentry/UncaughtExceptionHandler$Adapter;-><init>()V

    sput-object v0, Lio/sentry/UncaughtExceptionHandler$Adapter;->INSTANCE:Lio/sentry/UncaughtExceptionHandler$Adapter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lio/sentry/UncaughtExceptionHandler;
    .locals 1

    sget-object v0, Lio/sentry/UncaughtExceptionHandler$Adapter;->INSTANCE:Lio/sentry/UncaughtExceptionHandler$Adapter;

    return-object v0
.end method


# virtual methods
.method public getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .line 29
    invoke-static {p1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method
