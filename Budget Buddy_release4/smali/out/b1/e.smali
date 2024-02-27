.class Lb1/e;
.super Lb1/d;
.source "SourceFile"


# direct methods
.method public static a([Ljava/lang/Object;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lb1/g;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "asList(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;III)[TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sub-int/2addr p4, p3

    invoke-static {p0, p3, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public static synthetic c([Ljava/lang/Object;[Ljava/lang/Object;IIIILjava/lang/Object;)[Ljava/lang/Object;
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p2, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    const/4 p3, 0x0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    array-length p4, p0

    :cond_10
    invoke-static {p0, p1, p2, p3, p4}, Lb1/e;->b([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d([Ljava/lang/Object;Ljava/lang/Object;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;II)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p3, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic e([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    array-length p3, p0

    :cond_a
    invoke-static {p0, p1, p2, p3}, Lb1/b;->d([Ljava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method
