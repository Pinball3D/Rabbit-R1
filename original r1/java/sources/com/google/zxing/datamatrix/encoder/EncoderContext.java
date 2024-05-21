package com.google.zxing.datamatrix.encoder;

import com.google.zxing.Dimension;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
final class EncoderContext {
    private final StringBuilder codewords;
    private Dimension maxSize;
    private Dimension minSize;
    private final String msg;
    private int newEncoding;
    int pos;
    private SymbolShapeHint shape;
    private int skipAtEnd;
    private SymbolInfo symbolInfo;

    public StringBuilder getCodewords() {
        return this.codewords;
    }

    public String getMessage() {
        return this.msg;
    }

    public int getNewEncoding() {
        return this.newEncoding;
    }

    public SymbolInfo getSymbolInfo() {
        return this.symbolInfo;
    }

    public void resetEncoderSignal() {
        this.newEncoding = -1;
    }

    public void resetSymbolInfo() {
        this.symbolInfo = null;
    }

    public void setSizeConstraints(Dimension dimension, Dimension dimension2) {
        this.minSize = dimension;
        this.maxSize = dimension2;
    }

    public void setSkipAtEnd(int i) {
        this.skipAtEnd = i;
    }

    public void setSymbolShape(SymbolShapeHint symbolShapeHint) {
        this.shape = symbolShapeHint;
    }

    public void signalEncoderChange(int i) {
        this.newEncoding = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public EncoderContext(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.msg = sb.toString();
        this.shape = SymbolShapeHint.FORCE_NONE;
        this.codewords = new StringBuilder(str.length());
        this.newEncoding = -1;
    }

    public char getCurrentChar() {
        return this.msg.charAt(this.pos);
    }

    public char getCurrent() {
        return this.msg.charAt(this.pos);
    }

    public void writeCodewords(String str) {
        this.codewords.append(str);
    }

    public void writeCodeword(char c) {
        this.codewords.append(c);
    }

    public int getCodewordCount() {
        return this.codewords.length();
    }

    public boolean hasMoreCharacters() {
        return this.pos < getTotalMessageCharCount();
    }

    private int getTotalMessageCharCount() {
        return this.msg.length() - this.skipAtEnd;
    }

    public int getRemainingCharacters() {
        return getTotalMessageCharCount() - this.pos;
    }

    public void updateSymbolInfo() {
        updateSymbolInfo(getCodewordCount());
    }

    public void updateSymbolInfo(int i) {
        SymbolInfo symbolInfo = this.symbolInfo;
        if (symbolInfo == null || i > symbolInfo.getDataCapacity()) {
            this.symbolInfo = SymbolInfo.lookup(i, this.shape, this.minSize, this.maxSize, true);
        }
    }
}
