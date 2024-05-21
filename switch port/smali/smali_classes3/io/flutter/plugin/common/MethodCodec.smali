.class public interface abstract Lio/flutter/plugin/common/MethodCodec;
.super Ljava/lang/Object;
.source "MethodCodec.java"


# virtual methods
.method public abstract decodeEnvelope(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
.end method

.method public abstract decodeMethodCall(Ljava/nio/ByteBuffer;)Lio/flutter/plugin/common/MethodCall;
.end method

.method public abstract encodeErrorEnvelope(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
.end method

.method public abstract encodeErrorEnvelopeWithStacktrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/nio/ByteBuffer;
.end method

.method public abstract encodeMethodCall(Lio/flutter/plugin/common/MethodCall;)Ljava/nio/ByteBuffer;
.end method

.method public abstract encodeSuccessEnvelope(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
.end method
