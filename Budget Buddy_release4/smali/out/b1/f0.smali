.class Lb1/f0;
.super Lb1/e0;
.source "SourceFile"


# direct methods
.method public static b()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lb1/v;->e:Lb1/v;

    return-object v0
.end method

.method public static final c(Ljava/util/Set;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    goto :goto_20

    :cond_f
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lb1/e0;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_20

    :cond_1c
    invoke-static {}, Lb1/d0;->b()Ljava/util/Set;

    move-result-object p0

    :goto_20
    return-object p0
.end method
