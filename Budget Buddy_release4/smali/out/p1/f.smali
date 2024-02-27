.class Lp1/f;
.super Lp1/e;
.source "SourceFile"


# direct methods
.method private static final b(Ljava/lang/String;)Lj1/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lj1/l<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_e

    sget-object p0, Lp1/f$a;->e:Lp1/f$a;

    goto :goto_14

    :cond_e
    new-instance v0, Lp1/f$b;

    invoke-direct {v0, p0}, Lp1/f$b;-><init>(Ljava/lang/String;)V

    move-object p0, v0

    :goto_14
    return-object p0
.end method

.method private static final c(Ljava/lang/String;)I
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    const/4 v2, -0x1

    if-ge v1, v0, :cond_18

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lp1/a;->c(C)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    const/4 v1, -0x1

    :goto_19
    if-ne v1, v2, :cond_1f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_1f
    return v1
.end method

.method public static final d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newIndent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lp1/n;->G(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lp1/d;->j(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_17

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_30
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lb1/h;->i(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lp1/f;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_57
    invoke-static {v2}, Lb1/h;->q(Ljava/lang/Iterable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_65

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_66

    :cond_65
    const/4 v1, 0x0

    :goto_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    mul-int v3, v3, v4

    add-int/2addr p0, v3

    invoke-static {p1}, Lp1/f;->b(Ljava/lang/String;)Lj1/l;

    move-result-object p1

    invoke-static {v0}, Lb1/h;->e(Ljava/util/List;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_86
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    if-gez v2, :cond_97

    invoke-static {}, Lb1/h;->h()V

    :cond_97
    check-cast v5, Ljava/lang/String;

    if-eqz v2, :cond_9d

    if-ne v2, v3, :cond_a5

    :cond_9d
    invoke-static {v5}, Lp1/d;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a5

    const/4 v5, 0x0

    goto :goto_b5

    :cond_a5
    invoke-static {v5, v1}, Lp1/p;->Z(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-interface {p1, v2}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_b4

    goto :goto_b5

    :cond_b4
    move-object v5, v2

    :cond_b5
    :goto_b5
    if-eqz v5, :cond_ba

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_ba
    move v2, v6

    goto :goto_86

    :cond_bc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7c

    const/4 v13, 0x0

    const-string v6, "\n"

    invoke-static/range {v4 .. v13}, Lb1/h;->n(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lj1/l;ILjava/lang/Object;)Ljava/lang/Appendable;

    move-result-object p0

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p0, v0}, Lp1/f;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
