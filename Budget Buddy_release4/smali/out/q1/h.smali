.class final synthetic Lq1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lq1/h0;Lc1/g;Lq1/j0;Lj1/p;)Lq1/m1;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/h0;",
            "Lc1/g;",
            "Lq1/j0;",
            "Lj1/p<",
            "-",
            "Lq1/h0;",
            "-",
            "Lc1/d<",
            "-",
            "La1/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lq1/m1;"
        }
    .end annotation

    invoke-static {p0, p1}, Lq1/c0;->d(Lq1/h0;Lc1/g;)Lc1/g;

    move-result-object p0

    invoke-virtual {p2}, Lq1/j0;->c()Z

    move-result p1

    if-eqz p1, :cond_10

    new-instance p1, Lq1/v1;

    invoke-direct {p1, p0, p3}, Lq1/v1;-><init>(Lc1/g;Lj1/p;)V

    goto :goto_16

    :cond_10
    new-instance p1, Lq1/b2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lq1/b2;-><init>(Lc1/g;Z)V

    :goto_16
    invoke-virtual {p1, p2, p1, p3}, Lq1/a;->x0(Lq1/j0;Ljava/lang/Object;Lj1/p;)V

    return-object p1
.end method

.method public static synthetic b(Lq1/h0;Lc1/g;Lq1/j0;Lj1/p;ILjava/lang/Object;)Lq1/m1;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    sget-object p1, Lc1/h;->e:Lc1/h;

    :cond_6
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    sget-object p2, Lq1/j0;->e:Lq1/j0;

    :cond_c
    invoke-static {p0, p1, p2, p3}, Lq1/g;->a(Lq1/h0;Lc1/g;Lq1/j0;Lj1/p;)Lq1/m1;

    move-result-object p0

    return-object p0
.end method
