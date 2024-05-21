package com.google.android.exoplayer2.extractor.avi;

import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.UnmodifiableIterator;

/* loaded from: classes2.dex */
final class ListChunk implements AviChunk {
    public final ImmutableList<AviChunk> children;
    private final int type;

    @Override // com.google.android.exoplayer2.extractor.avi.AviChunk
    public int getType() {
        return this.type;
    }

    public static ListChunk parseFrom(int i, ParsableByteArray parsableByteArray) {
        AviChunk createBox;
        ImmutableList.Builder builder = new ImmutableList.Builder();
        int limit = parsableByteArray.limit();
        int i2 = -2;
        while (parsableByteArray.bytesLeft() > 8) {
            int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
            int position = parsableByteArray.getPosition() + parsableByteArray.readLittleEndianInt();
            parsableByteArray.setLimit(position);
            if (readLittleEndianInt == 1414744396) {
                createBox = parseFrom(parsableByteArray.readLittleEndianInt(), parsableByteArray);
            } else {
                createBox = createBox(readLittleEndianInt, i2, parsableByteArray);
            }
            if (createBox != null) {
                if (createBox.getType() == 1752331379) {
                    i2 = ((AviStreamHeaderChunk) createBox).getTrackType();
                }
                builder.add((ImmutableList.Builder) createBox);
            }
            parsableByteArray.setPosition(position);
            parsableByteArray.setLimit(limit);
        }
        return new ListChunk(i, builder.build());
    }

    private ListChunk(int i, ImmutableList<AviChunk> immutableList) {
        this.type = i;
        this.children = immutableList;
    }

    public <T extends AviChunk> T getChild(Class<T> cls) {
        UnmodifiableIterator<AviChunk> it = this.children.iterator();
        while (it.hasNext()) {
            T t = (T) it.next();
            if (t.getClass() == cls) {
                return t;
            }
        }
        return null;
    }

    private static AviChunk createBox(int i, int i2, ParsableByteArray parsableByteArray) {
        switch (i) {
            case 1718776947:
                return StreamFormatChunk.parseFrom(i2, parsableByteArray);
            case 1751742049:
                return AviMainHeaderChunk.parseFrom(parsableByteArray);
            case 1752331379:
                return AviStreamHeaderChunk.parseFrom(parsableByteArray);
            case 1852994675:
                return StreamNameChunk.parseFrom(parsableByteArray);
            default:
                return null;
        }
    }
}
