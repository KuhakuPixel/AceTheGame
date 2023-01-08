.class Landroidx/core/graphics/drawable/IconCompat$Api23Impl;
.super Ljava/lang/Object;
.source "IconCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/IconCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1123
    return-void
.end method

.method static createFromIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 1127
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1141
    :pswitch_0
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1142
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    iput-object p1, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 1143
    return-object v0

    .line 1139
    .end local v0    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    :pswitch_1
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 1137
    :pswitch_2
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 1129
    :pswitch_3
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1131
    .local v0, "resPackage":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, v0}, Landroidx/core/graphics/drawable/IconCompat;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1132
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result v2

    .line 1131
    invoke-static {v1, v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1133
    :catch_0
    move-exception v1

    .line 1134
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Icon resource cannot be found"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static createFromIconInner(Ljava/lang/Object;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 3
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1205
    invoke-static {p0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1214
    :pswitch_0
    new-instance v0, Landroidx/core/graphics/drawable/IconCompat;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;-><init>(I)V

    .line 1215
    .local v0, "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    iput-object p0, v0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    .line 1216
    return-object v0

    .line 1212
    .end local v0    # "iconCompat":Landroidx/core/graphics/drawable/IconCompat;
    :pswitch_1
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 1210
    :pswitch_2
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithContentUri(Landroid/net/Uri;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    .line 1208
    :pswitch_3
    const/4 v0, 0x0

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api23Impl;->getResId(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getResId(Ljava/lang/Object;)I
    .locals 6
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1230
    const-string v0, "Unable to get icon resource"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 1231
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResId(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1234
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResId"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1241
    :catch_0
    move-exception v3

    .line 1242
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1243
    return v2

    .line 1238
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 1239
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1240
    return v2

    .line 1235
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 1236
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1237
    return v2
.end method

.method static getResPackage(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1183
    const-string v0, "Unable to get icon package"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 1184
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getResPackage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1187
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getResPackage"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1194
    :catch_0
    move-exception v3

    .line 1195
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    return-object v2

    .line 1191
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 1192
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1193
    return-object v2

    .line 1188
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 1189
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1190
    return-object v2
.end method

.method static getType(Ljava/lang/Object;)I
    .locals 7
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1155
    const-string v0, "Unable to get icon type "

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 1156
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getType(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 1159
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getType"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1166
    :catch_0
    move-exception v3

    .line 1167
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1168
    return v2

    .line 1163
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 1164
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1165
    return v2

    .line 1160
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 1161
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1162
    return v2
.end method

.method static getUri(Ljava/lang/Object;)Landroid/net/Uri;
    .locals 7
    .param p0, "icon"    # Ljava/lang/Object;

    .line 1259
    const-string v0, "Unable to get icon uri"

    const-string v1, "IconCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v2, v3, :cond_0

    .line 1260
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat$Api28Impl;->getUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1263
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getUri"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 1270
    :catch_0
    move-exception v3

    .line 1271
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1272
    return-object v2

    .line 1267
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 1268
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    return-object v2

    .line 1264
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    .line 1265
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1266
    return-object v2
.end method

.method static loadDrawable(Landroid/graphics/drawable/Icon;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "context"    # Landroid/content/Context;

    .line 1341
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static toIcon(Landroidx/core/graphics/drawable/IconCompat;Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 4
    .param p0, "iconCompat"    # Landroidx/core/graphics/drawable/IconCompat;
    .param p1, "context"    # Landroid/content/Context;

    .line 1280
    iget v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mType:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    packed-switch v0, :pswitch_data_0

    .line 1328
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1306
    :pswitch_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1e

    if-lt v0, v3, :cond_0

    .line 1307
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api30Impl;->createWithAdaptiveBitmapContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1308
    .local v0, "icon":Landroid/graphics/drawable/Icon;
    goto/16 :goto_0

    .line 1310
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_0
    if-eqz p1, :cond_3

    .line 1315
    invoke-virtual {p0, p1}, Landroidx/core/graphics/drawable/IconCompat;->getUriInputStream(Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v0

    .line 1316
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_2

    .line 1320
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v2, :cond_1

    .line 1321
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    move-object v0, v1

    .local v1, "icon":Landroid/graphics/drawable/Icon;
    goto/16 :goto_0

    .line 1323
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_1
    nop

    .line 1324
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1323
    invoke-static {v2, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 1326
    .restart local v1    # "icon":Landroid/graphics/drawable/Icon;
    move-object v0, v1

    goto/16 :goto_0

    .line 1317
    .end local v1    # "icon":Landroid/graphics/drawable/Icon;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load adaptive icon from uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1318
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1311
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is required to resolve the file uri of the icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1313
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1288
    :pswitch_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_4

    .line 1289
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat$Api26Impl;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .local v0, "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1291
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :cond_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1292
    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createLegacyIconFromAdaptiveIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1291
    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1294
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1303
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_3
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1304
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1299
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_4
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    iget v2, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt2:I

    invoke-static {v0, v1, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1301
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1296
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_5
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/IconCompat;->getResPackage()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mInt1:I

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1297
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    goto :goto_0

    .line 1285
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_6
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 1286
    .restart local v0    # "icon":Landroid/graphics/drawable/Icon;
    nop

    .line 1330
    :goto_0
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 1331
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTintList(Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Icon;

    .line 1333
    :cond_5
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    sget-object v2, Landroidx/core/graphics/drawable/IconCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, v2, :cond_6

    .line 1334
    iget-object v1, p0, Landroidx/core/graphics/drawable/IconCompat;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->setTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Icon;

    .line 1336
    :cond_6
    return-object v0

    .line 1283
    .end local v0    # "icon":Landroid/graphics/drawable/Icon;
    :pswitch_7
    iget-object v0, p0, Landroidx/core/graphics/drawable/IconCompat;->mObj1:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
