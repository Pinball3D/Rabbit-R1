.class public final Lio/sentry/internal/gestures/UiElement;
.super Ljava/lang/Object;
.source "UiElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/internal/gestures/UiElement$Type;
    }
.end annotation


# instance fields
.field final className:Ljava/lang/String;

.field final origin:Ljava/lang/String;

.field final resourceName:Ljava/lang/String;

.field final tag:Ljava/lang/String;

.field final viewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/internal/gestures/UiElement;->viewRef:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lio/sentry/internal/gestures/UiElement;->className:Ljava/lang/String;

    iput-object p3, p0, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    iput-object p4, p0, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    iput-object p5, p0, Lio/sentry/internal/gestures/UiElement;->origin:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    check-cast p1, Lio/sentry/internal/gestures/UiElement;

    iget-object v2, p0, Lio/sentry/internal/gestures/UiElement;->className:Ljava/lang/String;

    .line 59
    iget-object v3, p1, Lio/sentry/internal/gestures/UiElement;->className:Ljava/lang/String;

    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    iget-object v3, p1, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    .line 60
    invoke-static {v2, v3}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    iget-object p1, p1, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    .line 61
    invoke-static {p0, p1}, Lio/sentry/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->className:Ljava/lang/String;

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    const-string v0, "UiElement.tag can\'t be null"

    .line 49
    invoke-static {p0, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->origin:Ljava/lang/String;

    return-object p0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public getView()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->viewRef:Ljava/lang/ref/WeakReference;

    .line 65
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lio/sentry/internal/gestures/UiElement;->viewRef:Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lio/sentry/internal/gestures/UiElement;->resourceName:Ljava/lang/String;

    iget-object p0, p0, Lio/sentry/internal/gestures/UiElement;->tag:Ljava/lang/String;

    .line 70
    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lio/sentry/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
