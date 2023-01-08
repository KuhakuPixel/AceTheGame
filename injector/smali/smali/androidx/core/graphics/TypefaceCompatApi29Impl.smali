.class public Landroidx/core/graphics/TypefaceCompatApi29Impl;
.super Landroidx/core/graphics/TypefaceCompatBaseImpl;
.source "TypefaceCompatApi29Impl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/core/graphics/TypefaceCompatBaseImpl;-><init>()V

    return-void
.end method

.method private findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;
    .locals 6
    .param p1, "family"    # Landroid/graphics/fonts/FontFamily;
    .param p2, "style"    # I

    .line 53
    new-instance v0, Landroid/graphics/fonts/FontStyle;

    .line 54
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_0

    const/16 v1, 0x2bc

    goto :goto_0

    .line 55
    :cond_0
    const/16 v1, 0x190

    .line 56
    :goto_0
    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    .line 57
    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v1, v2}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 59
    .local v0, "desiredStyle":Landroid/graphics/fonts/FontStyle;
    invoke-virtual {p1, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 60
    .local v1, "bestFont":Landroid/graphics/fonts/Font;
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v2

    invoke-static {v0, v2}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v2

    .line 61
    .local v2, "bestScore":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 62
    invoke-virtual {p1, v3}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v4

    .line 63
    .local v4, "candidate":Landroid/graphics/fonts/Font;
    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-static {v0, v5}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I

    move-result v5

    .line 64
    .local v5, "score":I
    if-ge v5, v2, :cond_2

    .line 65
    move-object v1, v4

    .line 66
    move v2, v5

    .line 61
    .end local v4    # "candidate":Landroid/graphics/fonts/Font;
    .end local v5    # "score":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 69
    .end local v3    # "i":I
    :cond_3
    return-object v1
.end method

.method private static getMatchScore(Landroid/graphics/fonts/FontStyle;Landroid/graphics/fonts/FontStyle;)I
    .locals 3
    .param p0, "o1"    # Landroid/graphics/fonts/FontStyle;
    .param p1, "o2"    # Landroid/graphics/fonts/FontStyle;

    .line 48
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getWeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    .line 49
    invoke-virtual {p0}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/fonts/FontStyle;->getSlant()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    add-int/2addr v0, v1

    .line 48
    return v0
.end method


# virtual methods
.method public createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "familyEntry"    # Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
    .param p3, "resources"    # Landroid/content/res/Resources;
    .param p4, "style"    # I

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroidx/core/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->getEntries()[Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    aget-object v6, v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 134
    .local v6, "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :try_start_1
    new-instance v7, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getResourceId()I

    move-result v8

    invoke-direct {v7, p3, v8}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    .line 135
    invoke-virtual {v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getWeight()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 136
    invoke-virtual {v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->isItalic()Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    .line 137
    :cond_0
    const/4 v8, 0x0

    .line 136
    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 138
    invoke-virtual {v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getTtcIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 139
    invoke-virtual {v6}, Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v7

    .line 140
    invoke-virtual {v7}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v7

    .line 141
    .local v7, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v0, :cond_1

    .line 142
    new-instance v8, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v8, v7}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v8

    goto :goto_2

    .line 144
    :cond_1
    invoke-virtual {v0, v7}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    .end local v7    # "platformFont":Landroid/graphics/fonts/Font;
    :goto_2
    goto :goto_3

    .line 146
    :catch_0
    move-exception v7

    .line 132
    .end local v6    # "entry":Landroidx/core/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 150
    :cond_2
    if-nez v0, :cond_3

    .line 151
    return-object v1

    .line 153
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    .line 154
    .local v2, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v3, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v3, v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 155
    invoke-direct {p0, v2, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 154
    return-object v1

    .line 157
    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v2    # "family":Landroid/graphics/fonts/FontFamily;
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p4, "style"    # I

    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 92
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v2, 0x0

    :try_start_0
    array-length v3, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, p3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    .local v6, "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :try_start_1
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getUri()Landroid/net/Uri;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v1, v7, v8, p2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 95
    .local v7, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v7, :cond_1

    .line 109
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :cond_0
    goto :goto_4

    .line 98
    :cond_1
    :try_start_2
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v8, v7}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 99
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 100
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->isItalic()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    .line 101
    :cond_2
    const/4 v9, 0x0

    .line 100
    :goto_1
    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 102
    invoke-virtual {v6}, Landroidx/core/provider/FontsContractCompat$FontInfo;->getTtcIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 103
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v8

    .line 104
    .local v8, "platformFont":Landroid/graphics/fonts/Font;
    if-nez v0, :cond_3

    .line 105
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v9, v8}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v0, v9

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {v0, v8}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .end local v8    # "platformFont":Landroid/graphics/fonts/Font;
    :goto_2
    if-eqz v7, :cond_4

    :try_start_3
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 111
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_4
    goto :goto_4

    .line 93
    .restart local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_5

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v9

    :try_start_5
    invoke-static {v8, v9}, Landroidx/core/content/pm/ShortcutXmlParser$$ExternalSyntheticBackport0;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .end local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v6    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .end local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .end local p4    # "style":I
    :cond_5
    :goto_3
    throw v8
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 109
    .end local v7    # "pfd":Landroid/os/ParcelFileDescriptor;
    .restart local v0    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v6    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "cancellationSignal":Landroid/os/CancellationSignal;
    .restart local p3    # "fonts":[Landroidx/core/provider/FontsContractCompat$FontInfo;
    .restart local p4    # "style":I
    :catch_0
    move-exception v7

    .line 92
    .end local v6    # "font":Landroidx/core/provider/FontsContractCompat$FontInfo;
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 113
    :cond_6
    if-nez v0, :cond_7

    .line 114
    return-object v2

    .line 116
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v3

    .line 117
    .local v3, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v4, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v4, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 118
    invoke-direct {p0, v3, p4}, Landroidx/core/graphics/TypefaceCompatApi29Impl;->findBaseFont(Landroid/graphics/fonts/FontFamily;I)Landroid/graphics/fonts/Font;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v4

    .line 119
    invoke-virtual {v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 117
    return-object v2

    .line 120
    .end local v3    # "family":Landroid/graphics/fonts/FontFamily;
    :catch_1
    move-exception v3

    .line 121
    .local v3, "e":Ljava/lang/Exception;
    return-object v2
.end method

.method protected createFromInputStream(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "is"    # Ljava/io/InputStream;

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "style"    # I

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "family":Landroid/graphics/fonts/FontFamily;
    const/4 v1, 0x0

    .line 172
    .local v1, "font":Landroid/graphics/fonts/Font;
    :try_start_0
    new-instance v2, Landroid/graphics/fonts/Font$Builder;

    invoke-direct {v2, p2, p3}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/Resources;I)V

    invoke-virtual {v2}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v2

    move-object v1, v2

    .line 173
    new-instance v2, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-direct {v2, v1}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v2

    move-object v0, v2

    .line 174
    new-instance v2, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v2, v0}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 176
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    return-object v2

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    return-object v3
.end method

.method protected findBestInfo([Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroidx/core/provider/FontsContractCompat$FontInfo;
    .locals 2
    .param p1, "fonts"    # [Landroidx/core/provider/FontsContractCompat$FontInfo;
    .param p2, "style"    # I

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do not use this function in API 29 or later."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
