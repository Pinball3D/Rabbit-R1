.class public final synthetic Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/webrtc/EglRenderer;

.field public final synthetic f$1:Landroid/os/Looper;


# direct methods
.method public synthetic constructor <init>(Lorg/webrtc/EglRenderer;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$0:Lorg/webrtc/EglRenderer;

    iput-object p2, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$1:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$0:Lorg/webrtc/EglRenderer;

    iget-object p0, p0, Lorg/webrtc/EglRenderer$$ExternalSyntheticLambda3;->f$1:Landroid/os/Looper;

    invoke-virtual {v0, p0}, Lorg/webrtc/EglRenderer;->lambda$release$2$org-webrtc-EglRenderer(Landroid/os/Looper;)V

    return-void
.end method
