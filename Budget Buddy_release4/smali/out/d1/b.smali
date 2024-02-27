.class public final Ld1/b;
.super Ld1/d;
.source "SourceFile"


# direct methods
.method public static bridge synthetic a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;
    .registers 3

    invoke-static {p0, p1, p2}, Ld1/c;->a(Lj1/p;Ljava/lang/Object;Lc1/d;)Lc1/d;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lc1/d;)Lc1/d;
    .registers 1

    invoke-static {p0}, Ld1/c;->b(Lc1/d;)Lc1/d;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Ld1/d;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
