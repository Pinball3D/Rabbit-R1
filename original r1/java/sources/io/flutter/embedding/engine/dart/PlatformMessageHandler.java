package io.flutter.embedding.engine.dart;

import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public interface PlatformMessageHandler {
    void handleMessageFromDart(String str, ByteBuffer byteBuffer, int i, long j);

    void handlePlatformMessageResponse(int i, ByteBuffer byteBuffer);
}
