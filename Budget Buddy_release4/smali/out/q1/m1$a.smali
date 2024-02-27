.class public final Lq1/m1$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static synthetic a(Lq1/m1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V
    .registers 4

    if-nez p3, :cond_b

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_7

    const/4 p1, 0x0

    :cond_7
    invoke-interface {p0, p1}, Lq1/m1;->o(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: cancel"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lq1/m1;Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lq1/m1;",
            "TR;",
            "Lj1/p<",
            "-TR;-",
            "Lc1/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lc1/g$b$a;->a(Lc1/g$b;Ljava/lang/Object;Lj1/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lq1/m1;Lc1/g$c;)Lc1/g$b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lq1/m1;",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/g$b$a;->b(Lc1/g$b;Lc1/g$c;)Lc1/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lq1/m1;ZZLj1/l;ILjava/lang/Object;)Lq1/v0;
    .registers 6

    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_7

    const/4 p1, 0x0

    :cond_7
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_c

    const/4 p2, 0x1

    :cond_c
    invoke-interface {p0, p1, p2, p3}, Lq1/m1;->j(ZZLj1/l;)Lq1/v0;

    move-result-object p0

    return-object p0

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: invokeOnCompletion"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Lq1/m1;Lc1/g$c;)Lc1/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq1/m1;",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Lc1/g$b$a;->c(Lc1/g$b;Lc1/g$c;)Lc1/g;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lq1/m1;Lc1/g;)Lc1/g;
    .registers 2

    invoke-static {p0, p1}, Lc1/g$b$a;->d(Lc1/g$b;Lc1/g;)Lc1/g;

    move-result-object p0

    return-object p0
.end method
