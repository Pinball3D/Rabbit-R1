.class public final synthetic Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/nio/ByteBuffer;


# direct methods
.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;->f$0:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lorg/webrtc/YuvConverter$$ExternalSyntheticLambda0;->f$0:Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lorg/webrtc/YuvConverter;->lambda$convertInternal$0(Ljava/nio/ByteBuffer;)V

    return-void
.end method
