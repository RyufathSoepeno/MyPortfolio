.class public final Lc1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lc1/e;Lc1/g$c;)Lc1/g$b;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lc1/g$b;",
            ">(",
            "Lc1/e;",
            "Lc1/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lc1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    check-cast p1, Lc1/b;

    invoke-interface {p0}, Lc1/g$b;->getKey()Lc1/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc1/b;->a(Lc1/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1, p0}, Lc1/b;->b(Lc1/g$b;)Lc1/g$b;

    move-result-object p0

    instance-of p1, p0, Lc1/g$b;

    if-eqz p1, :cond_1f

    move-object v1, p0

    :cond_1f
    return-object v1

    :cond_20
    sget-object v0, Lc1/e;->b:Lc1/e$b;

    if-ne v0, p1, :cond_2a

    const-string p1, "null cannot be cast to non-null type E of kotlin.coroutines.ContinuationInterceptor.get"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2b

    :cond_2a
    move-object p0, v1

    :goto_2b
    return-object p0
.end method

.method public static b(Lc1/e;Lc1/g$c;)Lc1/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc1/e;",
            "Lc1/g$c<",
            "*>;)",
            "Lc1/g;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lc1/b;

    if-eqz v0, :cond_1e

    check-cast p1, Lc1/b;

    invoke-interface {p0}, Lc1/g$b;->getKey()Lc1/g$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc1/b;->a(Lc1/g$c;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1, p0}, Lc1/b;->b(Lc1/g$b;)Lc1/g$b;

    move-result-object p1

    if-eqz p1, :cond_1d

    sget-object p0, Lc1/h;->e:Lc1/h;

    :cond_1d
    return-object p0

    :cond_1e
    sget-object v0, Lc1/e;->b:Lc1/e$b;

    if-ne v0, p1, :cond_24

    sget-object p0, Lc1/h;->e:Lc1/h;

    :cond_24
    return-object p0
.end method
