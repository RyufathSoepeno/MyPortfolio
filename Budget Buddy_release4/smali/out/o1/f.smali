.class Lo1/f;
.super Lo1/e;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/Iterator;)Lo1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)",
            "Lo1/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lo1/f$a;

    invoke-direct {v0, p0}, Lo1/f$a;-><init>(Ljava/util/Iterator;)V

    invoke-static {v0}, Lo1/f;->b(Lo1/b;)Lo1/b;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lo1/b;)Lo1/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo1/b<",
            "+TT;>;)",
            "Lo1/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lo1/a;

    if-eqz v0, :cond_a

    goto :goto_10

    :cond_a
    new-instance v0, Lo1/a;

    invoke-direct {v0, p0}, Lo1/a;-><init>(Lo1/b;)V

    move-object p0, v0

    :goto_10
    return-object p0
.end method
