package androidx.media3.extractor.mp4;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import java.io.IOException;

/* loaded from: classes2.dex */
final class Sniffer {
    public static final int BRAND_HEIC = 1751476579;
    public static final int BRAND_QUICKTIME = 1903435808;
    private static final int[] COMPATIBLE_BRANDS = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};
    private static final int SEARCH_LENGTH = 4096;

    public static boolean sniffFragmented(ExtractorInput extractorInput) throws IOException {
        return sniffInternal(extractorInput, true, false);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput) throws IOException {
        return sniffInternal(extractorInput, false, false);
    }

    public static boolean sniffUnfragmented(ExtractorInput extractorInput, boolean z) throws IOException {
        return sniffInternal(extractorInput, false, z);
    }

    private static boolean sniffInternal(ExtractorInput extractorInput, boolean z, boolean z2) throws IOException {
        boolean z3;
        boolean z4;
        boolean z5;
        int i;
        boolean z6;
        boolean z7;
        long length = extractorInput.getLength();
        long j = -1;
        int i2 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        long j2 = 4096;
        if (i2 != 0 && length <= 4096) {
            j2 = length;
        }
        int i3 = (int) j2;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        boolean z8 = false;
        int i4 = 0;
        boolean z9 = false;
        while (i4 < i3) {
            parsableByteArray.reset(8);
            if (!extractorInput.peekFully(parsableByteArray.getData(), z8 ? 1 : 0, 8, true)) {
                break;
            }
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int readInt = parsableByteArray.readInt();
            if (readUnsignedInt == 1) {
                extractorInput.peekFully(parsableByteArray.getData(), 8, 8);
                parsableByteArray.setLimit(16);
                i = 16;
                readUnsignedInt = parsableByteArray.readLong();
            } else {
                if (readUnsignedInt == 0) {
                    long length2 = extractorInput.getLength();
                    if (length2 != j) {
                        readUnsignedInt = (length2 - extractorInput.getPeekPosition()) + 8;
                    }
                }
                i = 8;
            }
            long j3 = i;
            if (readUnsignedInt < j3) {
                return z8;
            }
            i4 += i;
            if (readInt == 1836019574) {
                i3 += (int) readUnsignedInt;
                if (i2 != 0 && i3 > length) {
                    i3 = (int) length;
                }
            } else {
                if (readInt == 1836019558 || readInt == 1836475768) {
                    z3 = z8 ? 1 : 0;
                    z4 = true;
                    z5 = true;
                    break;
                }
                int i5 = i2;
                if ((i4 + readUnsignedInt) - j3 >= i3) {
                    z3 = false;
                    z4 = true;
                    break;
                }
                int i6 = (int) (readUnsignedInt - j3);
                i4 += i6;
                if (readInt != 1718909296) {
                    z6 = false;
                    z9 = z9;
                    if (i6 != 0) {
                        extractorInput.advancePeekPosition(i6);
                        z9 = z9;
                    }
                } else {
                    if (i6 < 8) {
                        return false;
                    }
                    parsableByteArray.reset(i6);
                    extractorInput.peekFully(parsableByteArray.getData(), 0, i6);
                    int i7 = i6 / 4;
                    int i8 = 0;
                    while (true) {
                        if (i8 >= i7) {
                            z7 = z9;
                            break;
                        }
                        if (i8 == 1) {
                            parsableByteArray.skipBytes(4);
                        } else if (isCompatibleBrand(parsableByteArray.readInt(), z2)) {
                            z7 = true;
                            break;
                        }
                        i8++;
                    }
                    if (!z7) {
                        return false;
                    }
                    z6 = false;
                    z9 = z7;
                }
                z8 = z6;
                i2 = i5;
            }
            j = -1;
            z9 = z9;
        }
        z3 = z8 ? 1 : 0;
        z4 = true;
        z5 = z3;
        return (z9 && z == z5) ? z4 : z3;
    }

    private static boolean isCompatibleBrand(int i, boolean z) {
        if ((i >>> 8) == 3368816) {
            return true;
        }
        if (i == 1751476579 && z) {
            return true;
        }
        for (int i2 : COMPATIBLE_BRANDS) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    private Sniffer() {
    }
}
