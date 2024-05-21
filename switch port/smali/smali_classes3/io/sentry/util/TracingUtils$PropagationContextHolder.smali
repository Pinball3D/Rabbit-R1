.class final Lio/sentry/util/TracingUtils$PropagationContextHolder;
.super Ljava/lang/Object;
.source "TracingUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/TracingUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PropagationContextHolder"
.end annotation


# instance fields
.field private propagationContext:Lio/sentry/PropagationContext;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/util/TracingUtils$PropagationContextHolder;->propagationContext:Lio/sentry/PropagationContext;

    return-void
.end method

.method synthetic constructor <init>(Lio/sentry/util/TracingUtils$1;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lio/sentry/util/TracingUtils$PropagationContextHolder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lio/sentry/util/TracingUtils$PropagationContextHolder;)Lio/sentry/PropagationContext;
    .locals 0

    .line 96
    iget-object p0, p0, Lio/sentry/util/TracingUtils$PropagationContextHolder;->propagationContext:Lio/sentry/PropagationContext;

    return-object p0
.end method

.method static synthetic access$102(Lio/sentry/util/TracingUtils$PropagationContextHolder;Lio/sentry/PropagationContext;)Lio/sentry/PropagationContext;
    .locals 0

    .line 96
    iput-object p1, p0, Lio/sentry/util/TracingUtils$PropagationContextHolder;->propagationContext:Lio/sentry/PropagationContext;

    return-object p1
.end method
