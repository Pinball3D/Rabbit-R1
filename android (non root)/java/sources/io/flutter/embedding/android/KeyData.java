package io.flutter.embedding.android;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class KeyData {
    private static final int BYTES_PER_FIELD = 8;
    public static final String CHANNEL = "flutter/keydata";
    private static final int FIELD_COUNT = 6;
    private static final String TAG = "KeyData";
    String character;
    DeviceType deviceType;
    long logicalKey;
    long physicalKey;
    boolean synthesized;
    long timestamp;
    Type type;

    /* loaded from: classes3.dex */
    public enum Type {
        kDown(0),
        kUp(1),
        kRepeat(2);

        private long value;

        public long getValue() {
            return this.value;
        }

        Type(long j) {
            this.value = j;
        }

        static Type fromLong(long j) {
            int i = (int) j;
            if (i == 0) {
                return kDown;
            }
            if (i == 1) {
                return kUp;
            }
            if (i == 2) {
                return kRepeat;
            }
            throw new AssertionError("Unexpected Type value");
        }
    }

    /* loaded from: classes3.dex */
    public enum DeviceType {
        kKeyboard(0),
        kDirectionalPad(1),
        kGamepad(2),
        kJoystick(3),
        kHdmi(4);

        private final long value;

        public long getValue() {
            return this.value;
        }

        DeviceType(long j) {
            this.value = j;
        }

        static DeviceType fromLong(long j) {
            int i = (int) j;
            if (i == 0) {
                return kKeyboard;
            }
            if (i == 1) {
                return kDirectionalPad;
            }
            if (i == 2) {
                return kGamepad;
            }
            if (i == 3) {
                return kJoystick;
            }
            if (i == 4) {
                return kHdmi;
            }
            throw new AssertionError("Unexpected DeviceType value");
        }
    }

    public KeyData() {
    }

    public KeyData(ByteBuffer byteBuffer) {
        long j = byteBuffer.getLong();
        this.timestamp = byteBuffer.getLong();
        this.type = Type.fromLong(byteBuffer.getLong());
        this.physicalKey = byteBuffer.getLong();
        this.logicalKey = byteBuffer.getLong();
        this.synthesized = byteBuffer.getLong() != 0;
        this.deviceType = DeviceType.fromLong(byteBuffer.getLong());
        if (byteBuffer.remaining() != j) {
            throw new AssertionError(String.format("Unexpected char length: charSize is %d while buffer has position %d, capacity %d, limit %d", Long.valueOf(j), Integer.valueOf(byteBuffer.position()), Integer.valueOf(byteBuffer.capacity()), Integer.valueOf(byteBuffer.limit())));
        }
        this.character = null;
        if (j != 0) {
            int i = (int) j;
            byte[] bArr = new byte[i];
            byteBuffer.get(bArr, 0, i);
            try {
                this.character = new String(bArr, C.UTF8_NAME);
            } catch (UnsupportedEncodingException unused) {
                throw new AssertionError("UTF-8 unsupported");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ByteBuffer toBytes() {
        try {
            String str = this.character;
            byte[] bytes = str == null ? null : str.getBytes(C.UTF8_NAME);
            int length = bytes == null ? 0 : bytes.length;
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(length + 56);
            allocateDirect.order(ByteOrder.LITTLE_ENDIAN);
            allocateDirect.putLong(length);
            allocateDirect.putLong(this.timestamp);
            allocateDirect.putLong(this.type.getValue());
            allocateDirect.putLong(this.physicalKey);
            allocateDirect.putLong(this.logicalKey);
            allocateDirect.putLong(this.synthesized ? 1L : 0L);
            allocateDirect.putLong(this.deviceType.getValue());
            if (bytes != null) {
                allocateDirect.put(bytes);
            }
            return allocateDirect;
        } catch (UnsupportedEncodingException unused) {
            throw new AssertionError("UTF-8 not supported");
        }
    }
}
