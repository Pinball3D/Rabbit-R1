.class Lorg/webrtc/Predicate$2;
.super Ljava/lang/Object;
.source "Predicate.java"

# interfaces
.implements Lorg/webrtc/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/webrtc/Predicate;->and(Lorg/webrtc/Predicate;)Lorg/webrtc/Predicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/webrtc/Predicate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/Predicate;

.field final synthetic val$other:Lorg/webrtc/Predicate;


# direct methods
.method constructor <init>(Lorg/webrtc/Predicate;Lorg/webrtc/Predicate;)V
    .locals 0

    iput-object p1, p0, Lorg/webrtc/Predicate$2;->this$0:Lorg/webrtc/Predicate;

    iput-object p2, p0, Lorg/webrtc/Predicate$2;->val$other:Lorg/webrtc/Predicate;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/webrtc/Predicate$2;->this$0:Lorg/webrtc/Predicate;

    .line 55
    invoke-interface {v0, p1}, Lorg/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/webrtc/Predicate$2;->val$other:Lorg/webrtc/Predicate;

    invoke-interface {p0, p1}, Lorg/webrtc/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
