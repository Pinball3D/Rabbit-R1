package androidx.emoji2.text.flatbuffer;

import io.flutter.embedding.android.KeyboardMap;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import kotlin.UShort;
import kotlin.text.Typography;
import tech.rabbit.r1launcher.BuildConfig;

/* loaded from: classes2.dex */
public class FlexBuffers {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final ReadBuf EMPTY_BB = new ArrayReadWriteBuf(new byte[]{0}, 1);
    public static final int FBT_BLOB = 25;
    public static final int FBT_BOOL = 26;
    public static final int FBT_FLOAT = 3;
    public static final int FBT_INDIRECT_FLOAT = 8;
    public static final int FBT_INDIRECT_INT = 6;
    public static final int FBT_INDIRECT_UINT = 7;
    public static final int FBT_INT = 1;
    public static final int FBT_KEY = 4;
    public static final int FBT_MAP = 9;
    public static final int FBT_NULL = 0;
    public static final int FBT_STRING = 5;
    public static final int FBT_UINT = 2;
    public static final int FBT_VECTOR = 10;
    public static final int FBT_VECTOR_BOOL = 36;
    public static final int FBT_VECTOR_FLOAT = 13;
    public static final int FBT_VECTOR_FLOAT2 = 18;
    public static final int FBT_VECTOR_FLOAT3 = 21;
    public static final int FBT_VECTOR_FLOAT4 = 24;
    public static final int FBT_VECTOR_INT = 11;
    public static final int FBT_VECTOR_INT2 = 16;
    public static final int FBT_VECTOR_INT3 = 19;
    public static final int FBT_VECTOR_INT4 = 22;
    public static final int FBT_VECTOR_KEY = 14;
    public static final int FBT_VECTOR_STRING_DEPRECATED = 15;
    public static final int FBT_VECTOR_UINT = 12;
    public static final int FBT_VECTOR_UINT2 = 17;
    public static final int FBT_VECTOR_UINT3 = 20;
    public static final int FBT_VECTOR_UINT4 = 23;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTypeInline(int i) {
        return i <= 3 || i == 26;
    }

