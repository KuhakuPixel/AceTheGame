.class public Landroidx/core/content/res/FontResourcesParserCompat;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;,
        Landroidx/core/content/res/FontResourcesParserCompat$FetchStrategy;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MILLIS:I = 0x1f4

.field public static final FETCH_STRATEGY_ASYNC:I = 0x1

.field public static final FETCH_STRATEGY_BLOCKING:I = 0x0

.field public static final INFINITE_TIMEOUT_VALUE:I = -0x1

.field private static final ITALIC:I = 0x1

.field private static final NORMAL_WEIGHT:I = 0x190


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 362
    return-void
.end method

.method private static getType(Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p0, "typedArray"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I

    .line 257
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 258
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat$Api21Impl;->getType(Landroid/content/res/TypedArray;I)I

    move-result v0

    return v0

    .line 260
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 261
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 262
    iget v1, v0, Landroid/util/TypedValue;->type:I

    return v1
.end method

.method public static parse(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v1, v0

    .local v1, "type":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    if-ne v1, v2, :cond_1

    .line 194
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v0

    return-object v0

    .line 192
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static readCerts(Landroid/content/res/Resources;I)Ljava/util/List;
    .locals 6
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "certsId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "I)",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "[B>;>;"
        }
    .end annotation

    .line 276
    if-nez p1, :cond_0

    .line 277
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 281
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    return-object v1

    .line 285
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 288
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->getType(Landroid/content/res/TypedArray;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 289
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 290
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 291
    .local v4, "certId":I
    if-eqz v4, :cond_2

    .line 292
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v4    # "certId":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_3
    goto :goto_1

    .line 296
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/content/res/FontResourcesParserCompat;->toByteArrayList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    :goto_1
    nop

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 298
    return-object v1

    .line 300
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 301
    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method private static readFamilies(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 3
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 199
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "font-family"

    invoke-interface {p0, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;

    move-result-object v1

    return-object v1

    .line 204
    :cond_0
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 205
    return-object v1
.end method

.method private static readFamily(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .locals 14
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 211
    invoke-static {p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 212
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/core/R$styleable;->FontFamily:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 213
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v2, Landroidx/core/R$styleable;->FontFamily_fontProviderAuthority:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, "authority":Ljava/lang/String;
    sget v3, Landroidx/core/R$styleable;->FontFamily_fontProviderPackage:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "providerPackage":Ljava/lang/String;
    sget v4, Landroidx/core/R$styleable;->FontFamily_fontProviderQuery:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "query":Ljava/lang/String;
    sget v5, Landroidx/core/R$styleable;->FontFamily_fontProviderCerts:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 217
    .local v5, "certsId":I
    sget v7, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchStrategy:I

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 219
    .local v7, "strategy":I
    sget v8, Landroidx/core/R$styleable;->FontFamily_fontProviderFetchTimeout:I

    const/16 v9, 0x1f4

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    .line 221
    .local v8, "timeoutMs":I
    sget v9, Landroidx/core/R$styleable;->FontFamily_fontProviderSystemFontFamily:I

    .line 222
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 224
    .local v9, "systemFontFamilyName":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    const/4 v10, 0x3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 226
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    if-eq v6, v10, :cond_0

    .line 227
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-static {p1, v5}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v6

    .line 230
    .local v6, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    new-instance v10, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    new-instance v11, Landroidx/core/provider/FontRequest;

    invoke-direct {v11, v2, v3, v4, v6}, Landroidx/core/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-direct {v10, v11, v7, v8, v9}, Landroidx/core/content/res/FontResourcesParserCompat$ProviderResourceEntry;-><init>(Landroidx/core/provider/FontRequest;IILjava/lang/String;)V

    return-object v10

    .line 237
    .end local v6    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v11, "fonts":Ljava/util/List;, "Ljava/util/List<Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;>;"
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    if-eq v12, v10, :cond_4

    .line 239
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    const/4 v13, 0x2

    if-eq v12, v13, :cond_2

    goto :goto_1

    .line 240
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "tag":Ljava/lang/String;
    const-string v13, "font"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 242
    invoke-static {p0, p1}, Landroidx/core/content/res/FontResourcesParserCompat;->readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 244
    :cond_3
    invoke-static {p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 246
    .end local v12    # "tag":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 247
    :cond_4
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 248
    const/4 v6, 0x0

    return-object v6

    .line 251
    :cond_5
    new-instance v10, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    new-array v6, v6, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-interface {v11, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    invoke-direct {v10, v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;-><init>([Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V

    return-object v10
.end method

.method private static readFont(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .locals 21
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-static/range {p0 .. p0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 316
    .local v0, "attrs":Landroid/util/AttributeSet;
    sget-object v1, Landroidx/core/R$styleable;->FontFamilyFont:[I

    move-object/from16 v2, p1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 317
    .local v1, "array":Landroid/content/res/TypedArray;
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_fontWeight:I

    goto :goto_0

    .line 319
    :cond_0
    sget v3, Landroidx/core/R$styleable;->FontFamilyFont_android_fontWeight:I

    :goto_0
    nop

    .line 320
    .local v3, "weightAttr":I
    const/16 v4, 0x190

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 321
    .local v4, "weight":I
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_fontStyle:I

    goto :goto_1

    .line 323
    :cond_1
    sget v5, Landroidx/core/R$styleable;->FontFamilyFont_android_fontStyle:I

    :goto_1
    move v12, v5

    .line 324
    .local v12, "styleAttr":I
    const/4 v5, 0x0

    invoke-virtual {v1, v12, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v7, v6, :cond_2

    const/4 v8, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    .line 325
    .local v8, "isItalic":Z
    :goto_2
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 326
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_ttcIndex:I

    goto :goto_3

    .line 327
    :cond_3
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_ttcIndex:I

    :goto_3
    move v13, v6

    .line 329
    .local v13, "ttcIndexAttr":I
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 330
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_fontVariationSettings:I

    goto :goto_4

    .line 331
    :cond_4
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_fontVariationSettings:I

    :goto_4
    move v14, v6

    .line 332
    .local v14, "variationSettingsAttr":I
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 333
    .local v15, "variationSettings":Ljava/lang/String;
    invoke-virtual {v1, v13, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 334
    .local v16, "ttcIndex":I
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 335
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_font:I

    goto :goto_5

    .line 336
    :cond_5
    sget v6, Landroidx/core/R$styleable;->FontFamilyFont_android_font:I

    :goto_5
    move v11, v6

    .line 337
    .local v11, "resourceAttr":I
    invoke-virtual {v1, v11, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 338
    .local v17, "resourceId":I
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 339
    .local v18, "filename":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 340
    :goto_6
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    .line 341
    invoke-static/range {p0 .. p0}, Landroidx/core/content/res/FontResourcesParserCompat;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_6

    .line 343
    :cond_6
    new-instance v19, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-object/from16 v5, v19

    move-object/from16 v6, v18

    move v7, v4

    move-object v9, v15

    move/from16 v10, v16

    move/from16 v20, v11

    .end local v11    # "resourceAttr":I
    .local v20, "resourceAttr":I
    move/from16 v11, v17

    invoke-direct/range {v5 .. v11}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;-><init>(Ljava/lang/String;IZLjava/lang/String;II)V

    return-object v19
.end method

.method private static skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    const/4 v0, 0x1

    .line 349
    .local v0, "depth":I
    :goto_0
    if-lez v0, :cond_0

    .line 350
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 355
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 352
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 353
    nop

    .line 356
    :goto_1
    goto :goto_0

    .line 359
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static toByteArrayList([Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "stringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p0, v3

    .line 308
    .local v4, "item":Ljava/lang/String;
    invoke-static {v4, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v4    # "item":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return-object v0
.end method
