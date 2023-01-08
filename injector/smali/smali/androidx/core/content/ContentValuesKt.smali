.class public final Landroidx/core/content/ContentValuesKt;
.super Ljava/lang/Object;
.source "ContentValues.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u001a;\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a\u0018\u0012\u0014\u0008\u0001\u0012\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00040\u0003\"\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0004\u00a2\u0006\u0002\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "contentValuesOf",
        "Landroid/content/ContentValues;",
        "pairs",
        "",
        "Lkotlin/Pair;",
        "",
        "",
        "([Lkotlin/Pair;)Landroid/content/ContentValues;",
        "core-ktx_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final varargs contentValuesOf([Lkotlin/Pair;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "pairs"    # [Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    const-string v0, "pairs"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    array-length v1, p0

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    move-object v1, v0

    .local v1, "$this$contentValuesOf_u24lambda_u2d0":Landroid/content/ContentValues;
    const/4 v2, 0x0

    .line 29
    .local v2, "$i$a$-apply-ContentValuesKt$contentValuesOf$1":I
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_a

    aget-object v5, p0, v4

    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v5

    .line 30
    .local v5, "value":Ljava/lang/Object;
    nop

    .line 31
    if-nez v5, :cond_0

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 32
    :cond_0
    instance-of v7, v5, Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 33
    :cond_1
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 34
    :cond_2
    instance-of v7, v5, Ljava/lang/Long;

    if-eqz v7, :cond_3

    move-object v7, v5

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1

    .line 35
    :cond_3
    instance-of v7, v5, Ljava/lang/Boolean;

    if-eqz v7, :cond_4

    move-object v7, v5

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 36
    :cond_4
    instance-of v7, v5, Ljava/lang/Float;

    if-eqz v7, :cond_5

    move-object v7, v5

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_1

    .line 37
    :cond_5
    instance-of v7, v5, Ljava/lang/Double;

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_1

    .line 38
    :cond_6
    instance-of v7, v5, [B

    if-eqz v7, :cond_7

    move-object v7, v5

    check-cast v7, [B

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 39
    :cond_7
    instance-of v7, v5, Ljava/lang/Byte;

    if-eqz v7, :cond_8

    move-object v7, v5

    check-cast v7, Ljava/lang/Byte;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    goto :goto_1

    .line 40
    :cond_8
    instance-of v7, v5, Ljava/lang/Short;

    if-eqz v7, :cond_9

    move-object v7, v5

    check-cast v7, Ljava/lang/Short;

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 29
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 42
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "valueType":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal value type "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " for key \""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v7, 0x22

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 47
    .end local v0    # "valueType":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "key":Ljava/lang/String;
    :cond_a
    nop

    .line 28
    .end local v1    # "$this$contentValuesOf_u24lambda_u2d0":Landroid/content/ContentValues;
    .end local v2    # "$i$a$-apply-ContentValuesKt$contentValuesOf$1":I
    nop

    .line 47
    return-object v0
.end method
