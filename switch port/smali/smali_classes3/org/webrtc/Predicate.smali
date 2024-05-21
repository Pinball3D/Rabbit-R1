.class public interface abstract Lorg/webrtc/Predicate;
.super Ljava/lang/Object;
.source "Predicate.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public and(Lorg/webrtc/Predicate;)Lorg/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/Predicate<",
            "-TT;>;)",
            "Lorg/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 52
    new-instance v0, Lorg/webrtc/Predicate$2;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/Predicate$2;-><init>(Lorg/webrtc/Predicate;Lorg/webrtc/Predicate;)V

    return-object v0
.end method

.method public negate()Lorg/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/webrtc/Predicate$3;

    invoke-direct {v0, p0}, Lorg/webrtc/Predicate$3;-><init>(Lorg/webrtc/Predicate;)V

    return-object v0
.end method

.method public or(Lorg/webrtc/Predicate;)Lorg/webrtc/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/webrtc/Predicate<",
            "-TT;>;)",
            "Lorg/webrtc/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 35
    new-instance v0, Lorg/webrtc/Predicate$1;

    invoke-direct {v0, p0, p1}, Lorg/webrtc/Predicate$1;-><init>(Lorg/webrtc/Predicate;Lorg/webrtc/Predicate;)V

    return-object v0
.end method

.method public abstract test(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
