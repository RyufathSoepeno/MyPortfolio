.class public final Lm1/d;
.super Lm1/f;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(II)I
    .registers 2

    invoke-static {p0, p1}, Lm1/f;->a(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lm1/f;->b(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic c(II)I
    .registers 2

    invoke-static {p0, p1}, Lm1/f;->c(II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(JJ)J
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lm1/f;->d(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic e(III)I
    .registers 3

    invoke-static {p0, p1, p2}, Lm1/f;->e(III)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(II)Lm1/a;
    .registers 2

    invoke-static {p0, p1}, Lm1/f;->f(II)Lm1/a;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic g(II)Lm1/c;
    .registers 2

    invoke-static {p0, p1}, Lm1/f;->g(II)Lm1/c;

    move-result-object p0

    return-object p0
.end method