    static boolean isTypedVector(int i) {
        return (i >= 11 && i <= 15) || i == 36;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isTypedVectorElementType(int i) {
        return (i >= 1 && i <= 4) || i == 26;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int toTypedVector(int i, int i2) {
        if (i2 == 0) {
            return i + 10;
        }
        if (i2 == 2) {
            return i + 15;
        }
        if (i2 == 3) {
            return i + 18;
        }
        if (i2 != 4) {
            return 0;
        }
        return i + 21;
    }

    static int toTypedVectorElementType(int i) {
        return i - 10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int indirect(ReadBuf readBuf, int i, int i2) {
        return (int) (i - readUInt(readBuf, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readUInt(ReadBuf readBuf, int i, int i2) {
        if (i2 == 1) {
            return Unsigned.byteToUnsignedInt(readBuf.get(i));
        }
        if (i2 == 2) {
            return Unsigned.shortToUnsignedInt(readBuf.getShort(i));
        }
        if (i2 == 4) {
            return Unsigned.intToUnsignedLong(readBuf.getInt(i));
        }
        if (i2 != 8) {
            return -1L;
        }
        return readBuf.getLong(i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int readInt(ReadBuf readBuf, int i, int i2) {
        return (int) readLong(readBuf, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long readLong(ReadBuf readBuf, int i, int i2) {
        int i3;
        if (i2 == 1) {
            i3 = readBuf.get(i);
        } else if (i2 == 2) {
            i3 = readBuf.getShort(i);
        } else {
            if (i2 != 4) {
                if (i2 != 8) {
                    return -1L;
                }
                return readBuf.getLong(i);
            }
            i3 = readBuf.getInt(i);
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static double readDouble(ReadBuf readBuf, int i, int i2) {
        if (i2 == 4) {
            return readBuf.getFloat(i);
        }
        if (i2 != 8) {
            return -1.0d;
        }
        return readBuf.getDouble(i);
    }

    @Deprecated
    public static Reference getRoot(ByteBuffer byteBuffer) {
        return getRoot(byteBuffer.hasArray() ? new ArrayReadWriteBuf(byteBuffer.array(), byteBuffer.limit()) : new ByteBufferReadWriteBuf(byteBuffer));
    }

    public static Reference getRoot(ReadBuf readBuf) {
        int limit = readBuf.limit();
        byte b = readBuf.get(limit - 1);
        int i = limit - 2;
        return new Reference(readBuf, i - b, b, Unsigned.byteToUnsignedInt(readBuf.get(i)));
    }

    /* loaded from: classes2.dex */
    public static class Reference {
        private static final Reference NULL_REFERENCE = new Reference(FlexBuffers.EMPTY_BB, 0, 1, 0);
        private ReadBuf bb;
        private int byteWidth;
        private int end;
        private int parentWidth;
        private int type;

        public int getType() {
            return this.type;
        }

        public boolean isBlob() {
            return this.type == 25;
        }

        public boolean isBoolean() {
            return this.type == 26;
        }

        public boolean isFloat() {
            int i = this.type;
            return i == 3 || i == 8;
        }

        public boolean isInt() {
            int i = this.type;
            return i == 1 || i == 6;
        }

        public boolean isKey() {
            return this.type == 4;
        }

        public boolean isMap() {
            return this.type == 9;
        }

        public boolean isNull() {
            return this.type == 0;
        }

        public boolean isString() {
            return this.type == 5;
        }

        public boolean isUInt() {
            int i = this.type;
            return i == 2 || i == 7;
        }

        public boolean isVector() {
            int i = this.type;
            return i == 10 || i == 9;
        }

        Reference(ReadBuf readBuf, int i, int i2, int i3) {
            this(readBuf, i, i2, 1 << (i3 & 3), i3 >> 2);
        }

        Reference(ReadBuf readBuf, int i, int i2, int i3, int i4) {
            this.bb = readBuf;
            this.end = i;
            this.parentWidth = i2;
            this.byteWidth = i3;
            this.type = i4;
        }

        public boolean isNumeric() {
            return isIntOrUInt() || isFloat();
        }

        public boolean isIntOrUInt() {
            return isInt() || isUInt();
        }

        public boolean isTypedVector() {
            return FlexBuffers.isTypedVector(this.type);
        }

        public int asInt() {
            int i = this.type;
            if (i == 1) {
                return FlexBuffers.readInt(this.bb, this.end, this.parentWidth);
            }
            if (i == 2) {
                return (int) FlexBuffers.readUInt(this.bb, this.end, this.parentWidth);
            }
            if (i == 3) {
                return (int) FlexBuffers.readDouble(this.bb, this.end, this.parentWidth);
            }
            if (i == 5) {
                return Integer.parseInt(asString());
            }
            if (i == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.readInt(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i == 7) {
                ReadBuf readBuf2 = this.bb;
                return (int) FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.parentWidth);
            }
            if (i == 8) {
                ReadBuf readBuf3 = this.bb;
                return (int) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i != 26) {
                return 0;
            }
            return FlexBuffers.readInt(this.bb, this.end, this.parentWidth);
        }

        public long asUInt() {
            int i = this.type;
            if (i == 2) {
                return FlexBuffers.readUInt(this.bb, this.end, this.parentWidth);
            }
            if (i == 1) {
                return FlexBuffers.readLong(this.bb, this.end, this.parentWidth);
            }
            if (i == 3) {
                return (long) FlexBuffers.readDouble(this.bb, this.end, this.parentWidth);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i == 26) {
                return FlexBuffers.readInt(this.bb, this.end, this.parentWidth);
            }
            if (i == 5) {
                return Long.parseLong(asString());
            }
            if (i == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i == 7) {
                ReadBuf readBuf2 = this.bb;
                return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
            }
            if (i != 8) {
                return 0L;
            }
            ReadBuf readBuf3 = this.bb;
            return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.parentWidth);
        }

        public long asLong() {
            int i = this.type;
            if (i == 1) {
                return FlexBuffers.readLong(this.bb, this.end, this.parentWidth);
            }
            if (i == 2) {
                return FlexBuffers.readUInt(this.bb, this.end, this.parentWidth);
            }
            if (i == 3) {
                return (long) FlexBuffers.readDouble(this.bb, this.end, this.parentWidth);
            }
            if (i == 5) {
                try {
                    return Long.parseLong(asString());
                } catch (NumberFormatException unused) {
                    return 0L;
                }
            }
            if (i == 6) {
                ReadBuf readBuf = this.bb;
                return FlexBuffers.readLong(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            if (i == 7) {
                ReadBuf readBuf2 = this.bb;
                return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.parentWidth);
            }
            if (i == 8) {
                ReadBuf readBuf3 = this.bb;
                return (long) FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
            }
            if (i == 10) {
                return asVector().size();
            }
            if (i != 26) {
                return 0L;
            }
            return FlexBuffers.readInt(this.bb, this.end, this.parentWidth);
        }

        public double asFloat() {
            int i = this.type;
            if (i == 3) {
                return FlexBuffers.readDouble(this.bb, this.end, this.parentWidth);
            }
            if (i != 1) {
                if (i != 2) {
                    if (i == 5) {
                        return Double.parseDouble(asString());
                    }
                    if (i == 6) {
                        ReadBuf readBuf = this.bb;
                        return FlexBuffers.readInt(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
                    }
                    if (i == 7) {
                        ReadBuf readBuf2 = this.bb;
                        return FlexBuffers.readUInt(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth);
                    }
                    if (i == 8) {
                        ReadBuf readBuf3 = this.bb;
                        return FlexBuffers.readDouble(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth);
                    }
                    if (i == 10) {
                        return asVector().size();
                    }
                    if (i != 26) {
                        return BuildConfig.SENTRY_SAMPLE_RATE;
                    }
                }
                return FlexBuffers.readUInt(this.bb, this.end, this.parentWidth);
            }
            return FlexBuffers.readInt(this.bb, this.end, this.parentWidth);
        }

        public Key asKey() {
            if (isKey()) {
                ReadBuf readBuf = this.bb;
                return new Key(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Key.empty();
        }

        public String asString() {
            if (isString()) {
                int indirect = FlexBuffers.indirect(this.bb, this.end, this.parentWidth);
                ReadBuf readBuf = this.bb;
                int i = this.byteWidth;
                return this.bb.getString(indirect, (int) FlexBuffers.readUInt(readBuf, indirect - i, i));
            }
            if (!isKey()) {
                return "";
            }
            int indirect2 = FlexBuffers.indirect(this.bb, this.end, this.byteWidth);
            int i2 = indirect2;
            while (this.bb.get(i2) != 0) {
                i2++;
            }
            return this.bb.getString(indirect2, i2 - indirect2);
        }

        public Map asMap() {
            if (isMap()) {
                ReadBuf readBuf = this.bb;
                return new Map(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Map.empty();
        }

        public Vector asVector() {
            if (isVector()) {
                ReadBuf readBuf = this.bb;
                return new Vector(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            int i = this.type;
            if (i == 15) {
                ReadBuf readBuf2 = this.bb;
                return new TypedVector(readBuf2, FlexBuffers.indirect(readBuf2, this.end, this.parentWidth), this.byteWidth, 4);
            }
            if (FlexBuffers.isTypedVector(i)) {
                ReadBuf readBuf3 = this.bb;
                return new TypedVector(readBuf3, FlexBuffers.indirect(readBuf3, this.end, this.parentWidth), this.byteWidth, FlexBuffers.toTypedVectorElementType(this.type));
            }
            return Vector.empty();
        }

        public Blob asBlob() {
            if (isBlob() || isString()) {
                ReadBuf readBuf = this.bb;
                return new Blob(readBuf, FlexBuffers.indirect(readBuf, this.end, this.parentWidth), this.byteWidth);
            }
            return Blob.empty();
        }

        public boolean asBoolean() {
            return isBoolean() ? this.bb.get(this.end) != 0 : asUInt() != 0;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }

        StringBuilder toString(StringBuilder sb) {
            int i = this.type;
            if (i != 36) {
                switch (i) {
                    case 0:
                        return sb.append("null");
                    case 1:
                    case 6:
                        return sb.append(asLong());
                    case 2:
                    case 7:
                        return sb.append(asUInt());
                    case 3:
                    case 8:
                        return sb.append(asFloat());
                    case 4:
                        return asKey().toString(sb.append(Typography.quote)).append(Typography.quote);
                    case 5:
                        return sb.append(Typography.quote).append(asString()).append(Typography.quote);
                    case 9:
                        return asMap().toString(sb);
                    case 10:
                        return asVector().toString(sb);
                    case 11:
                    case 12:
                    case 13:
                    case 14:
                    case 15:
                        break;
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                        throw new FlexBufferException("not_implemented:" + this.type);
                    case 25:
                        return asBlob().toString(sb);
                    case 26:
                        return sb.append(asBoolean());
                    default:
                        return sb;
                }
            }
            return sb.append(asVector());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class Object {
        ReadBuf bb;
        int byteWidth;
        int end;

        public abstract StringBuilder toString(StringBuilder sb);

        Object(ReadBuf readBuf, int i, int i2) {
            this.bb = readBuf;
            this.end = i;
            this.byteWidth = i2;
        }

        public String toString() {
            return toString(new StringBuilder(128)).toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static abstract class Sized extends Object {
        protected final int size;

        public int size() {
            return this.size;
        }

        Sized(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
            this.size = FlexBuffers.readInt(this.bb, i - i2, i2);
        }
    }

    /* loaded from: classes2.dex */
    public static class Blob extends Sized {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        static final Blob EMPTY = new Blob(FlexBuffers.EMPTY_BB, 1, 1);

        public static Blob empty() {
            return EMPTY;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        Blob(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
        }

        public ByteBuffer data() {
            ByteBuffer wrap = ByteBuffer.wrap(this.bb.data());
            wrap.position(this.end);
            wrap.limit(this.end + size());
            return wrap.asReadOnlyBuffer().slice();
        }

        public byte[] getBytes() {
            int size = size();
            byte[] bArr = new byte[size];
            for (int i = 0; i < size; i++) {
                bArr[i] = this.bb.get(this.end + i);
            }
            return bArr;
        }

        public byte get(int i) {
            return this.bb.get(this.end + i);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            return this.bb.getString(this.end, size());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append(Typography.quote);
            sb.append(this.bb.getString(this.end, size()));
            return sb.append(Typography.quote);
        }
    }

    /* loaded from: classes2.dex */
    public static class Key extends Object {
        private static final Key EMPTY = new Key(FlexBuffers.EMPTY_BB, 0, 0);

        public static Key empty() {
            return EMPTY;
        }

        Key(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            return sb.append(toString());
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public String toString() {
            int i = this.end;
            while (this.bb.get(i) != 0) {
                i++;
            }
            return this.bb.getString(this.end, i - this.end);
        }

        int compareTo(byte[] bArr) {
            byte b;
            byte b2;
            int i = this.end;
            int i2 = 0;
            do {
                b = this.bb.get(i);
                b2 = bArr[i2];
                if (b == 0) {
                    return b - b2;
                }
                i++;
                i2++;
                if (i2 == bArr.length) {
                    return b - b2;
                }
            } while (b == b2);
            return b - b2;
        }

        public boolean equals(java.lang.Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return key.end == this.end && key.byteWidth == this.byteWidth;
        }

        public int hashCode() {
            return this.byteWidth ^ this.end;
        }
    }

    /* loaded from: classes2.dex */
    public static class Map extends Vector {
        private static final Map EMPTY_MAP = new Map(FlexBuffers.EMPTY_BB, 1, 1);

        public static Map empty() {
            return EMPTY_MAP;
        }

        Map(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
        }

        public Reference get(String str) {
            return get(str.getBytes(StandardCharsets.UTF_8));
        }

        public Reference get(byte[] bArr) {
            KeyVector keys = keys();
            int size = keys.size();
            int binarySearch = binarySearch(keys, bArr);
            if (binarySearch >= 0 && binarySearch < size) {
                return get(binarySearch);
            }
            return Reference.NULL_REFERENCE;
        }

        public KeyVector keys() {
            int i = this.end - (this.byteWidth * 3);
            return new KeyVector(new TypedVector(this.bb, FlexBuffers.indirect(this.bb, i, this.byteWidth), FlexBuffers.readInt(this.bb, i + this.byteWidth, this.byteWidth), 4));
        }

        public Vector values() {
            return new Vector(this.bb, this.end, this.byteWidth);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector, androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append("{ ");
            KeyVector keys = keys();
            int size = size();
            Vector values = values();
            for (int i = 0; i < size; i++) {
                sb.append(Typography.quote).append(keys.get(i).toString()).append("\" : ");
                sb.append(values.get(i).toString());
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" }");
            return sb;
        }

        private int binarySearch(KeyVector keyVector, byte[] bArr) {
            int size = keyVector.size() - 1;
            int i = 0;
            while (i <= size) {
                int i2 = (i + size) >>> 1;
                int compareTo = keyVector.get(i2).compareTo(bArr);
                if (compareTo < 0) {
                    i = i2 + 1;
                } else {
                    if (compareTo <= 0) {
                        return i2;
                    }
                    size = i2 - 1;
                }
            }
            return -(i + 1);
        }
    }

    /* loaded from: classes2.dex */
    public static class Vector extends Sized {
        private static final Vector EMPTY_VECTOR = new Vector(FlexBuffers.EMPTY_BB, 1, 1);

        public static Vector empty() {
            return EMPTY_VECTOR;
        }

        public boolean isEmpty() {
            return this == EMPTY_VECTOR;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Sized
        public /* bridge */ /* synthetic */ int size() {
            return super.size();
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public /* bridge */ /* synthetic */ String toString() {
            return super.toString();
        }

        Vector(ReadBuf readBuf, int i, int i2) {
            super(readBuf, i, i2);
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Object
        public StringBuilder toString(StringBuilder sb) {
            sb.append("[ ");
            int size = size();
            for (int i = 0; i < size; i++) {
                get(i).toString(sb);
                if (i != size - 1) {
                    sb.append(", ");
                }
            }
            sb.append(" ]");
            return sb;
        }

        public Reference get(int i) {
            long size = size();
            long j = i;
            if (j >= size) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.bb, this.end + (i * this.byteWidth), this.byteWidth, Unsigned.byteToUnsignedInt(this.bb.get((int) (this.end + (size * this.byteWidth) + j))));
        }
    }

    /* loaded from: classes2.dex */
    public static class TypedVector extends Vector {
        private static final TypedVector EMPTY_VECTOR = new TypedVector(FlexBuffers.EMPTY_BB, 1, 1, 1);
        private final int elemType;

        public static TypedVector empty() {
            return EMPTY_VECTOR;
        }

        public int getElemType() {
            return this.elemType;
        }

        public boolean isEmptyVector() {
            return this == EMPTY_VECTOR;
        }

        TypedVector(ReadBuf readBuf, int i, int i2, int i3) {
            super(readBuf, i, i2);
            this.elemType = i3;
        }

        @Override // androidx.emoji2.text.flatbuffer.FlexBuffers.Vector
        public Reference get(int i) {
            if (i >= size()) {
                return Reference.NULL_REFERENCE;
            }
            return new Reference(this.bb, this.end + (i * this.byteWidth), this.byteWidth, 1, this.elemType);
        }
    }

    /* loaded from: classes2.dex */
    public static class KeyVector {
        private final TypedVector vec;

        KeyVector(TypedVector typedVector) {
            this.vec = typedVector;
        }

        public Key get(int i) {
            if (i >= size()) {
                return Key.EMPTY;
            }
            return new Key(this.vec.bb, FlexBuffers.indirect(this.vec.bb, this.vec.end + (i * this.vec.byteWidth), this.vec.byteWidth), 1);
        }

        public int size() {
            return this.vec.size();
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (int i = 0; i < this.vec.size(); i++) {
                this.vec.get(i).toString(sb);
                if (i != this.vec.size() - 1) {
                    sb.append(", ");
                }
            }
            return sb.append("]").toString();
        }
    }

    /* loaded from: classes2.dex */
    public static class FlexBufferException extends RuntimeException {
        /* JADX INFO: Access modifiers changed from: package-private */
        public FlexBufferException(String str) {
            super(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class Unsigned {
        /* JADX INFO: Access modifiers changed from: package-private */
        public static int byteToUnsignedInt(byte b) {
            return b & 255;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static long intToUnsignedLong(int i) {
            return i & KeyboardMap.kValueMask;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public static int shortToUnsignedInt(short s) {
            return s & UShort.MAX_VALUE;
        }

        Unsigned() {
        }
    }
}
