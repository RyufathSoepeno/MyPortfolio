.class public Landroidx/core/graphics/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/c$b;,
        Landroidx/core/graphics/c$a;
    }
.end annotation


# direct methods
.method private static a(Ljava/util/ArrayList;C[F)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/core/graphics/c$b;",
            ">;C[F)V"
        }
    .end annotation

    new-instance v0, Landroidx/core/graphics/c$b;

    invoke-direct {v0, p1, p2}, Landroidx/core/graphics/c$b;-><init>(C[F)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b([Landroidx/core/graphics/c$b;[Landroidx/core/graphics/c$b;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    if-nez p1, :cond_6

    goto :goto_28

    :cond_6
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_b

    return v0

    :cond_b
    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_26

    aget-object v2, p0, v1

    iget-char v3, v2, Landroidx/core/graphics/c$b;->a:C

    aget-object v4, p1, v1

    iget-char v5, v4, Landroidx/core/graphics/c$b;->a:C

    if-ne v3, v5, :cond_25

    iget-object v2, v2, Landroidx/core/graphics/c$b;->b:[F

    array-length v2, v2

    iget-object v3, v4, Landroidx/core/graphics/c$b;->b:[F

    array-length v3, v3

    if-eq v2, v3, :cond_22

    goto :goto_25

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_25
    :goto_25
    return v0

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v0
.end method

.method static c([FII)[F
    .registers 5

    if-gt p1, p2, :cond_1a

    array-length v0, p0

    if-ltz p1, :cond_14

    if-gt p1, v0, :cond_14

    sub-int/2addr p2, p1

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array p2, p2, [F

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p2

    :cond_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static d(Ljava/lang/String;)[Landroidx/core/graphics/c$b;
    .registers 8

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_36

    invoke-static {p0, v3}, Landroidx/core/graphics/c;->i(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_30

    invoke-static {v4}, Landroidx/core/graphics/c;->h(Ljava/lang/String;)[F

    move-result-object v5

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v0, v4, v5}, Landroidx/core/graphics/c;->a(Ljava/util/ArrayList;C[F)V

    :cond_30
    add-int/lit8 v4, v3, 0x1

    move v6, v4

    move v4, v3

    move v3, v6

    goto :goto_d

    :cond_36
    sub-int/2addr v3, v4

    if-ne v3, v1, :cond_48

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v4, v1, :cond_48

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v1, v2, [F

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/c;->a(Ljava/util/ArrayList;C[F)V

    :cond_48
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroidx/core/graphics/c$b;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/core/graphics/c$b;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Landroid/graphics/Path;
    .registers 5

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-static {p0}, Landroidx/core/graphics/c;->d(Ljava/lang/String;)[Landroidx/core/graphics/c$b;

    move-result-object v1

    if-eqz v1, :cond_27

    :try_start_b
    invoke-static {v1, v0}, Landroidx/core/graphics/c$b;->e([Landroidx/core/graphics/c$b;Landroid/graphics/Path;)V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in parsing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f([Landroidx/core/graphics/c$b;)[Landroidx/core/graphics/c$b;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    array-length v0, p0

    new-array v0, v0, [Landroidx/core/graphics/c$b;

    const/4 v1, 0x0

    :goto_8
    array-length v2, p0

    if-ge v1, v2, :cond_17

    new-instance v2, Landroidx/core/graphics/c$b;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Landroidx/core/graphics/c$b;-><init>(Landroidx/core/graphics/c$b;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_17
    return-object v0
.end method

.method private static g(Ljava/lang/String;ILandroidx/core/graphics/c$a;)V
    .registers 11

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroidx/core/graphics/c$a;->b:Z

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    const/4 v7, 0x1

    if-eq v5, v6, :cond_33

    const/16 v6, 0x45

    if-eq v5, v6, :cond_31

    const/16 v6, 0x65

    if-eq v5, v6, :cond_31

    packed-switch v5, :pswitch_data_3e

    goto :goto_2f

    :pswitch_22
    if-nez v3, :cond_27

    const/4 v2, 0x0

    const/4 v3, 0x1

    goto :goto_35

    :cond_27
    :goto_27
    iput-boolean v7, p2, Landroidx/core/graphics/c$a;->b:Z

    goto :goto_33

    :pswitch_2a
    if-eq v1, p1, :cond_2f

    if-nez v2, :cond_2f

    goto :goto_27

    :cond_2f
    :goto_2f
    const/4 v2, 0x0

    goto :goto_35

    :cond_31
    const/4 v2, 0x1

    goto :goto_35

    :cond_33
    :goto_33
    :pswitch_33
    const/4 v2, 0x0

    const/4 v4, 0x1

    :goto_35
    if-eqz v4, :cond_38

    goto :goto_3b

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_3b
    :goto_3b
    iput v1, p2, Landroidx/core/graphics/c$a;->a:I

    return-void

    :pswitch_data_3e
    .packed-switch 0x2c
        :pswitch_33
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method private static h(Ljava/lang/String;)[F
    .registers 9

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7a

    if-eq v1, v2, :cond_64

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_12

    goto :goto_64

    :cond_12
    :try_start_12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [F

    new-instance v2, Landroidx/core/graphics/c$a;

    invoke-direct {v2}, Landroidx/core/graphics/c$a;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_23
    if-ge v4, v3, :cond_42

    invoke-static {p0, v4, v2}, Landroidx/core/graphics/c;->g(Ljava/lang/String;ILandroidx/core/graphics/c$a;)V

    iget v6, v2, Landroidx/core/graphics/c$a;->a:I

    if-ge v4, v6, :cond_39

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    aput v4, v1, v5

    move v5, v7

    :cond_39
    iget-boolean v4, v2, Landroidx/core/graphics/c$a;->b:Z

    if-eqz v4, :cond_3f

    move v4, v6

    goto :goto_23

    :cond_3f
    add-int/lit8 v4, v6, 0x1

    goto :goto_23

    :cond_42
    invoke-static {v1, v0, v5}, Landroidx/core/graphics/c;->c([FII)[F

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error in parsing \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_64
    :goto_64
    new-array p0, v0, [F

    return-object p0
.end method

.method private static i(Ljava/lang/String;I)I
    .registers 5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_26

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v1, v0, -0x41

    add-int/lit8 v2, v0, -0x5a

    mul-int v1, v1, v2

    if-lez v1, :cond_1a

    add-int/lit8 v1, v0, -0x61

    add-int/lit8 v2, v0, -0x7a

    mul-int v1, v1, v2

    if-gtz v1, :cond_23

    :cond_1a
    const/16 v1, 0x65

    if-eq v0, v1, :cond_23

    const/16 v1, 0x45

    if-eq v0, v1, :cond_23

    return p1

    :cond_23
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_26
    return p1
.end method

.method public static j([Landroidx/core/graphics/c$b;[Landroidx/core/graphics/c$b;)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_23

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    iget-char v3, v3, Landroidx/core/graphics/c$b;->a:C

    iput-char v3, v2, Landroidx/core/graphics/c$b;->a:C

    const/4 v2, 0x0

    :goto_e
    aget-object v3, p1, v1

    iget-object v3, v3, Landroidx/core/graphics/c$b;->b:[F

    array-length v4, v3

    if-ge v2, v4, :cond_20

    aget-object v4, p0, v1

    iget-object v4, v4, Landroidx/core/graphics/c$b;->b:[F

    aget v3, v3, v2

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method
