.class Lp1/l;
.super Lp1/k;
.source "SourceFile"


# direct methods
.method public static f(Ljava/lang/String;)Ljava/lang/Long;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lp1/l;->g(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "<this>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lp1/a;->a(I)I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    return-object v3

    :cond_14
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lkotlin/jvm/internal/k;->f(II)I

    move-result v6

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    if-gez v6, :cond_39

    if-ne v2, v9, :cond_2a

    return-object v3

    :cond_2a
    const/16 v6, 0x2d

    if-ne v5, v6, :cond_32

    const-wide/high16 v7, -0x8000000000000000L

    const/4 v4, 0x1

    goto :goto_3a

    :cond_32
    const/16 v6, 0x2b

    if-ne v5, v6, :cond_38

    const/4 v4, 0x1

    goto :goto_39

    :cond_38
    return-object v3

    :cond_39
    :goto_39
    const/4 v9, 0x0

    :goto_3a
    const-wide v5, -0x38e38e38e38e38eL    # -2.772000429909333E291

    const-wide/16 v10, 0x0

    move-wide v12, v5

    :goto_42
    if-ge v4, v2, :cond_73

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    invoke-static {v14, v1}, Lp1/a;->b(CI)I

    move-result v14

    if-gez v14, :cond_4f

    return-object v3

    :cond_4f
    cmp-long v15, v10, v12

    if-gez v15, :cond_5f

    cmp-long v15, v12, v5

    if-nez v15, :cond_5e

    int-to-long v12, v1

    div-long v12, v7, v12

    cmp-long v15, v10, v12

    if-gez v15, :cond_5f

    :cond_5e
    return-object v3

    :cond_5f
    int-to-long v5, v1

    mul-long v10, v10, v5

    int-to-long v5, v14

    add-long v16, v7, v5

    cmp-long v14, v10, v16

    if-gez v14, :cond_6a

    return-object v3

    :cond_6a
    sub-long/2addr v10, v5

    add-int/lit8 v4, v4, 0x1

    const-wide v5, -0x38e38e38e38e38eL    # -2.772000429909333E291

    goto :goto_42

    :cond_73
    if-eqz v9, :cond_7a

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_7f

    :cond_7a
    neg-long v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_7f
    return-object v0
.end method
