package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.decoder.CryptoInfo;
import com.google.android.exoplayer2.decoder.DecoderInputBuffer;
import com.google.android.exoplayer2.extractor.TrackOutput;
import com.google.android.exoplayer2.source.SampleQueue;
import com.google.android.exoplayer2.upstream.Allocation;
import com.google.android.exoplayer2.upstream.Allocator;
import com.google.android.exoplayer2.upstream.DataReader;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.ParsableByteArray;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class SampleDataQueue {
    private static final int INITIAL_SCRATCH_SIZE = 32;
    private final int allocationLength;
    private final Allocator allocator;
    private AllocationNode firstAllocationNode;
    private AllocationNode readAllocationNode;
    private final ParsableByteArray scratch;
    private long totalBytesWritten;
    private AllocationNode writeAllocationNode;

    public long getTotalBytesWritten() {
        return this.totalBytesWritten;
    }

    public void rewind() {
        this.readAllocationNode = this.firstAllocationNode;
    }

    public SampleDataQueue(Allocator allocator) {
        this.allocator = allocator;
        int individualAllocationLength = allocator.getIndividualAllocationLength();
        this.allocationLength = individualAllocationLength;
        this.scratch = new ParsableByteArray(32);
        AllocationNode allocationNode = new AllocationNode(0L, individualAllocationLength);
        this.firstAllocationNode = allocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
    }

    public void reset() {
        clearAllocationNodes(this.firstAllocationNode);
        this.firstAllocationNode.reset(0L, this.allocationLength);
        AllocationNode allocationNode = this.firstAllocationNode;
        this.readAllocationNode = allocationNode;
        this.writeAllocationNode = allocationNode;
        this.totalBytesWritten = 0L;
        this.allocator.trim();
    }

    public void discardUpstreamSampleBytes(long j) {
        Assertions.checkArgument(j <= this.totalBytesWritten);
        this.totalBytesWritten = j;
        if (j == 0 || j == this.firstAllocationNode.startPosition) {
            clearAllocationNodes(this.firstAllocationNode);
            AllocationNode allocationNode = new AllocationNode(this.totalBytesWritten, this.allocationLength);
            this.firstAllocationNode = allocationNode;
            this.readAllocationNode = allocationNode;
            this.writeAllocationNode = allocationNode;
            return;
        }
        AllocationNode allocationNode2 = this.firstAllocationNode;
        while (this.totalBytesWritten > allocationNode2.endPosition) {
            allocationNode2 = allocationNode2.next;
        }
        AllocationNode allocationNode3 = (AllocationNode) Assertions.checkNotNull(allocationNode2.next);
        clearAllocationNodes(allocationNode3);
        allocationNode2.next = new AllocationNode(allocationNode2.endPosition, this.allocationLength);
        this.writeAllocationNode = this.totalBytesWritten == allocationNode2.endPosition ? allocationNode2.next : allocationNode2;
        if (this.readAllocationNode == allocationNode3) {
            this.readAllocationNode = allocationNode2.next;
        }
    }

    public void readToBuffer(DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        this.readAllocationNode = readSampleData(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void peekToBuffer(DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder) {
        readSampleData(this.readAllocationNode, decoderInputBuffer, sampleExtrasHolder, this.scratch);
    }

    public void discardDownstreamTo(long j) {
        if (j == -1) {
            return;
        }
        while (j >= this.firstAllocationNode.endPosition) {
            this.allocator.release(this.firstAllocationNode.allocation);
            this.firstAllocationNode = this.firstAllocationNode.clear();
        }
        if (this.readAllocationNode.startPosition < this.firstAllocationNode.startPosition) {
            this.readAllocationNode = this.firstAllocationNode;
        }
    }

    public int sampleData(DataReader dataReader, int i, boolean z) throws IOException {
        int read = dataReader.read(this.writeAllocationNode.allocation.data, this.writeAllocationNode.translateOffset(this.totalBytesWritten), preAppend(i));
        if (read != -1) {
            postAppend(read);
            return read;
        }
        if (z) {
            return -1;
        }
        throw new EOFException();
    }

    public void sampleData(ParsableByteArray parsableByteArray, int i) {
        while (i > 0) {
            int preAppend = preAppend(i);
            parsableByteArray.readBytes(this.writeAllocationNode.allocation.data, this.writeAllocationNode.translateOffset(this.totalBytesWritten), preAppend);
            i -= preAppend;
            postAppend(preAppend);
        }
    }

    private void clearAllocationNodes(AllocationNode allocationNode) {
        if (allocationNode.allocation == null) {
            return;
        }
        this.allocator.release(allocationNode);
        allocationNode.clear();
    }

    private int preAppend(int i) {
        if (this.writeAllocationNode.allocation == null) {
            this.writeAllocationNode.initialize(this.allocator.allocate(), new AllocationNode(this.writeAllocationNode.endPosition, this.allocationLength));
        }
        return Math.min(i, (int) (this.writeAllocationNode.endPosition - this.totalBytesWritten));
    }

    private void postAppend(int i) {
        long j = this.totalBytesWritten + i;
        this.totalBytesWritten = j;
        if (j == this.writeAllocationNode.endPosition) {
            this.writeAllocationNode = this.writeAllocationNode.next;
        }
    }

    private static AllocationNode readSampleData(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        if (decoderInputBuffer.isEncrypted()) {
            allocationNode = readEncryptionData(allocationNode, decoderInputBuffer, sampleExtrasHolder, parsableByteArray);
        }
        if (decoderInputBuffer.hasSupplementalData()) {
            parsableByteArray.reset(4);
            AllocationNode readData = readData(allocationNode, sampleExtrasHolder.offset, parsableByteArray.getData(), 4);
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            sampleExtrasHolder.offset += 4;
            sampleExtrasHolder.size -= 4;
            decoderInputBuffer.ensureSpaceForWrite(readUnsignedIntToInt);
            AllocationNode readData2 = readData(readData, sampleExtrasHolder.offset, decoderInputBuffer.data, readUnsignedIntToInt);
            sampleExtrasHolder.offset += readUnsignedIntToInt;
            sampleExtrasHolder.size -= readUnsignedIntToInt;
            decoderInputBuffer.resetSupplementalData(sampleExtrasHolder.size);
            return readData(readData2, sampleExtrasHolder.offset, decoderInputBuffer.supplementalData, sampleExtrasHolder.size);
        }
        decoderInputBuffer.ensureSpaceForWrite(sampleExtrasHolder.size);
        return readData(allocationNode, sampleExtrasHolder.offset, decoderInputBuffer.data, sampleExtrasHolder.size);
    }

    private static AllocationNode readEncryptionData(AllocationNode allocationNode, DecoderInputBuffer decoderInputBuffer, SampleQueue.SampleExtrasHolder sampleExtrasHolder, ParsableByteArray parsableByteArray) {
        long j = sampleExtrasHolder.offset;
        int i = 1;
        parsableByteArray.reset(1);
        AllocationNode readData = readData(allocationNode, j, parsableByteArray.getData(), 1);
        long j2 = j + 1;
        byte b = parsableByteArray.getData()[0];
        boolean z = (b & 128) != 0;
        int i2 = b & Byte.MAX_VALUE;
        CryptoInfo cryptoInfo = decoderInputBuffer.cryptoInfo;
        if (cryptoInfo.iv == null) {
            cryptoInfo.iv = new byte[16];
        } else {
            Arrays.fill(cryptoInfo.iv, (byte) 0);
        }
        AllocationNode readData2 = readData(readData, j2, cryptoInfo.iv, i2);
        long j3 = j2 + i2;
        if (z) {
            parsableByteArray.reset(2);
            readData2 = readData(readData2, j3, parsableByteArray.getData(), 2);
            j3 += 2;
            i = parsableByteArray.readUnsignedShort();
        }
        int i3 = i;
        int[] iArr = cryptoInfo.numBytesOfClearData;
        if (iArr == null || iArr.length < i3) {
            iArr = new int[i3];
        }
        int[] iArr2 = iArr;
        int[] iArr3 = cryptoInfo.numBytesOfEncryptedData;
        if (iArr3 == null || iArr3.length < i3) {
            iArr3 = new int[i3];
        }
        int[] iArr4 = iArr3;
        if (z) {
            int i4 = i3 * 6;
            parsableByteArray.reset(i4);
            readData2 = readData(readData2, j3, parsableByteArray.getData(), i4);
            j3 += i4;
            parsableByteArray.setPosition(0);
            for (int i5 = 0; i5 < i3; i5++) {
                iArr2[i5] = parsableByteArray.readUnsignedShort();
                iArr4[i5] = parsableByteArray.readUnsignedIntToInt();
            }
        } else {
            iArr2[0] = 0;
            iArr4[0] = sampleExtrasHolder.size - ((int) (j3 - sampleExtrasHolder.offset));
        }
        TrackOutput.CryptoData cryptoData = (TrackOutput.CryptoData) Util.castNonNull(sampleExtrasHolder.cryptoData);
        cryptoInfo.set(i3, iArr2, iArr4, cryptoData.encryptionKey, cryptoInfo.iv, cryptoData.cryptoMode, cryptoData.encryptedBlocks, cryptoData.clearBlocks);
        int i6 = (int) (j3 - sampleExtrasHolder.offset);
        sampleExtrasHolder.offset += i6;
        sampleExtrasHolder.size -= i6;
        return readData2;
    }

    private static AllocationNode readData(AllocationNode allocationNode, long j, ByteBuffer byteBuffer, int i) {
        AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j);
        while (i > 0) {
            int min = Math.min(i, (int) (nodeContainingPosition.endPosition - j));
            byteBuffer.put(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j), min);
            i -= min;
            j += min;
            if (j == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    private static AllocationNode readData(AllocationNode allocationNode, long j, byte[] bArr, int i) {
        AllocationNode nodeContainingPosition = getNodeContainingPosition(allocationNode, j);
        int i2 = i;
        while (i2 > 0) {
            int min = Math.min(i2, (int) (nodeContainingPosition.endPosition - j));
            System.arraycopy(nodeContainingPosition.allocation.data, nodeContainingPosition.translateOffset(j), bArr, i - i2, min);
            i2 -= min;
            j += min;
            if (j == nodeContainingPosition.endPosition) {
                nodeContainingPosition = nodeContainingPosition.next;
            }
        }
        return nodeContainingPosition;
    }

    private static AllocationNode getNodeContainingPosition(AllocationNode allocationNode, long j) {
        while (j >= allocationNode.endPosition) {
            allocationNode = allocationNode.next;
        }
        return allocationNode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class AllocationNode implements Allocator.AllocationNode {
        public Allocation allocation;
        public long endPosition;
        public AllocationNode next;
        public long startPosition;

        public AllocationNode clear() {
            this.allocation = null;
            AllocationNode allocationNode = this.next;
            this.next = null;
            return allocationNode;
        }

        public void initialize(Allocation allocation, AllocationNode allocationNode) {
            this.allocation = allocation;
            this.next = allocationNode;
        }

        public AllocationNode(long j, int i) {
            reset(j, i);
        }

        public void reset(long j, int i) {
            Assertions.checkState(this.allocation == null);
            this.startPosition = j;
            this.endPosition = j + i;
        }

        public int translateOffset(long j) {
            return ((int) (j - this.startPosition)) + this.allocation.offset;
        }

        @Override // com.google.android.exoplayer2.upstream.Allocator.AllocationNode
        public Allocation getAllocation() {
            return (Allocation) Assertions.checkNotNull(this.allocation);
        }

        @Override // com.google.android.exoplayer2.upstream.Allocator.AllocationNode
        public Allocator.AllocationNode next() {
            AllocationNode allocationNode = this.next;
            if (allocationNode == null || allocationNode.allocation == null) {
                return null;
            }
            return allocationNode;
        }
    }
}
