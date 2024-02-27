.class Lm1/f;
.super Lm1/e;
.source "SourceFile"


# direct methods
.method public static a(II)I
    .registers 2

    if-ge p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static b(JJ)J
    .registers 5

    cmp-long v0, p0, p2

    if-gez v0, :cond_5

    move-wide p0, p2

    :cond_5
    return-wide p0
.end method

.method public static c(II)I
    .registers 2

    if-le p0, p1, :cond_3

    move p0, p1

    :cond_3
    return p0
.end method

.method public static d(JJ)J
    .registers 5

    cmp-long v0, p0, p2

    if-lez v0, :cond_5

    move-wide p0, p2

    :cond_5
    return-wide p0
.end method

.method public static e(III)I
    .registers 5

    if-gt p1, p2, :cond_9

    if-ge p0, p1, :cond_5

    return p1

    :cond_5
    if-le p0, p2, :cond_8

    return p2

    :cond_8
    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot coerce value to an empty range: maximum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is less than minimum "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(II)Lm1/a;
    .registers 4

    sget-object v0, Lm1/a;->h:Lm1/a$a;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1}, Lm1/a$a;->a(III)Lm1/a;

    move-result-object p0

    return-object p0
.end method

.method public static g(II)Lm1/c;
    .registers 3

    const/high16 v0, -0x80000000

    if-gt p1, v0, :cond_b

    sget-object p0, Lm1/c;->i:Lm1/c$a;

    invoke-virtual {p0}, Lm1/c$a;->a()Lm1/c;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Lm1/c;

    add-int/lit8 p1, p1, -0x1

    invoke-direct {v0, p0, p1}, Lm1/c;-><init>(II)V

    return-object v0
.end method
