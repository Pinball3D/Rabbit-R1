package com.google.zxing.common;

import java.util.List;

/* loaded from: classes3.dex */
public final class DecoderResult {
    private final List<byte[]> byteSegments;
    private final String ecLevel;
    private Integer erasures;
    private Integer errorsCorrected;
    private int numBits;
    private Object other;
    private final byte[] rawBytes;
    private final int structuredAppendParity;
    private final int structuredAppendSequenceNumber;
    private final String text;

    public List<byte[]> getByteSegments() {
        return this.byteSegments;
    }

    public String getECLevel() {
        return this.ecLevel;
    }

    public Integer getErasures() {
        return this.erasures;
    }

    public Integer getErrorsCorrected() {
        return this.errorsCorrected;
    }

    public int getNumBits() {
        return this.numBits;
    }

    public Object getOther() {
        return this.other;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public int getStructuredAppendParity() {
        return this.structuredAppendParity;
    }

    public int getStructuredAppendSequenceNumber() {
        return this.structuredAppendSequenceNumber;
    }

    public String getText() {
        return this.text;
    }

    public boolean hasStructuredAppend() {
        return this.structuredAppendParity >= 0 && this.structuredAppendSequenceNumber >= 0;
    }

    public void setErasures(Integer num) {
        this.erasures = num;
    }

    public void setErrorsCorrected(Integer num) {
        this.errorsCorrected = num;
    }

    public void setNumBits(int i) {
        this.numBits = i;
    }

    public void setOther(Object obj) {
        this.other = obj;
    }

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2) {
        this(bArr, str, list, str2, -1, -1);
    }

    public DecoderResult(byte[] bArr, String str, List<byte[]> list, String str2, int i, int i2) {
        this.rawBytes = bArr;
        this.numBits = bArr == null ? 0 : bArr.length * 8;
        this.text = str;
        this.byteSegments = list;
        this.ecLevel = str2;
        this.structuredAppendParity = i2;
        this.structuredAppendSequenceNumber = i;
    }
}
