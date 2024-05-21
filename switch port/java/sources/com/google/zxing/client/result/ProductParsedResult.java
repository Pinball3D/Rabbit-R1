package com.google.zxing.client.result;

/* loaded from: classes3.dex */
public final class ProductParsedResult extends ParsedResult {
    private final String normalizedProductID;
    private final String productID;

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        return this.productID;
    }

    public String getNormalizedProductID() {
        return this.normalizedProductID;
    }

    public String getProductID() {
        return this.productID;
    }

    ProductParsedResult(String str) {
        this(str, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ProductParsedResult(String str, String str2) {
        super(ParsedResultType.PRODUCT);
        this.productID = str;
        this.normalizedProductID = str2;
    }
}
