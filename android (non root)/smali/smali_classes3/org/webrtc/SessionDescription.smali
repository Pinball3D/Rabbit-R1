.class public Lorg/webrtc/SessionDescription;
.super Ljava/lang/Object;
.source "SessionDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/SessionDescription$Type;
    }
.end annotation


# instance fields
.field public final description:Ljava/lang/String;

.field public final type:Lorg/webrtc/SessionDescription$Type;


# direct methods
.method public constructor <init>(Lorg/webrtc/SessionDescription$Type;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    iput-object p2, p0, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/SessionDescription;->description:Ljava/lang/String;

    return-object p0
.end method

.method getTypeInCanonicalForm()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/webrtc/SessionDescription;->type:Lorg/webrtc/SessionDescription$Type;

    .line 54
    invoke-virtual {p0}, Lorg/webrtc/SessionDescription$Type;->canonicalForm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
