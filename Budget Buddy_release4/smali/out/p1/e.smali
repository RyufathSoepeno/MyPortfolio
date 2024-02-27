.class Lp1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Appendable;Ljava/lang/Object;Lj1/l;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Appendable;",
            "TT;",
            "Lj1/l<",
            "-TT;+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_11

    invoke-interface {p2, p1}, Lj1/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_b
    check-cast p1, Ljava/lang/CharSequence;

    :goto_d
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2d

    :cond_11
    if-nez p1, :cond_15

    const/4 p2, 0x1

    goto :goto_17

    :cond_15
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_17
    if-eqz p2, :cond_1a

    goto :goto_b

    :cond_1a
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_28

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_2d

    :cond_28
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_d

    :goto_2d
    return-void
.end method
