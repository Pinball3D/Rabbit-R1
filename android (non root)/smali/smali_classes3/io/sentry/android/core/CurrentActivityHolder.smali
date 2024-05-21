.class public Lio/sentry/android/core/CurrentActivityHolder;
.super Ljava/lang/Object;
.source "CurrentActivityHolder.java"


# static fields
.field private static final instance:Lio/sentry/android/core/CurrentActivityHolder;


# instance fields
.field private currentActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lio/sentry/android/core/CurrentActivityHolder;

    invoke-direct {v0}, Lio/sentry/android/core/CurrentActivityHolder;-><init>()V

    sput-object v0, Lio/sentry/android/core/CurrentActivityHolder;->instance:Lio/sentry/android/core/CurrentActivityHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/sentry/android/core/CurrentActivityHolder;
    .locals 1

    sget-object v0, Lio/sentry/android/core/CurrentActivityHolder;->instance:Lio/sentry/android/core/CurrentActivityHolder;

    return-object v0
.end method


# virtual methods
.method public clearActivity()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/core/CurrentActivityHolder;->currentActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method
