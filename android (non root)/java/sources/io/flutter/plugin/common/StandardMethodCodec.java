package io.flutter.plugin.common;

import io.flutter.Log;
import io.flutter.plugin.common.StandardMessageCodec;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public final class StandardMethodCodec implements MethodCodec {
    public static final StandardMethodCodec INSTANCE = new StandardMethodCodec(StandardMessageCodec.INSTANCE);
    private final StandardMessageCodec messageCodec;

    public StandardMethodCodec(StandardMessageCodec standardMessageCodec) {
        this.messageCodec = standardMessageCodec;
    }

    @Override // io.flutter.plugin.common.MethodCodec
    public ByteBuffer encodeMethodCall(MethodCall methodCall) {
        StandardMessageCodec.ExposedByteArrayOutputStream exposedByteArrayOutputStream = new StandardMessageCodec.ExposedByteArrayOutputStream();
        this.messageCodec.writeValue(exposedByteArrayOutputStream, methodCall.method);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, methodCall.arguments);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(exposedByteArrayOutputStream.size());
        allocateDirect.put(exposedByteArrayOutputStream.buffer(), 0, exposedByteArrayOutputStream.size());
        return allocateDirect;
    }

    @Override // io.flutter.plugin.common.MethodCodec
    public MethodCall decodeMethodCall(ByteBuffer byteBuffer) {
        byteBuffer.order(ByteOrder.nativeOrder());
        Object readValue = this.messageCodec.readValue(byteBuffer);
        Object readValue2 = this.messageCodec.readValue(byteBuffer);
        if ((readValue instanceof String) && !byteBuffer.hasRemaining()) {
            return new MethodCall((String) readValue, readValue2);
        }
        throw new IllegalArgumentException("Method call corrupted");
    }

    @Override // io.flutter.plugin.common.MethodCodec
    public ByteBuffer encodeSuccessEnvelope(Object obj) {
        StandardMessageCodec.ExposedByteArrayOutputStream exposedByteArrayOutputStream = new StandardMessageCodec.ExposedByteArrayOutputStream();
        exposedByteArrayOutputStream.write(0);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, obj);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(exposedByteArrayOutputStream.size());
        allocateDirect.put(exposedByteArrayOutputStream.buffer(), 0, exposedByteArrayOutputStream.size());
        return allocateDirect;
    }

    @Override // io.flutter.plugin.common.MethodCodec
    public ByteBuffer encodeErrorEnvelope(String str, String str2, Object obj) {
        StandardMessageCodec.ExposedByteArrayOutputStream exposedByteArrayOutputStream = new StandardMessageCodec.ExposedByteArrayOutputStream();
        exposedByteArrayOutputStream.write(1);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, str);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, str2);
        if (obj instanceof Throwable) {
            this.messageCodec.writeValue(exposedByteArrayOutputStream, Log.getStackTraceString((Throwable) obj));
        } else {
            this.messageCodec.writeValue(exposedByteArrayOutputStream, obj);
        }
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(exposedByteArrayOutputStream.size());
        allocateDirect.put(exposedByteArrayOutputStream.buffer(), 0, exposedByteArrayOutputStream.size());
        return allocateDirect;
    }

    @Override // io.flutter.plugin.common.MethodCodec
    public ByteBuffer encodeErrorEnvelopeWithStacktrace(String str, String str2, Object obj, String str3) {
        StandardMessageCodec.ExposedByteArrayOutputStream exposedByteArrayOutputStream = new StandardMessageCodec.ExposedByteArrayOutputStream();
        exposedByteArrayOutputStream.write(1);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, str);
        this.messageCodec.writeValue(exposedByteArrayOutputStream, str2);
        if (obj instanceof Throwable) {
            this.messageCodec.writeValue(exposedByteArrayOutputStream, Log.getStackTraceString((Throwable) obj));
        } else {
            this.messageCodec.writeValue(exposedByteArrayOutputStream, obj);
        }
        this.messageCodec.writeValue(exposedByteArrayOutputStream, str3);
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(exposedByteArrayOutputStream.size());
        allocateDirect.put(exposedByteArrayOutputStream.buffer(), 0, exposedByteArrayOutputStream.size());
        return allocateDirect;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 == 1) goto L10;
     */
    @Override // io.flutter.plugin.common.MethodCodec
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object decodeEnvelope(java.nio.ByteBuffer r4) {
        /*
            r3 = this;
            java.nio.ByteOrder r0 = java.nio.ByteOrder.nativeOrder()
            r4.order(r0)
            byte r0 = r4.get()
            if (r0 == 0) goto L11
            r1 = 1
            if (r0 != r1) goto L4a
            goto L1e
        L11:
            io.flutter.plugin.common.StandardMessageCodec r0 = r3.messageCodec
            java.lang.Object r0 = r0.readValue(r4)
            boolean r1 = r4.hasRemaining()
            if (r1 != 0) goto L1e
            return r0
        L1e:
            io.flutter.plugin.common.StandardMessageCodec r0 = r3.messageCodec
            java.lang.Object r0 = r0.readValue(r4)
            io.flutter.plugin.common.StandardMessageCodec r1 = r3.messageCodec
            java.lang.Object r1 = r1.readValue(r4)
            io.flutter.plugin.common.StandardMessageCodec r3 = r3.messageCodec
            java.lang.Object r3 = r3.readValue(r4)
            boolean r2 = r0 instanceof java.lang.String
            if (r2 == 0) goto L4a
            if (r1 == 0) goto L3a
            boolean r2 = r1 instanceof java.lang.String
            if (r2 == 0) goto L4a
        L3a:
            boolean r4 = r4.hasRemaining()
            if (r4 != 0) goto L4a
            io.flutter.plugin.common.FlutterException r4 = new io.flutter.plugin.common.FlutterException
            java.lang.String r0 = (java.lang.String) r0
            java.lang.String r1 = (java.lang.String) r1
            r4.<init>(r0, r1, r3)
            throw r4
        L4a:
            java.lang.IllegalArgumentException r3 = new java.lang.IllegalArgumentException
            java.lang.String r4 = "Envelope corrupted"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugin.common.StandardMethodCodec.decodeEnvelope(java.nio.ByteBuffer):java.lang.Object");
    }
}
