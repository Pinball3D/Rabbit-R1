package androidx.profileinstaller;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class ProfileTranscoder {
    private static final int HOT = 1;
    private static final int INLINE_CACHE_MEGAMORPHIC_ENCODING = 7;
    private static final int INLINE_CACHE_MISSING_TYPES_ENCODING = 6;
    static final byte[] MAGIC_PROF = {112, 114, 111, 0};
    static final byte[] MAGIC_PROFM = {112, 114, 109, 0};
    private static final int POST_STARTUP = 4;
    private static final int STARTUP = 2;

    private static int roundUpToByte(int i) {
        return (i + 7) & (-8);
    }

    private ProfileTranscoder() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] readHeader(InputStream inputStream, byte[] bArr) throws IOException {
        if (!Arrays.equals(bArr, Encoding.read(inputStream, bArr.length))) {
            throw Encoding.error("Invalid magic");
        }
        return Encoding.read(inputStream, ProfileVersion.V010_P.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeHeader(OutputStream outputStream, byte[] bArr) throws IOException {
        outputStream.write(MAGIC_PROF);
        outputStream.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean transcodeAndWriteBody(OutputStream outputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.V015_S)) {
            writeProfileForS(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V010_P)) {
            writeProfileForP(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V005_O)) {
            writeProfileForO(outputStream, dexProfileDataArr);
            return true;
        }
        if (Arrays.equals(bArr, ProfileVersion.V009_O_MR1)) {
            writeProfileForO_MR1(outputStream, dexProfileDataArr);
            return true;
        }
        if (!Arrays.equals(bArr, ProfileVersion.V001_N)) {
            return false;
        }
        writeProfileForN(outputStream, dexProfileDataArr);
        return true;
    }

    private static void writeProfileForN(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        Encoding.writeUInt16(outputStream, dexProfileDataArr.length);
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            String generateDexKey = generateDexKey(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V001_N);
            Encoding.writeUInt16(outputStream, Encoding.utf8Length(generateDexKey));
            Encoding.writeUInt16(outputStream, dexProfileData.methods.size());
            Encoding.writeUInt16(outputStream, dexProfileData.classes.length);
            Encoding.writeUInt32(outputStream, dexProfileData.dexChecksum);
            Encoding.writeString(outputStream, generateDexKey);
            Iterator<Integer> it = dexProfileData.methods.keySet().iterator();
            while (it.hasNext()) {
                Encoding.writeUInt16(outputStream, it.next().intValue());
            }
            for (int i : dexProfileData.classes) {
                Encoding.writeUInt16(outputStream, i);
            }
        }
    }

    private static void writeProfileForS(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        writeProfileSections(outputStream, dexProfileDataArr);
    }

    private static void writeProfileSections(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        int length;
        ArrayList arrayList = new ArrayList(3);
        ArrayList arrayList2 = new ArrayList(3);
        arrayList.add(writeDexFileSection(dexProfileDataArr));
        arrayList.add(createCompressibleClassSection(dexProfileDataArr));
        arrayList.add(createCompressibleMethodsSection(dexProfileDataArr));
        long length2 = ProfileVersion.V015_S.length + MAGIC_PROF.length + 4 + (arrayList.size() * 16);
        Encoding.writeUInt32(outputStream, arrayList.size());
        for (int i = 0; i < arrayList.size(); i++) {
            WritableFileSection writableFileSection = (WritableFileSection) arrayList.get(i);
            Encoding.writeUInt32(outputStream, writableFileSection.mType.getValue());
            Encoding.writeUInt32(outputStream, length2);
            if (writableFileSection.mNeedsCompression) {
                long length3 = writableFileSection.mContents.length;
                byte[] compress = Encoding.compress(writableFileSection.mContents);
                arrayList2.add(compress);
                Encoding.writeUInt32(outputStream, compress.length);
                Encoding.writeUInt32(outputStream, length3);
                length = compress.length;
            } else {
                arrayList2.add(writableFileSection.mContents);
                Encoding.writeUInt32(outputStream, writableFileSection.mContents.length);
                Encoding.writeUInt32(outputStream, 0L);
                length = writableFileSection.mContents.length;
            }
            length2 += length;
        }
        for (int i2 = 0; i2 < arrayList2.size(); i2++) {
            outputStream.write((byte[]) arrayList2.get(i2));
        }
    }

    private static WritableFileSection writeDexFileSection(DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            Encoding.writeUInt16(byteArrayOutputStream, dexProfileDataArr.length);
            int i = 2;
            for (DexProfileData dexProfileData : dexProfileDataArr) {
                Encoding.writeUInt32(byteArrayOutputStream, dexProfileData.dexChecksum);
                Encoding.writeUInt32(byteArrayOutputStream, dexProfileData.mTypeIdCount);
                Encoding.writeUInt32(byteArrayOutputStream, dexProfileData.numMethodIds);
                String generateDexKey = generateDexKey(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V015_S);
                int utf8Length = Encoding.utf8Length(generateDexKey);
                Encoding.writeUInt16(byteArrayOutputStream, utf8Length);
                i = i + 14 + utf8Length;
                Encoding.writeString(byteArrayOutputStream, generateDexKey);
            }
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (i != byteArray.length) {
                throw Encoding.error("Expected size " + i + ", does not match actual size " + byteArray.length);
            }
            WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.DEX_FILES, i, byteArray, false);
            byteArrayOutputStream.close();
            return writableFileSection;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static WritableFileSection createCompressibleClassSection(DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (int i2 = 0; i2 < dexProfileDataArr.length; i2++) {
            try {
                DexProfileData dexProfileData = dexProfileDataArr[i2];
                Encoding.writeUInt16(byteArrayOutputStream, i2);
                Encoding.writeUInt16(byteArrayOutputStream, dexProfileData.classSetSize);
                i = i + 4 + (dexProfileData.classSetSize * 2);
                writeClasses(byteArrayOutputStream, dexProfileData);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i != byteArray.length) {
            throw Encoding.error("Expected size " + i + ", does not match actual size " + byteArray.length);
        }
        WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.CLASSES, i, byteArray, true);
        byteArrayOutputStream.close();
        return writableFileSection;
    }

    private static WritableFileSection createCompressibleMethodsSection(DexProfileData[] dexProfileDataArr) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        for (int i2 = 0; i2 < dexProfileDataArr.length; i2++) {
            try {
                DexProfileData dexProfileData = dexProfileDataArr[i2];
                int computeMethodFlags = computeMethodFlags(dexProfileData);
                byte[] createMethodBitmapRegion = createMethodBitmapRegion(dexProfileData);
                byte[] createMethodsWithInlineCaches = createMethodsWithInlineCaches(dexProfileData);
                Encoding.writeUInt16(byteArrayOutputStream, i2);
                int length = createMethodBitmapRegion.length + 2 + createMethodsWithInlineCaches.length;
                Encoding.writeUInt32(byteArrayOutputStream, length);
                Encoding.writeUInt16(byteArrayOutputStream, computeMethodFlags);
                byteArrayOutputStream.write(createMethodBitmapRegion);
                byteArrayOutputStream.write(createMethodsWithInlineCaches);
                i = i + 6 + length;
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        if (i != byteArray.length) {
            throw Encoding.error("Expected size " + i + ", does not match actual size " + byteArray.length);
        }
        WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.METHODS, i, byteArray, true);
        byteArrayOutputStream.close();
        return writableFileSection;
    }

    private static byte[] createMethodBitmapRegion(DexProfileData dexProfileData) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            writeMethodBitmap(byteArrayOutputStream, dexProfileData);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static byte[] createMethodsWithInlineCaches(DexProfileData dexProfileData) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            writeMethodsWithInlineCaches(byteArrayOutputStream, dexProfileData);
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            return byteArray;
        } catch (Throwable th) {
            try {
                byteArrayOutputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static int computeMethodFlags(DexProfileData dexProfileData) {
        Iterator<Map.Entry<Integer, Integer>> it = dexProfileData.methods.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            i |= it.next().getValue().intValue();
        }
        return i;
    }

    private static void writeProfileForP(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        byte[] createCompressibleBody = createCompressibleBody(dexProfileDataArr, ProfileVersion.V010_P);
        Encoding.writeUInt8(outputStream, dexProfileDataArr.length);
        Encoding.writeCompressed(outputStream, createCompressibleBody);
    }

    private static void writeProfileForO_MR1(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        byte[] createCompressibleBody = createCompressibleBody(dexProfileDataArr, ProfileVersion.V009_O_MR1);
        Encoding.writeUInt8(outputStream, dexProfileDataArr.length);
        Encoding.writeCompressed(outputStream, createCompressibleBody);
    }

    private static void writeProfileForO(OutputStream outputStream, DexProfileData[] dexProfileDataArr) throws IOException {
        Encoding.writeUInt8(outputStream, dexProfileDataArr.length);
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            int size = dexProfileData.methods.size() * 4;
            String generateDexKey = generateDexKey(dexProfileData.apkName, dexProfileData.dexName, ProfileVersion.V005_O);
            Encoding.writeUInt16(outputStream, Encoding.utf8Length(generateDexKey));
            Encoding.writeUInt16(outputStream, dexProfileData.classes.length);
            Encoding.writeUInt32(outputStream, size);
            Encoding.writeUInt32(outputStream, dexProfileData.dexChecksum);
            Encoding.writeString(outputStream, generateDexKey);
            Iterator<Integer> it = dexProfileData.methods.keySet().iterator();
            while (it.hasNext()) {
                Encoding.writeUInt16(outputStream, it.next().intValue());
                Encoding.writeUInt16(outputStream, 0);
            }
            for (int i : dexProfileData.classes) {
                Encoding.writeUInt16(outputStream, i);
            }
        }
    }

    private static byte[] createCompressibleBody(DexProfileData[] dexProfileDataArr, byte[] bArr) throws IOException {
        int i = 0;
        int i2 = 0;
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            i2 += Encoding.utf8Length(generateDexKey(dexProfileData.apkName, dexProfileData.dexName, bArr)) + 16 + (dexProfileData.classSetSize * 2) + dexProfileData.hotMethodRegionSize + getMethodBitmapStorageSize(dexProfileData.numMethodIds);
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, ProfileVersion.V009_O_MR1)) {
            int length = dexProfileDataArr.length;
            while (i < length) {
                DexProfileData dexProfileData2 = dexProfileDataArr[i];
                writeLineHeader(byteArrayOutputStream, dexProfileData2, generateDexKey(dexProfileData2.apkName, dexProfileData2.dexName, bArr));
                writeLineData(byteArrayOutputStream, dexProfileData2);
                i++;
            }
        } else {
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                writeLineHeader(byteArrayOutputStream, dexProfileData3, generateDexKey(dexProfileData3.apkName, dexProfileData3.dexName, bArr));
            }
            int length2 = dexProfileDataArr.length;
            while (i < length2) {
                writeLineData(byteArrayOutputStream, dexProfileDataArr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() != i2) {
            throw Encoding.error("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
        }
        return byteArrayOutputStream.toByteArray();
    }

    private static int getMethodBitmapStorageSize(int i) {
        return roundUpToByte(i * 2) / 8;
    }

    private static void setMethodBitmapBit(byte[] bArr, int i, int i2, DexProfileData dexProfileData) {
        int methodFlagBitmapIndex = methodFlagBitmapIndex(i, i2, dexProfileData.numMethodIds);
        int i3 = methodFlagBitmapIndex / 8;
        bArr[i3] = (byte) ((1 << (methodFlagBitmapIndex % 8)) | bArr[i3]);
    }

    private static void writeLineHeader(OutputStream outputStream, DexProfileData dexProfileData, String str) throws IOException {
        Encoding.writeUInt16(outputStream, Encoding.utf8Length(str));
        Encoding.writeUInt16(outputStream, dexProfileData.classSetSize);
        Encoding.writeUInt32(outputStream, dexProfileData.hotMethodRegionSize);
        Encoding.writeUInt32(outputStream, dexProfileData.dexChecksum);
        Encoding.writeUInt32(outputStream, dexProfileData.numMethodIds);
        Encoding.writeString(outputStream, str);
    }

    private static void writeLineData(OutputStream outputStream, DexProfileData dexProfileData) throws IOException {
        writeMethodsWithInlineCaches(outputStream, dexProfileData);
        writeClasses(outputStream, dexProfileData);
        writeMethodBitmap(outputStream, dexProfileData);
    }

    private static void writeMethodsWithInlineCaches(OutputStream outputStream, DexProfileData dexProfileData) throws IOException {
        int i = 0;
        for (Map.Entry<Integer, Integer> entry : dexProfileData.methods.entrySet()) {
            int intValue = entry.getKey().intValue();
            if ((entry.getValue().intValue() & 1) != 0) {
                Encoding.writeUInt16(outputStream, intValue - i);
                Encoding.writeUInt16(outputStream, 0);
                i = intValue;
            }
        }
    }

    private static void writeClasses(OutputStream outputStream, DexProfileData dexProfileData) throws IOException {
        int i = 0;
        for (int i2 : dexProfileData.classes) {
            Integer valueOf = Integer.valueOf(i2);
            Encoding.writeUInt16(outputStream, valueOf.intValue() - i);
            i = valueOf.intValue();
        }
    }

    private static void writeMethodBitmap(OutputStream outputStream, DexProfileData dexProfileData) throws IOException {
        byte[] bArr = new byte[getMethodBitmapStorageSize(dexProfileData.numMethodIds)];
        for (Map.Entry<Integer, Integer> entry : dexProfileData.methods.entrySet()) {
            int intValue = entry.getKey().intValue();
            int intValue2 = entry.getValue().intValue();
            if ((intValue2 & 2) != 0) {
                setMethodBitmapBit(bArr, 2, intValue, dexProfileData);
            }
            if ((intValue2 & 4) != 0) {
                setMethodBitmapBit(bArr, 4, intValue, dexProfileData);
            }
        }
        outputStream.write(bArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DexProfileData[] readProfile(InputStream inputStream, byte[] bArr, String str) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.V010_P)) {
            throw Encoding.error("Unsupported version");
        }
        int readUInt8 = Encoding.readUInt8(inputStream);
        byte[] readCompressed = Encoding.readCompressed(inputStream, (int) Encoding.readUInt32(inputStream), (int) Encoding.readUInt32(inputStream));
        if (inputStream.read() > 0) {
            throw Encoding.error("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(readCompressed);
        try {
            DexProfileData[] readUncompressedBody = readUncompressedBody(byteArrayInputStream, str, readUInt8);
            byteArrayInputStream.close();
            return readUncompressedBody;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DexProfileData[] readMeta(InputStream inputStream, byte[] bArr, byte[] bArr2, DexProfileData[] dexProfileDataArr) throws IOException {
        if (Arrays.equals(bArr, ProfileVersion.METADATA_V001_N)) {
            if (Arrays.equals(ProfileVersion.V015_S, bArr2)) {
                throw Encoding.error("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            }
            return readMetadata001(inputStream, bArr, dexProfileDataArr);
        }
        if (Arrays.equals(bArr, ProfileVersion.METADATA_V002)) {
            return readMetadataV002(inputStream, bArr2, dexProfileDataArr);
        }
        throw Encoding.error("Unsupported meta version");
    }

    static DexProfileData[] readMetadata001(InputStream inputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        if (!Arrays.equals(bArr, ProfileVersion.METADATA_V001_N)) {
            throw Encoding.error("Unsupported meta version");
        }
        int readUInt8 = Encoding.readUInt8(inputStream);
        byte[] readCompressed = Encoding.readCompressed(inputStream, (int) Encoding.readUInt32(inputStream), (int) Encoding.readUInt32(inputStream));
        if (inputStream.read() > 0) {
            throw Encoding.error("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(readCompressed);
        try {
            DexProfileData[] readMetadataForNBody = readMetadataForNBody(byteArrayInputStream, readUInt8, dexProfileDataArr);
            byteArrayInputStream.close();
            return readMetadataForNBody;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    static DexProfileData[] readMetadataV002(InputStream inputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) throws IOException {
        int readUInt16 = Encoding.readUInt16(inputStream);
        byte[] readCompressed = Encoding.readCompressed(inputStream, (int) Encoding.readUInt32(inputStream), (int) Encoding.readUInt32(inputStream));
        if (inputStream.read() > 0) {
            throw Encoding.error("Content found after the end of file");
        }
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(readCompressed);
        try {
            DexProfileData[] readMetadataV002Body = readMetadataV002Body(byteArrayInputStream, bArr, readUInt16, dexProfileDataArr);
            byteArrayInputStream.close();
            return readMetadataV002Body;
        } catch (Throwable th) {
            try {
                byteArrayInputStream.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static DexProfileData[] readMetadataV002Body(InputStream inputStream, byte[] bArr, int i, DexProfileData[] dexProfileDataArr) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i != dexProfileDataArr.length) {
            throw Encoding.error("Mismatched number of dex files found in metadata");
        }
        for (int i2 = 0; i2 < i; i2++) {
            Encoding.readUInt16(inputStream);
            String readString = Encoding.readString(inputStream, Encoding.readUInt16(inputStream));
            long readUInt32 = Encoding.readUInt32(inputStream);
            int readUInt16 = Encoding.readUInt16(inputStream);
            DexProfileData findByDexName = findByDexName(dexProfileDataArr, readString);
            if (findByDexName == null) {
                throw Encoding.error("Missing profile key: " + readString);
            }
            findByDexName.mTypeIdCount = readUInt32;
            int[] readClasses = readClasses(inputStream, readUInt16);
            if (Arrays.equals(bArr, ProfileVersion.V001_N)) {
                findByDexName.classSetSize = readUInt16;
                findByDexName.classes = readClasses;
            }
        }
        return dexProfileDataArr;
    }

    private static DexProfileData findByDexName(DexProfileData[] dexProfileDataArr, String str) {
        if (dexProfileDataArr.length <= 0) {
            return null;
        }
        String extractKey = extractKey(str);
        for (int i = 0; i < dexProfileDataArr.length; i++) {
            if (dexProfileDataArr[i].dexName.equals(extractKey)) {
                return dexProfileDataArr[i];
            }
        }
        return null;
    }

    private static DexProfileData[] readMetadataForNBody(InputStream inputStream, int i, DexProfileData[] dexProfileDataArr) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i != dexProfileDataArr.length) {
            throw Encoding.error("Mismatched number of dex files found in metadata");
        }
        String[] strArr = new String[i];
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            int readUInt16 = Encoding.readUInt16(inputStream);
            iArr[i2] = Encoding.readUInt16(inputStream);
            strArr[i2] = Encoding.readString(inputStream, readUInt16);
        }
        for (int i3 = 0; i3 < i; i3++) {
            DexProfileData dexProfileData = dexProfileDataArr[i3];
            if (!dexProfileData.dexName.equals(strArr[i3])) {
                throw Encoding.error("Order of dexfiles in metadata did not match baseline");
            }
            dexProfileData.classSetSize = iArr[i3];
            dexProfileData.classes = readClasses(inputStream, dexProfileData.classSetSize);
        }
        return dexProfileDataArr;
    }

    private static String generateDexKey(String str, String str2, byte[] bArr) {
        String dexKeySeparator = ProfileVersion.dexKeySeparator(bArr);
        if (str.length() <= 0) {
            return enforceSeparator(str2, dexKeySeparator);
        }
        if (str2.equals("classes.dex")) {
            return str;
        }
        if (str2.contains("!") || str2.contains(":")) {
            return enforceSeparator(str2, dexKeySeparator);
        }
        return str2.endsWith(".apk") ? str2 : str + ProfileVersion.dexKeySeparator(bArr) + str2;
    }

    private static String enforceSeparator(String str, String str2) {
        if ("!".equals(str2)) {
            return str.replace(":", "!");
        }
        return ":".equals(str2) ? str.replace("!", ":") : str;
    }

    private static String extractKey(String str) {
        int indexOf = str.indexOf("!");
        if (indexOf < 0) {
            indexOf = str.indexOf(":");
        }
        return indexOf > 0 ? str.substring(indexOf + 1) : str;
    }

    private static DexProfileData[] readUncompressedBody(InputStream inputStream, String str, int i) throws IOException {
        if (inputStream.available() == 0) {
            return new DexProfileData[0];
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[i];
        for (int i2 = 0; i2 < i; i2++) {
            int readUInt16 = Encoding.readUInt16(inputStream);
            int readUInt162 = Encoding.readUInt16(inputStream);
            dexProfileDataArr[i2] = new DexProfileData(str, Encoding.readString(inputStream, readUInt16), Encoding.readUInt32(inputStream), 0L, readUInt162, (int) Encoding.readUInt32(inputStream), (int) Encoding.readUInt32(inputStream), new int[readUInt162], new TreeMap());
        }
        for (int i3 = 0; i3 < i; i3++) {
            DexProfileData dexProfileData = dexProfileDataArr[i3];
            readHotMethodRegion(inputStream, dexProfileData);
            dexProfileData.classes = readClasses(inputStream, dexProfileData.classSetSize);
            readMethodBitmap(inputStream, dexProfileData);
        }
        return dexProfileDataArr;
    }

    private static void readHotMethodRegion(InputStream inputStream, DexProfileData dexProfileData) throws IOException {
        int available = inputStream.available() - dexProfileData.hotMethodRegionSize;
        int i = 0;
        while (inputStream.available() > available) {
            i += Encoding.readUInt16(inputStream);
            dexProfileData.methods.put(Integer.valueOf(i), 1);
            for (int readUInt16 = Encoding.readUInt16(inputStream); readUInt16 > 0; readUInt16--) {
                skipInlineCache(inputStream);
            }
        }
        if (inputStream.available() != available) {
            throw Encoding.error("Read too much data during profile line parse");
        }
    }

    private static void skipInlineCache(InputStream inputStream) throws IOException {
        Encoding.readUInt16(inputStream);
        int readUInt8 = Encoding.readUInt8(inputStream);
        if (readUInt8 == 6 || readUInt8 == 7) {
            return;
        }
        while (readUInt8 > 0) {
            Encoding.readUInt8(inputStream);
            for (int readUInt82 = Encoding.readUInt8(inputStream); readUInt82 > 0; readUInt82--) {
                Encoding.readUInt16(inputStream);
            }
            readUInt8--;
        }
    }

    private static int[] readClasses(InputStream inputStream, int i) throws IOException {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += Encoding.readUInt16(inputStream);
            iArr[i3] = i2;
        }
        return iArr;
    }

    private static void readMethodBitmap(InputStream inputStream, DexProfileData dexProfileData) throws IOException {
        BitSet valueOf = BitSet.valueOf(Encoding.read(inputStream, Encoding.bitsToBytes(dexProfileData.numMethodIds * 2)));
        for (int i = 0; i < dexProfileData.numMethodIds; i++) {
            int readFlagsFromBitmap = readFlagsFromBitmap(valueOf, i, dexProfileData.numMethodIds);
            if (readFlagsFromBitmap != 0) {
                Integer num = dexProfileData.methods.get(Integer.valueOf(i));
                if (num == null) {
                    num = 0;
                }
                dexProfileData.methods.put(Integer.valueOf(i), Integer.valueOf(readFlagsFromBitmap | num.intValue()));
            }
        }
    }

    private static int readFlagsFromBitmap(BitSet bitSet, int i, int i2) {
        int i3 = bitSet.get(methodFlagBitmapIndex(2, i, i2)) ? 2 : 0;
        return bitSet.get(methodFlagBitmapIndex(4, i, i2)) ? i3 | 4 : i3;
    }

    private static int methodFlagBitmapIndex(int i, int i2, int i3) {
        if (i == 1) {
            throw Encoding.error("HOT methods are not stored in the bitmap");
        }
        if (i == 2) {
            return i2;
        }
        if (i == 4) {
            return i2 + i3;
        }
        throw Encoding.error("Unexpected flag: " + i);
    }
}
